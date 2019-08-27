class Portfoliio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumbnail
  # after_initialize runs when the new action is run in the controller
  after_initialize :set_defaults

  # create a customer scope. 2 different formats
  def self.angular
    where(subtitle: "Angular")
  end

  scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails") }

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: "600", width: "400") # ||= is the or equal operator, if it is already has a value it ignores it
    self.thumbnail ||= Placeholder.image_generator(height: "150", width: "150")
  end
  
end
