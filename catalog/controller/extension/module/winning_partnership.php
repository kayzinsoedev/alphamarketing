<?php
class ControllerExtensionModuleWinningPartnerShip extends Controller {
	public function index() {
        $oc = $this;
		$language_id = $this->config->get('config_language_id');
		$modulename  = 'winning_partnership';
		$this->load->library('modulehelper');
		$Modulehelper = Modulehelper::get_instance($this->registry);


		$this->load->model('tool/image');


		$data = array(
			'title'  	   => $Modulehelper->get_field ( $oc, $modulename, $language_id, 'title'),
			'main_description'  	   => $Modulehelper->get_field ( $oc, $modulename, $language_id, 'main_description'),
			'items_array' => $Modulehelper->get_field ( $oc, $modulename, $language_id, 'items')
			// $image = $this->model_tool_image->resize($product['image'], $width, $height);
		);

		foreach($data['items_array'] as $item){
			 $data['items'][] = array(
				 		'id' => $item['id'],
						'title' => $item['title'],
						'text' => $item['text'],
						'upload' => $this->model_tool_image->resize($item['upload'], 189, 187),

			 );
		}


		return $this->load->view('extension/module/winning_partnership', $data);
	}
}
