class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :subject_name
      t.string :course_name

      t.timestamps null: false
    end
  end
end
