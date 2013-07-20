class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.belongs_to	:user
    	t.text	:description
    end
  end
end
