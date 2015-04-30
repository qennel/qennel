class CreateUserRoles < ActiveRecord::Migration
	def change
    drop_table 'users_roles' if ActiveRecord::Base.connection.table_exists? 'users_roles'

		create_table :users_roles, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.belongs_to :user
      t.belongs_to :role
      t.timestamps
    end

    add_index :users_roles, [:user_id, :role_id], name: "idx1"
    add_index :users_roles, [:role_id, :user_id], name: "idx2"
	end
end