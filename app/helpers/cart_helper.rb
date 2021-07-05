module CartHelper
	def get_comment(item)
		Quote.where(item_detail: item.title)
	end
end
