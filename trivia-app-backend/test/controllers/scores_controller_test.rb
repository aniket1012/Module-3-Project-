require 'test_helper'

class ScoresControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get scores_create_url
    assert_response :success
  end

  test "should get update" do
    get scores_update_url
    assert_response :success
  end

end
