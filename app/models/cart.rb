class Cart < ApplicationRecord
	belongs_to :item
	belongs_to :user

	def add_items_to_cart(params_data)
		cart = Cart.new
		cart.user_id = params_data[:user_id]
		cart.item_id = Item.find_by(title: params_data[:item]).id
		cart.save!
	end
end
