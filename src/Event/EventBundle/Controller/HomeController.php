<?php

namespace Event\EventBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class HomeController extends Controller
{
    /**
     * Home page
     * 
     * @Template()
     */
    public function indexAction()
    {
        //return $this->render('PoteBundle:Default:index.html.twig', array('name' => $name));
        return array('name' => 'test');
    }
}
