class CategoryToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :food_items, :category, foreign_key: true
  end
end
