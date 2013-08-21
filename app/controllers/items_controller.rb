class ItemsController < ApplicationController

	def index
    if current_user
  		@incomplete_items = current_user.items.where(donetoday: false)
      @complete_items = current_user.items.where(donetoday: true)
    end
	end

	def new
		@item = current_user.items.new
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
		@item = current_user.items.destroy(params[:id])
		respond_to do |format|
			format.html {	redirect_to root_path }
			format.js
		end
	end

	def update
    @item = current_user.items.find(params[:id])
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
