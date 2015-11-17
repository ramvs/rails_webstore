class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if user_signed_in?
      if current_user.order.present?
        Order.find(current_user.order.id)
      else
        Order.new
      end
    else
      if !session[:order_id].nil?
        Order.find(session[:order_id])
      else
        Order.new
      end
    end
  end

end
