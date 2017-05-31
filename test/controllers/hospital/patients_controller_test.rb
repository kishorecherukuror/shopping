require 'test_helper'

class Hospital::PatientsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get hospital_patients_new_url
    assert_response :success
  end

  test "should get create" do
    get hospital_patients_create_url
    assert_response :success
  end

  test "should get index" do
    get hospital_patients_index_url
    assert_response :success
  end

end
