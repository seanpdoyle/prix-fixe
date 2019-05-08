class Note < ApplicationRecord
  validates :content, presence: true
end
