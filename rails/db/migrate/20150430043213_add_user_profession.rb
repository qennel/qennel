class AddUserProfession < ActiveRecord::Migration
	def change
    add_column :users, :profession_id, :integer, :after => :id
	end
end
