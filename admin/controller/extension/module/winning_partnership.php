<?php
class ControllerExtensionModuleWinningPartnerShip extends Controller {
	public function index() {
        // Do note that below are the sample for using module helper, you may use it in other modules

        // autocomplete
        $ac_data = array();
        

		$array = array(
            'oc' => $this,
            'heading_title' => 'Winning Partnership',
            'alerts' =>  array(
                    array( 
                            'type'          =>  'info', 
                            'dismissible'   =>  true, 
                            'msg'           =>  '<i class="fa fa-exclamation-circle"></i>&nbsp; Sample Info Message'
                        ),
                    array( 
                            'type'          =>  'warning', 
                            'dismissible'   =>  false,
                            'msg'           =>  '<i class="fa fa-exclamation-circle"></i>&nbsp; Sample Warning message'
                        ),
                    array( 
                            'type'          =>  'danger', 
                            'dismissible'   =>  true,
                            'msg'           =>  '<i class="fa fa-exclamation-circle"></i>&nbsp; Sample Danger message'
                        ),
                    array( 
                            'type'          =>  'success', 
                            'dismissible'   =>  false,
                            'msg'           =>  '<i class="fa fa-exclamation-circle"></i>&nbsp; Sample Success message'
                        )
            ), //if you no need can just make this array empty
            'modulename' => 'winning_partnership',
            'auto_increment' => true, // for auto increment number

            // autocomplete
            'data_array' => $ac_data,
            'autocomplete_url' => 'catalog/product/autocomplete',
            //'autocomplete_url' => 'catalog/category/autocomplete_filter',
            // autocomplete

            'fields' => array(
                array('type' => 'text', 'label' => 'Title', 'name' => 'title'),
                array('type' => 'textarea', 'label' => 'Description', 'name' => 'main_description','ckeditor'=>true),
                array('type' => 'repeater', 'label' => 'Items', 'name' => 'items',
                    'fields' => array(
                        array('type' => 'text', 'label' => 'ID', 'name' => 'id', 'readonly' => true), // for auto increment number
                        array('type' => 'text', 'label' => 'Title', 'name' => 'title'),
                        array('type' => 'text', 'label' => 'Text', 'name' => 'text'),
                        array('type' => 'upload', 'label' => 'Upload', 'name' => 'upload'),
                    )
                ),
            ),
        );

        $this->modulehelper->init($array);    
	}
}
