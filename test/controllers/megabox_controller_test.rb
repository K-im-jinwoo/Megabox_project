require 'test_helper'

class MegaboxControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get megabox_show_url
    assert_response :success
  end

end
