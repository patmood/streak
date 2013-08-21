class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.belongs_to	:user
    	t.text	:description
    	t.boolean :donetoday, default: false, null: false
    	t.integer :localstreak
      t.integer :list_order, default: 999
    	t.integer :maxstreak
      t.datetime :user_updated_at
    	t.timestamps
    end
  end
end
