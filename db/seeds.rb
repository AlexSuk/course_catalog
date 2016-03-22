# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'json'
# require 'course.json'
# require 'instructor.json'
# require 'subject.json'


course_file = File.read('db/course.json')
instruct_file = File.read('db/instructor.json')
subject_file = File.read('db/subject.json')

all_courses = JSON.parse(course_file)
all_instructions = JSON.parse(instruct_file)
all_subjects = JSON.parse(subject_file)

all_courses.each do |course|
	

	Course.create(name: course["name"], code: course["code"], description: course["description"], requirement: course["requirements"], subject: course["subjects"])
end

all_instructions.each do |i| 
	Instructor.create(middle: i["middle"], last: i["last"], first: i["first"], email: i["email"], instruct_id: i["id"])

end

all_subjects.each do |sub|
	Subject.create(name: sub["name"], sub_id: sub["id"], abbreviations: sub["abbreviation"])
end