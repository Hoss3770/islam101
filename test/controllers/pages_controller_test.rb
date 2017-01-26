require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get pages_view_url
    assert_response :success
  end

end
