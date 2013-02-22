class CartItem < ActiveRecord::Base
  attr_accessible :user_id, :item_id

  belongs_to :item
  belongs_to :user
end
