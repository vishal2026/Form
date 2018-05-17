require 'test_helper'

class ViewFormDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get view_form_details_index_url
    assert_response :success
  end

end
