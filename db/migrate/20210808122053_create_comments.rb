class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :Name
      t.text :body
      t.references :food_item, foreign_key: true

      t.timestamps
    end
  end
end
