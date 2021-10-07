class OrdersController < ApplicationController
  before_action :authenticate_user!

  def new
    @order = current_user.orders.new
  end

  def create
    @order = current_user.orders.new(order_params)

    if @order.save
      # 準備刷卡
      gateway = Sinopac::FunBiz::Gateway.new
      order = Sinopac::FunBiz::Order.new(
        order_no: @order.order_no,
        amount: @order.amount,
        product_name: '儲值信仰'
      )

      result = gateway.pay!(order: order, pay_type: :credit_card)

      if result.success?
        redirect_to result.payment_url
      else
        redirect_to root_path, notice: "信仰儲值發生錯誤！"
      end
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
