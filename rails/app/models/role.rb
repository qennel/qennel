class Role < ActiveRecord::Base
	belongs_to :profession, inverse_of: :roles
	has_and_belongs_to_many :users, :join_table => 'users_roles'
end
