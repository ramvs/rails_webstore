class UsersController < ApplicationController
  def show
    @users = User.all
    @user_shipping_address = ShippingAddress.new
  end
end
