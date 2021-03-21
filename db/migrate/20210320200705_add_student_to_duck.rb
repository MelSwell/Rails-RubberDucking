class AddStudentToDuck < ActiveRecord::Migration[5.2]
  def change
    add_reference :ducks, :student, foreign_key: true
  end
end
