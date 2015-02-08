class Parent < ActiveRecord::Base
  has_secure_password
  has_many :students, dependent: :destroy
  accepts_nested_attributes_for :students
end
