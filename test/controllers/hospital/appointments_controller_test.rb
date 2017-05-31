require 'test_helper'

class Hospital::AppointmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get hospital_appointments_new_url
    assert_response :success
  end

  test "should get create" do
    get hospital_appointments_create_url
    assert_response :success
  end

  test "should get index" do
    get hospital_appointments_index_url
    assert_response :success
  end

end
