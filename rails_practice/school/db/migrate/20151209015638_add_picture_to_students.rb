class AddPictureToStudents < ActiveRecord::Migration
  def change
    add_column :students, :picture_data, :binary
    add_column :students, :content_type, :string
  end
end
