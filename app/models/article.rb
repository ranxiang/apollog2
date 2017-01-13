class Article < ApplicationRecord
  has_many :comments
  scope :published, -> { where(published: true) }
end
