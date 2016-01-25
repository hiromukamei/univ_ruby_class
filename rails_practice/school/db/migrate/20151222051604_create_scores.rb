class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :student_id
      t.integer :course_id
      t.string :score

      t.timestamps null: false
    end
  end
end
