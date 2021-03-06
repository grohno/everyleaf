class Task < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { in: 1..1000 }
  validates :content, presence: true, length: { in: 1..1000 }
  validates :expired_at, presence: true
  validates :status, presence: true
  validates :user_id, presence: true
  enum status: { 未着手: 1, 着手: 2, 完了: 3 }
  enum priority: { 低: 1, 中: 2, 高: 3 }
  scope :search_title, -> (search_title) { where("title LIKE ?", "%#{search_title}%") }
  scope :search_status, -> (search_status) { where(status: search_status)}
end
