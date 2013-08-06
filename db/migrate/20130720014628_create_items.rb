class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.belongs_to	:user
    	t.text	:description
    	t.boolean :donetoday, default: false, null: false
    	t.integer :localstreak
    	t.integer :maxstreak
	t.timestamps
    end
  end
end
