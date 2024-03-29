class Admin::DashboardController < ApplicationController
  
  http_basic_authenticate_with name: ENV["username"], password: ENV["password"]

  def show
    @countProducts = Product.count
    @countCategories = Category.count
  end
end
