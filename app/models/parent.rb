class Parent < ActiveRecord::Base
  has_secure_password
  has_many :students, dependent: :destroy
  accepts_nested_attributes_for :students
  validates :email, uniqueness: true
  validates :name, presence: true
  validates_associated :students

end
