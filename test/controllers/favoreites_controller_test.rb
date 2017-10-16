require 'test_helper'

class FavoreitesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get favoreites_create_url
    assert_response :success
  end

  test "should get destroy" do
    get favoreites_destroy_url
    assert_response :success
  end

end
