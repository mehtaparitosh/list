class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :st_id
      t.string :program
      t.string :support
      t.string :name
      t.string :school
      t.integer :class

      t.timestamps
    end
  end
end
