<?php

namespace App\Entity;

use App\Repository\ArticleRepository;
use App\Repository\UserRepository;
use App\Repository\PhotosRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;
use Gedmo\Mapping\Annotation as Gedmo;
use Symfony\Component\String\Slugger\AsciiSlugger;

/**
 * @ORM\Entity(repositoryClass=ArticleRepository::class)
 * @UniqueEntity(
 * fields= {"title"},
 * message= "La figure que vous voulez créer existe déjà")
 */


class Article
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     * @Assert\Length(min=3, max=30)
     */
    private $title;
    
    /**
     * @ORM\Column(type="text")
     * @Assert\Length(min=3)
     */
    private $content;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $createdBy;

    /**
     * @ORM\Column(type="datetime")
     */
    private $createdAt;

    /**
     * @ORM\ManyToOne(targetEntity=Category::class, inversedBy="articles")
     * @ORM\JoinColumn(nullable=false)
     */
    private $category;

     /**
     * @ORM\OneToMany(targetEntity=Comment::class, mappedBy="article", orphanRemoval=true)
     */
    private $comments;

    /**
     * @ORM\OneToMany(targetEntity=Photos::class, mappedBy="Article", orphanRemoval=true, cascade={"persist"})
     */
    private $url;

   /**
     * @Gedmo\Slug(fields={"title"})
     * @ORM\Column(unique=true)
     */
    private $slug;



  

    public function __construct()
    {
        $this->comments = new ArrayCollection();
        $this->url = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): self
    {
        $this->title = $title;

        return $this;
    }

    public function getContent(): ?string
    {
        return $this->content;
    }

    public function setContent(string $content): self
    {
        $this->content = $content;

        return $this;
    }

    public function getCreatedBy(): ?string
    {
        return $this->createdBy;
    }

    public function setCreatedBy(string $createdBy): self
    {
        $this->createdBy = $createdBy;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeInterface
    {
        return $this->createdAt;
    }

    public function setCreatedAt(\DateTimeInterface $createdAt): self
    {
        $this->createdAt = $createdAt;

        return $this;
    }

    public function getCategory(): ?Category
    {
        return $this->category;
    }

    public function setCategory(?Category $category): self
    {
        $this->category = $category;

        return $this;
    }

    /**
     * @return Collection|Comment[]
     */
    public function getComments(): Collection
    {
        return $this->comments;
    }

    public function addComment(Comment $comment): self
    {
        if (!$this->comments->contains($comment)) {
            $this->comments[] = $comment;
            $comment->setArticle($this);
        }

        return $this;
    }

    public function removeComment(Comment $comment): self
    {
        if ($this->comments->removeElement($comment)) {
            // set the owning side to null (unless already changed)
            if ($comment->getArticle() === $this) {
                $comment->setArticle(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection|Photos[]
     */
    public function getUrl(): Collection
    {
        return $this->url;
    }

    public function addUrl(Photos $url): self
    {
        if (!$this->url->contains($url)) {
            $this->url[] = $url;
            $url->setArticle($this);
        }

        return $this;
    }

    public function removeUrl(Photos $url): self
    {
        if ($this->url->removeElement($url)) {
            // set the owning side to null (unless already changed)
            if ($url->getArticle() === $this) {
                $url->setArticle(null);
            }
        }

        return $this;
    }
    
    public function getSlug(): ?string 
    {
        return $this->slug;
    }
    
    public function setSlug(string $slug): self 
    {
        $this->slug = $slug;
        return $this;
    }




}
