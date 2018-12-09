require 'test_helper'

class ProductComparisonsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get product_comparisons_show_url
    assert_response :success
  end

end
