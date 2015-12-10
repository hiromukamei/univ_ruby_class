class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :faculty_id
	  t.integer :grade

      t.timestamps null: false
    end
  end
end
