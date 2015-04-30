class ProgrammingLanguage < ActiveRecord::Base
	has_many :programming_platforms, inverse_of: :programming_language
end
