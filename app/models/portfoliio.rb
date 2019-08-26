class Portfoliio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumbnail

  # create a customer scope. 2 different formats
  def self.angular
    where(subtitle: "Angular")
  end

  scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails" }
end
