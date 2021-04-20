class Task < ApplicationRecord
  validates :title, presence: true, length: { in: 1..1000 }
  validates :content, presence: true, length: { in: 1..1000 }
  validates :expired_at, presence: true
  validates :status, presence: true
  enum status: { 未着手: 1, 着手: 2, 完了: 3 }
end
