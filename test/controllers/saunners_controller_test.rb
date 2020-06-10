require 'test_helper'

class SaunnersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get saunners_show_url
    assert_response :success
  end

  test "should get edit" do
    get saunners_edit_url
    assert_response :success
  end

end
