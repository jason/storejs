class CartItemsController < ApplicationController
  def create
    @cart_item = current_user.cart_items.find_by_item_id(params[:cart_item][:item_id])

    if @cart_item
      @cart_item.quantity += 1
      @cart_item.save!
    else
      @cart_item = current_user.cart_items.build(params[:cart_item])
      @cart_item.save!
    end

    respond_to do |format|
      format.json { render :json => @cart_item }
    end
  end

  def index
    @cart_items = current_user.cart_items.includes(:item).all

    respond_to do |format|
      format.json { render :json => @cart_items.to_json(:include => :item)}
    end
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    @cart_items = current_user.cart_items.includes(:item).all

    respond_to do |format|
      format.json { render :json => @cart_items.to_json(:include => :item)}
    end
  end

  def empty
    current_user.cart_items.each do |cart_item|
      cart_item.destroy
    end

    @cart_items = current_user.cart_items

    respond_to do |format|
      format.json { render :json => @cart_items.to_json(:include => :item)}
    end
  end

end