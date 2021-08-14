require "test_helper"

class IdeasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ideas_index_url
    assert_response :success
  end

  test "should get thank_you" do
    get ideas_thank_you_url
    assert_response :success
  end
end
