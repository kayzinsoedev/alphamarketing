<?php
class ModelDesignBanner extends Model {

	private function fill(&$data){
		if( !isset($data['mobile_image']) ){
			$data['mobile_image'] = "";
		}
		if( !isset($data['mobile_image']) ){
			$data['mobile_image'] = "";
		}
	}

	public function addBanner($data) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "banner SET name = '" . $this->db->escape($data['name']) . "', status = '" . (int)$data['status'] . "'");

		$banner_id = $this->db->getLastId();

		if (isset($data['banner_image'])) {
			foreach ($data['banner_image'] as $language_id => $value) {
				foreach ($value as $banner_image) {
					$this->db->query("INSERT INTO " . DB_PREFIX . "banner_image SET banner_id = '" . (int)$banner_id . "', language_id = '" . (int)$language_id . "', title = '" .  $this->db->escape($banner_image['title']) . "', description = '" .  $this->db->escape($banner_image['description']) . "', textalign = '" .  $this->db->escape($banner_image['textalign']) . "', btn_color = '" .  $this->db->escape($banner_image['btn_color']) . "', link_text = '" .  $this->db->escape($banner_image['link_text']) . "', link = '" .  $this->db->escape($banner_image['link']) . "', image = '" .  $this->db->escape($banner_image['image']) . "', mobile_image = '" .  $this->db->escape($banner_image['mobile_image']) . "', color_theme = '" .  $this->db->escape($banner_image['color_theme']) . "', mobile_color_theme = '" .  $this->db->escape($banner_image['mobile_color_theme']) . "', sort_order = '" .  (int)$banner_image['sort_order'] . "'");
				}
			}
		}

		return $banner_id;
	}

	public function editBanner($banner_id, $data) {

		$this->db->query("UPDATE " . DB_PREFIX . "banner SET name = '" . $this->db->escape($data['name']) . "', status = '" . (int)$data['status'] . "' WHERE banner_id = '" . (int)$banner_id . "'");

		$this->db->query("DELETE FROM " . DB_PREFIX . "banner_image WHERE banner_id = '" . (int)$banner_id . "'");

		if (isset($data['banner_image'])) {
			foreach ($data['banner_image'] as $language_id => $value) {
				foreach ($value as $banner_image) {
					$this->db->query("INSERT INTO " . DB_PREFIX . "banner_image SET banner_id = '" . (int)$banner_id . "', language_id = '" . (int)$language_id . "', title = '" .  $this->db->escape($banner_image['title']) . "', description = '" .  $this->db->escape($banner_image['description']) . "', textalign = '" .  $this->db->escape($banner_image['textalign']) . "', btn_color = '" .  $this->db->escape($banner_image['btn_color']) . "', link_text = '" .  $this->db->escape($banner_image['link_text']) . "', link = '" .  $this->db->escape($banner_image['link']) . "', mobile_image = '" .  $this->db->escape($banner_image['mobile_image']) . "', color_theme = '" .  $this->db->escape($banner_image['color_theme']) . "', mobile_color_theme = '" .  $this->db->escape($banner_image['mobile_color_theme']) . "', image = '" .  $this->db->escape($banner_image['image']) . "', sort_order = '" . (int)$banner_image['sort_order'] . "'");
				}
			}
		}
	}

	public function deleteBanner($banner_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "banner WHERE banner_id = '" . (int)$banner_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "banner_image WHERE banner_id = '" . (int)$banner_id . "'");
	}

	public function getBanner($banner_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "banner WHERE banner_id = '" . (int)$banner_id . "'");

		return $query->row;
	}

	public function getBanners($data = array()) {
		$sql = "SELECT * FROM " . DB_PREFIX . "banner";

		$sort_data = array(
			'name',
			'status'
		);

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY name";
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$query = $this->db->query($sql);

		return $query->rows;
	}

	public function getBannerImages($banner_id) {
		$banner_image_data = array();

		$banner_image_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "banner_image WHERE banner_id = '" . (int)$banner_id . "' ORDER BY sort_order ASC");

		foreach ($banner_image_query->rows as $banner_image) {
			$banner_image_data[$banner_image['language_id']][] = array(
				'title'      => $banner_image['title'],
				'description'=> $banner_image['description'],
				'link_text'  => $banner_image['link_text'],
				'link'       => $banner_image['link'],
				'image'      => $banner_image['image'],
				'color_theme'=> $banner_image['color_theme'],
				'mobile_image'=> $banner_image['mobile_image'],
				'mobile_color_theme'=> $banner_image['mobile_color_theme'],
				'sort_order' => $banner_image['sort_order'],
				'textalign'	 => $banner_image['textalign'],
				'btn_color'	 => $banner_image['btn_color'],
			);
		}

		return $banner_image_data;
	}

	public function getTotalBanners() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "banner");

		return $query->row['total'];
	}
}
