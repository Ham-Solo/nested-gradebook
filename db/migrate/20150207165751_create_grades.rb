class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :score
      t.references :assignment, index: true
      t.references :student, index: true

      t.timestamps null: false
    end
    add_foreign_key :grades, :assignments
    add_foreign_key :grades, :students
  end
end
