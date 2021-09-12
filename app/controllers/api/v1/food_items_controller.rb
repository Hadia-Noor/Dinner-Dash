class API::V1::FoodItemsController < ApplicationController
  def index
    render json: FoodItem.all
  end

  def create
    food_item = FoodItem.create(food_item_params)
    render json: food_item
  end

  def destroy
    FoodItem.destroy(params[:id])
  end

  def update
    food_item = FoodItem.find(params[:id])
    food_item.update_attributes(food_item_params)
    render json: food_item
  end

  private

  def food_item_params
    params.require(:food_item).permit(:title, :description, :price, :category_id, :available, :catering, :featured)
  end
end
