class CreateCustomerAndOrder < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :email
      t.timestamps
    end

    create_table :orders do |t|
      t.string :status, default: "pending", null: false
      t.belongs_to :customer, index: true
      t.timestamps
    end
  end
end
