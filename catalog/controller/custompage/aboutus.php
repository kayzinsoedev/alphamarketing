<?php
    class ControllerCustompageAboutus extends Controller{


        public function index(){

            $language_id = $this->config->get('config_language_id');
            $oc = $this;
            $modulename = "custom_about_page";
            $this->load->library("modulehelper");
            $this->load->model('catalog/information');
            $modulehelper = Modulehelper::get_instance($this->registry);

            $aboutuspages = $modulehelper->get_field($oc,$modulename,$language_id,'items');


            $data = array(
                'heading_title' => $modulehelper->get_field($oc,$modulename,$language_id,'title'),
                'desc' => $modulehelper->get_field($oc,$modulename,$language_id,'desc'),
                'items' => $modulehelper->get_field($oc,$modulename,$language_id,'items')
            );

			$pages = array();

            foreach($aboutuspages as $key => $value ){
				
                if($value['aboutpage'] === '0'){

                    $pages[$value['order']] = $this->loadPagePartner();

                }else {
                    $pages[$value['order']] = $this->loadPageInformation($value['aboutpage']);
                }

            }

			debug($pages);
			die;
            return $this->load->view('/custompage/aboutus',$data);

        }

		public function loadPagePartner(){


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
			return $data;


		}

        public function loadPageInformation($information_id){

            $information_info = $this->model_catalog_information->getInformation($information_id);
            $this->document->setTitle($information_info['meta_title']);
			$this->document->setDescription($information_info['meta_description']);
			$this->document->setKeywords($information_info['meta_keyword']);


			$data['information_repeater_info'] = array();

			$information_repeater_info  = $this->model_catalog_information->getInformationRepeater($information_id);
			$image_direction = '';
			
			if(isset($information_repeater_info) && $information_repeater_info) {
				foreach($information_repeater_info as $info) {

					if($info['row_type'] == 'image_left') {
						$image_direction = 'ltr';
					}
					if($info['row_type'] == 'image_right') {
						$image_direction = 'rtl';
					}
					if($info['row_type'] == 'fullwidth_top') {
						$image_direction = 'ttb';
					}
					if($info['row_type'] == 'fullwidth_bottom') {
						$image_direction = 'btt';
					}

					$data['information_repeater_info'][] =array(
						'information_repeater_id' => $info['information_repeater_id'],
						'language_id' => $info['language_id'],
						'information_id' => $info['information_id'],
						'type' => $info['type'],
						'row_type' => $info['row_type'] == 'image_left' || $info['row_type'] == 'image_right' ? 'flex' : 'fullwidth flex',
						'image_direction' => $image_direction,
						'description' => $info['description'],
						'image' => $info['image'],
					);
				}
			}


			$data['heading_title'] = $information_info['title'];

			$data['button_continue'] = $this->language->get('button_continue');

			$data['description'] = html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8');

			$this->load->model('tmdform/form');
			$data['informationlinks'] ='';
			$data['informationlinks'] = $this->model_tmdform_form->getInformationform($information_id);
        	$data['logged'] = $this->customer->isLogged();

			$data['continue'] = $this->url->link('common/home');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			

			return $data;

        }


    }