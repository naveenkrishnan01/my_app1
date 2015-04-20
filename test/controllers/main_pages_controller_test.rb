require 'test_helper'
require './app/controllers/application_controller.rb'

class MainControllerTest < ActionController::TestCase

  test "should get welcome" do
    get :welcome
    assert_response :success
  end

   test "should get contact" do
    get :contact
    assert_response :success
   end

   test "should get about" do
    get :about
    assert_response :success
   end
  end


  
