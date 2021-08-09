class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.decimal :subtotal
      t.decimal :total
      t.boolean :paid, :default => false
      #Ex:- :default =>''

      t.timestamps
    end
  end
end
