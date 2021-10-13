<?php

class ControllerExtensionModulePartner extends Controller{


    public function index()
    {

        $language_id = $this->config->get('config_language_id');
        $oc = $this;
        $modulename = "partner";
        $this->load->library("modulehelper");
        $modulehelper = Modulehelper::get_instance($this->registry);

        $data = array(
            'heading_title' => $modulehelper->get_field($oc,$modulename,$language_id,'title'),
            'desc' => $modulehelper->get_field($oc,$modulename,$language_id,'desc'),
            'items' => $modulehelper->get_field($oc,$modulename,$language_id,'items')
        );

        return $this->load->view('extension/module/partner',$data);
    }

    
}