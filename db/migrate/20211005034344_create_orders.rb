class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :order_no
      t.string :username
      t.integer :amount
      t.string :transaction_no
      t.belongs_to :user, null: false, foreign_key: true
      t.string :state
      t.text :memo
      t.string :pay_type
      t.string :pay_token
      t.datetime :paid_at

      t.timestamps
    end
    add_index :orders, :order_no, unique: true
  end
end
