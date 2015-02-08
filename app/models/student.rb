class Student < ActiveRecord::Base
  has_secure_password
  belongs_to :parent
  belongs_to :teacher
  has_many :assignments
  has_many :grades
  validates :name, presence: true

end
