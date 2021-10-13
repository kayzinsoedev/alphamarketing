<?php
class ControllerExtensionModuleMemberShip extends Controller {
	public function index() {
        // Do note that below are the sample for using module helper, you may use it in other modules

        // autocomplete
        $ac_data = array();
		$array = array(
            'oc' => $this,
            'heading_title' => 'Membership',
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
            'modulename' => 'membership',
            'auto_increment' => true, // for auto increment number

            // autocomplete
            'data_array' => $ac_data,
            'autocomplete_url' => 'catalog/product/autocomplete',
            //'autocomplete_url' => 'catalog/category/autocomplete_filter',
            // autocomplete

            'fields' => array(
                array('type' => 'text', 'label' => 'Title1', 'name' => 'title1'),
                array('type' => 'textarea', 'label' => 'Main Description', 'name' => 'description1','ckeditor'=>true),
                array('type' => 'repeater', 'label' => 'Membership Items', 'name' => 'membership_items',
                    'fields' => array(
                        array('type' => 'text', 'label' => 'ID', 'name' => 'id', 'readonly' => true), // for auto increment number
                        array('type' => 'upload', 'label' => 'Upload', 'name' => 'upload'),
                        array('type' => 'text', 'label' => 'Title', 'name' => 'title'),
                        array('type' => 'text', 'label' => 'Description', 'name' => 'description')
                    )
                ),
                array('type' => 'text', 'label' => 'Title 2', 'name' => 'title2'),
                array('type' => 'repeater', 'label' => 'Membership Benefit', 'name' => 'membership_benefit',
                    'fields' => array(
                        array('type' => 'text', 'label' => 'ID', 'name' => 'id', 'readonly' => true), // for auto increment number
                        array('type' => 'upload', 'label' => 'Upload', 'name' => 'upload'),
                        array('type' => 'text', 'label' => 'Title', 'name' => 'title'),
                        array('type' => 'text', 'label' => 'Description', 'name' => 'description'),

                    )
                ),
            ),
        );
        $this->modulehelper->init($array);    
	}
}
