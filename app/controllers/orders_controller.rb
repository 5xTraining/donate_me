class OrdersController < ApplicationController
  before_action :authenticate_user!

  def new
    @order = current_user.orders.new
  end

  def create
    @order = current_user.orders.new(order_params)

    if @order.save
      # 準備刷卡
      redirect_to root_path, notice: "感謝大爺！"
    else
      render :new
    end
  end

  private
  # strong parameters
  def order_params
    params.require(:order).permit(:username, :amount, :memo, :pay_type)
  end
end
