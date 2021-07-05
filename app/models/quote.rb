class Quote < ApplicationRecord
	# attr_accessor :comment, :item, :email
  belongs_to :user
  belongs_to :item, optional: true

	# def initialize(params_data)
	# 	binding.pry
	# 	@comment = params_data[:quote]
	# 	@item = params_data[:item]
	# 	@email = params_data[:userdetail]
	# end

  def create_quote(params_data)
  	quote = Quote.new
  	quote.title = params_data[:quote]
  	quote.item_detail = params_data[:item]
  	quote.user_id = params_data[:user_id]
  	quote.save!
  end
end
