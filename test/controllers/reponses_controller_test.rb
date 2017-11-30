require 'test_helper'

class ReponsesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get reponses_new_url
    assert_response :success
  end

  test "should get create" do
    get reponses_create_url
    assert_response :success
  end

end
