class ItemsController < ApplicationController

	def index
		@items = Item.all
	end

	def new
		@item = Item.new
	end

	def create
		p "============================="
		p params[:item]
		p current_user
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