class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.references :parent, index: true
      t.references :teacher, index: true

      t.timestamps null: false
    end
    add_foreign_key :students, :parents
    add_foreign_key :students, :teachers
  end
end
