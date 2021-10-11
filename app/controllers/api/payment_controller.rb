class Api::PaymentController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:return]

  def return
    gateway = Sinopac::FunBiz::Gateway.new
    result = gateway.query_pay_order(pay_token: params['PayToken'])

    if result.success?
      order = Order.find_by(order_no: result.order_no)

      if order && order.may_pay?
        order.pay!(result.transaction_no, result.pay_token)
      end

      redirect_to root_path, notice: "信仰已儲值 #{result.amount} 點！"
    else
      redirect_to root_path, notice: '儲值過程發生錯誤！'
    end
  end
end
