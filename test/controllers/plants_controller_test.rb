require "test_helper"

class PlantsControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get plants_search_url
    assert_response :success
  end
end
