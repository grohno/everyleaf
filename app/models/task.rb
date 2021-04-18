class Task < ApplicationRecord
  belongs_to :status
  validates :title, presence: true, length: { in: 1..1000 }
  validates :content, presence: true, length: { in: 1..1000 }
  validates :expired_at, presence: true
  validates :status_id, presence: true
end
