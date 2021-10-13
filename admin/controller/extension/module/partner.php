<?php

class ControllerExtensionModulePartner extends Controller{

    public function index(){

        $this->language->load('extension/module/partner');

        $array = array(
            'oc' => $this,
            'heading_title' => $this->language->get('heading_title'),
            'modulename' => 'partner',
            'fields' => array(
                array('type' => 'text', 'label' => 'Title', 'name' => 'title'),
                array('type' => 'text-area', 'label' => 'Description', 'name' => 'desc'),
                array('type' => 'repeater', 'label' => 'Items', 'name' => 'items',
                    'fields' => array(
                        array('type' => 'text', 'label' => 'Title', 'name' => 'title'),
                        array('type' => 'text', 'label' => 'Content', 'name' => 'content'),
                        array('type' => 'image', 'label' => 'Image', 'name' => 'image'),
                    )
                ),
            ),
        );

        $this->modulehelper->init($array);

    }



}