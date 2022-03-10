class Article < ApplicationRecord
  include Visible
  has_many :comments, dependent: :destroy

  validates :title, presence: { message: 'title is needed' }
  validates :body, presence: true, length: { minimum: 5 }
end
