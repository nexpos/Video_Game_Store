class OrdersController < ApplicationController
  before_action :authenticate_user!

  def your_orders
    @orders = Order.where(user_id: current_user.id).order(created_at: :desc)
  end
end
