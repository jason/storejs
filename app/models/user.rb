class User < ActiveRecord::Base
  attr_accessible :username

  has_many :cart_items
  has_many :items, :through => :cart_items
  has_many :orders

  validates :username, :presence => true

  def empty_cart
    self.cart_items.each do |cart_item|
      cart_item.destroy
    end
  end

end
