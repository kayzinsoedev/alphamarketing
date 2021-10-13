<?php
class ControllerTestimonialTesting extends Controller{

    
    public function index(){
        echo "Test";
        die;

        

        $this->response->setOutput($this->load->view('testimonial/testimonial_'.$testimonial_layout, $data));
    }


}