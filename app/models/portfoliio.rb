class Portfoliio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumbnail
end
