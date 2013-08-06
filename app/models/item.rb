class Item < ActiveRecord::Base
	belongs_to :user

	# after_save :update_streak

	# def update_streak
	# 	self.updated_at
	# end


	# updated_at: "2013-08-06 02:52:17"

end