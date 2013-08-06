class ItemsController < ApplicationController

	def index
		@incomplete_items = Item.where(donetoday: false)
    @complete_items = Item.where(donetoday: true)
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
		#add some more security here by accessing item through current_user
		@item = Item.destroy(params[:id])
		respond_to do |format|
			format.html {	redirect_to root_path }
			format.js
		end		
	end

	def update
		#add some more security here by accessing item through current_user
    @item = Item.find(params[:id])
    @item.update_attributes!(item_params)
    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.js
    end
	end


	private

  def item_params
    params.require(:item).permit(:description, :donetoday, :user_updated_at)
  end

end
