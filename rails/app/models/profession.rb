class Profession < ActiveRecord::Base
	has_many :roles, inverse_of: :profession
end
