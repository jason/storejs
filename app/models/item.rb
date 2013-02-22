class Item < ActiveRecord::Base
  attr_accessible :name, :price, :image

  has_many :cart_items
  has_many :users, :through => :users

  validates :price, :presence => true
  validates :name, :presence => true
end
