class Cart < ApplicationRecord
	belongs_to :item
	belongs_to :user

	# attr_accessor :email, :title

	# def initialize(params_data)
	# 	@email = params_data[:user_email]
	# 	@item_title = params_data[:title]
	# end

	def add_items_to_cart(params_data)
		cart = Cart.new
		cart.user_id = User.find_by(email: params_data[:userdetail]).id
		cart.item_id = Item.find_by(title: params_data[:item]).id
		cart.save!
	end
end
