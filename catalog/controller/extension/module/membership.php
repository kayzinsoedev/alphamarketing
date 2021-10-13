<?php
class ControllerExtensionModuleMemberShip extends Controller {
	public function index() {
    $oc = $this;
		$language_id = $this->config->get('config_language_id');
		$modulename  = 'membership';
		$this->load->library('modulehelper');
		$Modulehelper = Modulehelper::get_instance($this->registry);

		$data = array(
			'title1'  	   => $Modulehelper->get_field ( $oc, $modulename, $language_id, 'title1'),
			'description1'  	   => $Modulehelper->get_field ( $oc, $modulename, $language_id, 'description1'),
			'membership_items' => $Modulehelper->get_field ( $oc, $modulename, $language_id, 'membership_items'),
			'title2' => $Modulehelper->get_field ( $oc, $modulename, $language_id, 'title2'),
			'membership_benefit' => $Modulehelper->get_field ( $oc, $modulename, $language_id, 'membership_benefit')
		);
		return 	$this->load->view('extension/module/membership', $data);
	}
}
