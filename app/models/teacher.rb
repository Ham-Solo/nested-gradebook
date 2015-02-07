class Teacher < ActiveRecord::Base
  has_secure_password
  has_many :students, dependent: :destroy
  has_many :grades
  has_many :assignments
  accepts_nested_attributes_for :students
  accepts_nested_attributes_for :grades
  accepts_nested_attributes_for :assignments

end
