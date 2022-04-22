<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\Comment;
use App\Entity\Photos;
use App\Form\ArticleType;
use App\Form\CommentType;
use App\Repository\PhotosRepository;
use App\Repository\ArticleRepository;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\RedirectResponse;
//use Symfony\Component\Form\Extension\Core\Type\TextType;
//use Symfony\Component\Form\Extension\Core\Type\SubmitType;
//use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;


class BlogController extends AbstractController
{
    /**
     * @Route("/", name="blog")
     */
    public function index(ArticleRepository $repo)
    {
        $articles = $repo->findAll();
        return $this->render('blog/index.html.twig', [
            'controller_name' => 'BlogController',
            'articles' => $articles
        ]);
    }
    
 
    /**
     * @Route("/blog", name="home")
     */
    public function home(){
        return $this->render('blog/home.html.twig', [
            'title' => "Bienvenue sur mon projet 6"
        ]);
    }

    /**
     * 
     * @Route("/blog/new", name="blog_create")
     * @Route("/blog/{slug}/edit", name="blog_edit")
     */

    public function form (Article $article = null, request $request, EntityManagerInterface  $manager){

        if (!$article){
            $article = new Article();
        }
        $form = $this->createForm(ArticleType::class, $article);
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()) {
            $images = $form->get('images')->getData();
            foreach($images as $image){
                $fichier = md5(uniqid()) . '.' . $image->guessExtension();
                $image->move(
                    $this->getParameter('images_directory'),
                    $fichier
                );
                $img =new Photos();
                $img->setUrl($fichier);
                $article->addUrl($img);
            }
            if(!$article->getSlug()){
                $article->setCreatedAt(new \Datetime());
            }
            $manager->persist($article);
            $manager->flush();
            return $this->redirectToRoute('blog_show', ['slug' => $article->getSlug()]);
        }
        return $this->render('blog/create.html.twig', [
            'formArticle' => $form->createView(),
            'editMode' => $article->getId() !== null,
            'article' => $article,
        ]);
    }


    /**
     * @Route("/blog/{slug}", name="blog_show")
     */
    public function show(Article $article, Request $request, EntityManagerInterface $manager, PhotosRepository $repophotos, PaginatorInterface $paginator){

        $comment = new Comment();
        $form = $this->createForm(CommentType::class, $comment);
        $form->handleRequest($request);
            if($form->isSubmitted() && $form->isValid()){
                    $comment->setCreatedAt(new \DateTime())
                            ->setArticle($article);
                    $manager->persist($comment);
                    $manager->flush();
                    return $this->redirectToRoute('blog_show', ['slug' => $article->getSlug()]);
            }
        $donnees = $this->getDoctrine()->getRepository(Comment::class)->findBy(
            ['article' => $article->getId()]
        );

        $comments = $paginator->paginate(
            $donnees, // Requête contenant les données à paginer (ici nos articles)
            $request->query->getInt('page', 1), // Numéro de la page en cours, passé dans l'URL, 1 si aucune page
            10 // Nombre de résultats par page
        );
        $photos = $this->getDoctrine()->getRepository(Photos::class)->findAll();
            
        return $this->render('blog/show.html.twig', [
            'article' => $article,
            'comment' => $comments,
            'photo' => $photos,
            'commentForm' => $form->createView()
        ]);
    }



    /**
    * @Route("/blog/delete/{slug}", name="blog_delete")
    * @param Article $article
    * @return RedirectResponse
    */
    public function delete(Article $article): RedirectResponse{
        $em = $this->getDoctrine()->getManager();
        $em->remove($article);
        $em->flush();
        return $this->redirectToRoute("blog");
    }

   

    /**
     * @Route("/delete/photo/{id})", name="delete_photo", methods={"DELETE"})
     */
    public function deleteImage(Photos $photo, Request $request){

        $data  = json_decode($request->getContent(), true);

        //if($this->isCsrfTokenValid('delete'.$photo->getId(), $data['_token'])){

            $name = $photo->getUrl();

            unlink($this->getParameter('images_directory').'/'.$name);
            
            $em= $this->getDoctrine()->getManager();

            $em->remove($photo);

            $em->flush();

            return new JsonResponse(['success' => 1]);

       // }else{

            //return new JsonResponse(['error' => 'Token Invalide'], 400); 

        //}
    }
}
