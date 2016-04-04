class Search < ActiveRecord::Base


	def self.search(subject_var, course_var)
		# if subject_var == nil && course_var == nil
		# else
			convert = subject_var.to_s
			only_id_array = convert.split(' ')
			only_id = only_id_array[0]
			courses = Course.all
			courses = courses.where("name LIKE ?", "%#{course_var}%")
			courses = courses.where("subject LIKE ?", "%#{only_id}%")
		# end

	end
end
