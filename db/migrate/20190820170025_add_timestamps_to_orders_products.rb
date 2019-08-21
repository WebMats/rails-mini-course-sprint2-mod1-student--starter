class AddTimestampsToOrdersProducts < ActiveRecord::Migration[5.2]
  puts "HERE: "
    def change
      add_timestamps :orders_products, default: DateTime.now
    end
end
