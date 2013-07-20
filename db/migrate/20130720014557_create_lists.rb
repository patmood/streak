class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
    	t.belongs_to	:user
    	t.string	:stub
    end
  end
end
