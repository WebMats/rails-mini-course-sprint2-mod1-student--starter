class JoinProductAndOrder < ActiveRecord::Migration[5.2]
  def change
    create_join_table :products, :orders
  end
end
