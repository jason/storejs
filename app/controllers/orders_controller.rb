class OrdersController < ApplicationController

  def create
    @order = current_user.orders.create!

    current_user.cart_items.each do |cart_item|
      @order.order_items.create( item_id: cart_item.item_id, quantity: cart_item.quantity )
    end

    current_user.empty_cart

    @cart_items = current_user.cart_items

    respond_to do |format|
      format.json { render :json => @cart_items.to_json(:include => :item)}
    end

  end

end