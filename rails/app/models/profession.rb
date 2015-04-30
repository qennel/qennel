class Profession < ActiveRecord::Base
	has_many :users, inverse_of: :profession
	has_many :roles, inverse_of: :profession
end
