require 'test_helper'

class WalletsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wallets_index_url
    assert_response :success
  end

  test "should get create" do
    get wallets_create_url
    assert_response :success
  end

  test "should get update" do
    get wallets_update_url
    assert_response :success
  end

end
