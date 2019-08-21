module Api
    module V1
        class OrdersController < ApplicationController
            def index
                @orders = Order.all
                render json: @orders
            end
        
            def show
                @order = Order.find(params[:id])
                render json: @order
            end
            
            def ship
                Order.find(params[:id]).update!(status: "shipped")
                render json: {
                    message: "Oder ##{params[:id]} has been shipped!"
                }
            end

        end
    end
end