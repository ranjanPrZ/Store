class ItemsController < ApplicationController
  def new
  end

  def create
	  item = Item.new(item_params)
	  if item.save!
	    redirect_to '/'
	  else
	    redirect_to '/new_item'
	  end
  end

  private

  def item_params
  	params.require(:item).permit(:title,:price)
  end
end
