module Api
    module V1
        module Customers
            class OrdersController < ApplicationController
                def index
                    @orders = Order.where(customer_id: params[:customer_id])
                    render json: @orders
                end
            
                def create
                    @order = Order.new(order_params)
                    @order.save!
                    render json: @order
                end


                private

                def order_params
                    params.permit(:customer_id)
                end
            end
        end
    end
end