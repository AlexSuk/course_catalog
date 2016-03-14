class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :middle
      t.string :last
      t.string :first
      t.string :email
      t.string :instruct_id

      t.timestamps null: false
    end
  end
end
