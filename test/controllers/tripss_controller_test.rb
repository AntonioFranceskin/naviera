require 'test_helper'

class TripssControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tripss_index_url
    assert_response :success
  end

end
