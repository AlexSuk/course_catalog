class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.belongs_to :users, index: true, foreign_key: true
      t.belongs_to :courses, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
