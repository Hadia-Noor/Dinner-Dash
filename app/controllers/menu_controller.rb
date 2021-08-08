class MenuController < ApplicationController
  before_action :set_cats
  def index
    @food_items = FoodItem.all
    @order_item = current_order.order_items.new
  end

  def search
    query = params[:search]
    @food_items = FoodItem.all
    @cats = Category.all.where('title LIKE ?', "%#{query}%")
  end
  private
  def set_cats
    @cats = Category.all.where(display:true)
  end
end
