<?php
namespace Event\UserBundle\Entity;

/**
 * Description of User
 *
 * @author Ghazi
 */
namespace Event\UserBundle\Entity;

use FOS\UserBundle\Entity\User as BaseUser;
use Doctrine\ORM\Mapping as ORM;

/**
* @ORM\Entity
* @ORM\Table(name="user")
*/
class User extends BaseUser
{
   /**
    * @ORM\Id
    * @ORM\Column(type="integer")
    * @ORM\GeneratedValue(strategy="AUTO")
    */
   protected $id;
   
   /**
    * @var integer
    * 
    * @ORM\Column(name="facebookId", type="integer", nullable=true)
    */
   protected $facebookId;

   public function __construct()
   {
       parent::__construct();
       // your own logic
   }

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set facebookId
     *
     * @param integer $facebookId
     * @return User
     */
    public function setFacebookId($facebookId)
    {
        $this->facebookId = $facebookId;

        return $this;
    }

    /**
     * Get facebookId
     *
     * @return integer 
     */
    public function getFacebookId()
    {
        return $this->facebookId;
    }
}
