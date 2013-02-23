class Item < ActiveRecord::Base
  attr_accessible :name, :price, :image

  has_many :cart_items
  has_many :order_items
  has_many :order, through: :order_items
  has_many :users, :through => :cart_items

  validates :price, :presence => true
  validates :name, :presence => true
end
