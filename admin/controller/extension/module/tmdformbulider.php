<?php
class ControllerExtensionModuleTmdFormBulider extends Controller {
	private $error = array();
 public function install() {
	$this->load->model('extension/tmdformbulider');
	$this->model_extension_tmdformbulider->install();
	}	
	public function uninstall() {
	$this->load->model('extension/tmdformbulider');
	$this->model_extension_tmdformbulider->uninstall();
	}   
	public function index() {
		$this->load->language('extension/module/tmdformbulider');
        
       $this->load->model('extension/module');

		$this->document->setTitle($this->language->get('heading_title1'));
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if (!isset($this->request->get['module_id'])) {
				$this->model_extension_module->addModule('tmdformbulider', $this->request->post);
			} else {
				$this->model_extension_module->editModule($this->request->get['module_id'], $this->request->post);
			}

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true));
		}

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['entry_showproduct'] = $this->language->get('entry_showproduct');
		$data['entry_formlayout'] = $this->language->get('entry_formlayout');
		$data['entry_name'] = $this->language->get('entry_name');

		$data['text_select'] = $this->language->get('text_select');
		
		$data['entry_status'] = $this->language->get('entry_status');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
        
        if (isset($this->error['name'])) {
			$data['error_name'] = $this->error['name'];
		} else {
			$data['error_name'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title1'),
			'href' => $this->url->link('extension/module/tmdformbulider', 'token=' . $this->session->data['token'], true)
		);
		
		if (!isset($this->request->get['module_id'])) {
			$data['action'] = $this->url->link('extension/module/tmdformbulider', 'token=' . $this->session->data['token'], true);
		} else {
			$data['action'] = $this->url->link('extension/module/tmdformbulider', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], true);
		}

	
		$data['cancel'] = $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true);

		if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$module_info = $this->model_extension_module->getModule($this->request->get['module_id']);
		}
        
        if (isset($this->request->post['name'])) {
			$data['name'] = $this->request->post['name'];
		} elseif (!empty($module_info)) {
			$data['name'] = $module_info['name'];
		} else {
			$data['name'] = '';
		}
		
        if (isset($this->request->post['status'])) {
			$data['status'] = $this->request->post['status'];
		} elseif (!empty($module_info)) {
			$data['status'] = $module_info['status'];
		} else {
			$data['status'] = '1';
		}
        
		if (isset($this->request->post['showpro'])) {
			$data['showpro'] = $this->request->post['showpro'];
		} elseif (!empty($module_info)) {
			$data['showpro'] = $module_info['showpro'];
		} else {
			$data['showpro'] = '';
		}
		
		$filter_data =array();
		$this->load->model('tmdform/form');
		$data['formbuliders'] = array();
		$formbulider_info = $this->model_tmdform_form->getForms($filter_data);

		foreach ($formbulider_info as $formbulider) {			
				$data['formbuliders'][] = array(
					'form_id' => $formbulider['form_id'],
					'title'       => $formbulider['title']
				);			
		}

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/module/tmdformbulider', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/module/tmdformbulider')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
        
        if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 64)) {
			$this->error['name'] = $this->language->get('error_name');
		}

		return !$this->error;
	}
}
