class User < ActiveRecord::Base
  attr_accessible :username

  has_many :cart_items
  has_many :items, :through => :cart_items

  validates :username, :presence => true
end
