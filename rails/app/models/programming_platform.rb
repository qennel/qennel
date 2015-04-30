class ProgrammingPlatform < ActiveRecord::Base
	belongs_to :programming_language, inverse_of: :programming_platforms
end
