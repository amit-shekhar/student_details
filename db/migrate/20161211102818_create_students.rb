class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :class
      t.string :age
      t.string :parents_name
      t.timestamps
    end
  end
end
