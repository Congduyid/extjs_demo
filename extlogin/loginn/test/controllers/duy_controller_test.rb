require 'test_helper'

class DuyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get duy_index_url
    assert_response :success
  end

end
