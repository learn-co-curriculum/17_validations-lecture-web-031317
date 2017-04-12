class Course < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, format: {without: /\Adog\z/i, message: "don't just make it dog!!!!"}
  # validates :description, presence: true, exclusion: {in: ['dog', "Dog"] }
  # validates :description, presence: true
  # validate :description_isnt_dog

  # A course is a valid if it has a unique name
  # and if it has a description

  # and if that description is not the word 'dog'

  # private
  #
  # def description_isnt_dog
  #   if description && description.downcase == 'dog'
  #     errors.add(:description, "shouldn't just be dog")
  #   end
  # end
end
