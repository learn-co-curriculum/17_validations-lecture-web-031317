class Course < ApplicationRecord
  validates :name, presence: true


  # A course is a valid if it has a unique name
  # and if it has a description

  # and if that description is not the word 'dog'
end
