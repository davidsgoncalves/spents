require 'test_helper'

class SpentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get spents_index_url
    assert_response :success
  end

  test "should get create" do
    get spents_create_url
    assert_response :success
  end

  test "should get update" do
    get spents_update_url
    assert_response :success
  end

  test "should get delete" do
    get spents_delete_url
    assert_response :success
  end

end
