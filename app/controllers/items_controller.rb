class ItemsController < ApplicationController

	def index
		@item = Item.new
	end

	def new
		@item = Item.new
	end

	def create
		if current_user
			@item = current_user.items.create(item_params)
		end
		redirect_to root_path
	end


	private

  def item_params
    params.require(:item).permit(:description)
  end

end