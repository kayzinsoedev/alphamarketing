<?php

class ControllerExtensionModuleCustomAboutPage extends Controller{

    public function index(){

        $this->language->load('extension/module/custom_about_page');
        
        $this->load->model('catalog/information');

        $informations = $this->model_catalog_information->getInformations();

        $infor_select = array();

        $infor_select[0]['label'] = 'Winning Partnership';
        $infor_select[0]['value'] = 0;

        foreach($informations as $key => $information){

            $infor_select[$key+1]['label'] = $information['title'];
            $infor_select[$key+1]['value'] = $information['information_id'];

        }

        $array = array(
            'oc' => $this,
            'heading_title' => $this->language->get('heading_title'),
            'modulename' => 'custom_about_page',
            
            'fields' => array(
                array('type' => 'text', 'label' => 'Title', 'name' => 'title'),
                array('type' => 'text-area', 'label' => 'Description', 'name' => 'desc'),
                array('type' => 'repeater', 'label' => 'Items', 'name' => 'items',
                    'fields' => array(
                        array('type' => 'dropdown', 'label' => 'About Page', 'name' => 'aboutpage', 'choices' => $infor_select),
                        array('type' => 'text','label' => 'Order' , 'name' => 'order' ),

                    )
                ),
            )
        );

        $this->modulehelper->init($array);

    }

    public function install(){


        
    }

    public function unistall(){




    }


}