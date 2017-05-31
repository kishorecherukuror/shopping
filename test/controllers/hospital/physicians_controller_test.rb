require 'test_helper'

class Hospital::PhysiciansControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get hospital_physicians_new_url
    assert_response :success
  end

  test "should get create" do
    get hospital_physicians_create_url
    assert_response :success
  end

  test "should get index" do
    get hospital_physicians_index_url
    assert_response :success
  end

end
