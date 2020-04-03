class OrderItemsController < ApplicationController
    
    def create
        current_cart.add_item(
            product_id: params[:product_id],
            quantity: params[:quantity]
        )
    end
end