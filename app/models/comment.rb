class Comment < ApplicationRecord
  belongs_to :article
  validates :name, length: { in: 3..30 }
  validates :email, length: { in: 3..50 }
  validates :body, length: { in: 2..1000 }
end
