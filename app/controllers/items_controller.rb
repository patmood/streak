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
		respond_to do |format|
			format.html {	redirect_to root_path }
			format.js
		end
	end

	def destroy
		@item = 
	end


	private

  def item_params
    params.require(:item).permit(:description)
  end

end