class Api::PaymentController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:return]

  def return
    render json: params
  end
end
