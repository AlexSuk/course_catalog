class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :code
      t.text :description
      t.text :requirement
      t.string :subject

      t.timestamps null: false
    end
  end
end
