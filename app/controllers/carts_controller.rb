class CartsController < ApplicationController

	def add_to_cart
		if params[:quote].present?
			Quote.new.create_quote(params)
		end
		Cart.new.add_items_to_cart(params)

		redirect_to '/cartItems'
	end

	def items_in_carts
		if current_user.admin?
			@carts = Item.includes(:users, :carts)
		else
			@carts = Item.includes(:users, :carts).where(users:{id:current_user.id})
		end
	end

	def reply
		Quote.new.create_quote(params)
		redirect_to '/cartItems'
	end
end
