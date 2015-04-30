class Role < ActiveRecord::Base
	belongs_to :profession, inverse_of: :roles
end
