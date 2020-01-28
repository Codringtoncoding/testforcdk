class Comment < ApplicationRecord
  belongs_to :issue
  validates :body, length: { minimum: 20 }
end
