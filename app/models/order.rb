class Order < ActiveRecord::Base
  attr_accessible :user_id

  has_many :order_items
  has_many :items, through: :order_items
  belongs_to :user

end
