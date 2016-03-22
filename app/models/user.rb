class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_secure_password
  has_many :enrollments


  def display_enrollments
    curr_user_id = self.id
  	enrollments = Enrollment.where("users_id LIKE ?", "%#{curr_user_id}%")
  	enrollment_names = Array.new
  	enrollments.each do |x|
  		course = Course.find_by(id: x.courses_id)
  		enrollment_names.push(course.name)
  	end
  	return enrollment_names


  end
end
