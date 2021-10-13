<?php
class ControllerExtensionModuleLogoSliderOld extends Controller {
	public function index() {
        $oc = $this;
		$language_id = $this->config->get('config_language_id');
		$modulename  = 'logo_slider';
		$this->load->library('modulehelper');
		$Modulehelper = Modulehelper::get_instance($this->registry);

		$data = array(
			'main_title'  	   => $Modulehelper->get_field ( $oc, $modulename, $language_id, 'main_title'),
			'items' => $Modulehelper->get_field ( $oc, $modulename, $language_id, 'items')
		);

		
		return $this->load->view('extension/module/logo_slider', $data);
	}
}
