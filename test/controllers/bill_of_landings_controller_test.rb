require 'test_helper'

class BillOfLandingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bill_of_landings_index_url
    assert_response :success
  end

end
