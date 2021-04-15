class Task < ApplicationRecord
  validates :title, presence: true, length: { in: 1..1000 }
  validates :content, presence: true, length: { in: 1..1000 }
end
