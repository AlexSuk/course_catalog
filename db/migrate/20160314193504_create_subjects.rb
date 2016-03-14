class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :sub_id
      t.string :abbreviations

      t.timestamps null: false
    end
  end
end
