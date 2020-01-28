class Comment < ApplicationRecord
  belongs_to :issue
  validates :body, lenght: { minimum: 20 }
end
