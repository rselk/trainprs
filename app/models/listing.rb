class Listing < ActiveRecord::Base
  scope :starts_with, -> (title) { where("title like? ", "#{title}%")}
end
