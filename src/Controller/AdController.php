<?php

namespace App\Controller;

use App\Entity\Ad;
use App\Entity\Image;
use App\Form\AnnonceType;
use App\Repository\AdRepository;
use Cocur\Slugify\Slugify;
use Doctrine\Common\Persistence\ObjectManager;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;


class AdController extends AbstractController
{
    /**
     * @Route("/ads", name="ads_index")
     */
    public function index(AdRepository $repo)
    {
    	//$repo = $this->getDoctrine()->getRepository(Ad::class);
    	// $repo->findOne(12);
    	// $repo->findOneByTitle("Titre de l'article")
    	// $repo->findOneByX 

    	$ads = $repo->findAll();
    	dump($ads);
        return $this->render('ad/index.html.twig', [
            'ads' => $ads
        ]);
    }



    /**
     * @Route("/ads/new", name="ads_create")
     *@IsGranted("ROLE_USER")
     */
    public function create(Request $request,ObjectManager $manager)
    {

        $ad=new Ad();


        $form=$this->createForm(AnnonceType::class, $ad);

    $form->handleRequest($request);
    

        if ($form->isSubmitted() && $form->isValid() ){

                $ad->setAuthor($this->getUser());

                if (!$ad->getSlug()) {
                        $slugify = new Slugify();
                         $ad->setSlug($slugify->slugify($ad->getTitle()));
                }

                foreach ($ad->getImages() as $image) {
                   $image->setAd($ad);
                   $manager->persist($image);
                } 



        $manager->persist($ad);
        $manager->flush();

         $this->addFlash(
            'success',
            "L'annonce <b>{$ad->getTitle()}</b> a bien été enregistrée !"
        );


        return $this->redirectToRoute('ads_show',['slug'=> $ad->getSlug()]);
            }
        //dump();

        return $this->render('ad/new.html.twig',[
            'form' => $form->createView(),
        ]);
    }



/**
     * @Route("/ads/{slug}/edit", name="ads_edit")
     * @Security("is_granted('ROLE_USER') and user == ad.getAuthor()", message="cette annonce ne vous appartient pas !")
     */
    public function edit(Request $request,ObjectManager $manager, Ad $ad)
    {

     


        $form=$this->createForm(AnnonceType::class, $ad);

// debut Résolution du problème du bug du champ slug éventuellement vide lors du handleRequest (il extrait les données POST de la requête précédente, les traite et exécute toute validation (vérifie l'intégrité des données attendues par rapport aux données reçues))
//dump($request); // contenu de la request
//dump($request->request->get('annonce'));
//dump($request->request->get('annonce')['slug']);

//https://symfony.com/doc/current/components/http_foundation.html
      // Si le slug est vide , on le remplace par le titre formaté  
 
            $slugify = new Slugify();
            $data = $request->request->get('annonce');
            $data['slug']=$slugify->slugify($request->request->get('annonce')['title']);
            //dump($data);
            //dump($data['slug']);
            $request->request->set('annonce',$data);
            //dump($data);
          
// fin Résolution du problème du bug du champ slug éventuellement vide


    $form->handleRequest($request);
    

        if ($form->isSubmitted() && $form->isValid() ){

                if (!$ad->getSlug()) {
                        $slugify = new Slugify();
                         $ad->setSlug($slugify->slugify($ad->getTitle()));
                     }
                    

                foreach ($ad->getImages() as $image) {
                   $image->setAd($ad);
                   $manager->persist($image);
                } 



        $manager->persist($ad);
        $manager->flush();

         $this->addFlash(
            'success',
            "L'annonce <b>{$ad->getTitle()}</b> a bien été modifié !"
        );


       return $this->redirectToRoute('ads_show',['slug'=> $ad->getSlug()]);
            }
        //dump();

        return $this->render('ad/edit.html.twig',[
            'form' => $form->createView(),
            'ad' => $ad
        ]);
    }



     /**
     * @Route("/ads/{slug}", name="ads_show")
     */
    public function show(Ad $ad)
    {
   
    	//dump($ad);
        return $this->render('ad/show.html.twig', [
            'ad' => $ad
        ]);
    }


     /**
     * @Security("is_granted('ROLE_USER') and user == ad.getAuthor()", message="Vous ne pouvez pas supprimer cette annonce !")
     * @Route("/ads/{slug}/delete", name="ads_delete")
     */
    public function delete(Ad $ad,ObjectManager $manager)
    {
   
        $manager->remove($ad);
        $manager->flush();
      
     $this->addFlash(
            'success',
            "L'annonce a bien été supprimée !"
        );


        return $this->redirectToRoute('account_index');

    }


}
