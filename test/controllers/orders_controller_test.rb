require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get your_orders" do
    get orders_your_orders_url
    assert_response :success
  end

end
