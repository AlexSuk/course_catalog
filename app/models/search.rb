class Search < ActiveRecord::Base


	def self.search(search)
		if search
			@courses = Course.all
			
		end
	end
end
