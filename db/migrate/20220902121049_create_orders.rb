class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :status
      t.datetime :order_date
      t.integer :total_amount
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
