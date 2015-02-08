class Assignment < ActiveRecord::Base
  belongs_to :subject
  has_many :grades
  accepts_nested_attributes_for :grades
end
