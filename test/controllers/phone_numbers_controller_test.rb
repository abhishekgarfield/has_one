require "test_helper"

class PhoneNumbersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get phone_numbers_create_url
    assert_response :success
  end
end
