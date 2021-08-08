class CreateFoodItems < ActiveRecord::Migration[5.2]
  def change
    create_table :food_items do |t|
      t.string :title
      t.string :description
      t.decimal :price
      t.boolean :available, default:false
      t.boolean :catering,  default: false
      t.boolean :featured,  default:false
      t.string  :image_url

      t.timestamps
    end
  end
end
