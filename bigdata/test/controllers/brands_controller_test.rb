require 'test_helper'

class BrandsControllerTest < ActionController::TestCase
  test "should get ford" do
    get :ford
    assert_response :success
  end

end
