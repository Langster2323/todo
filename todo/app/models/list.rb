class List < ActiveRecord
  validate :title, presence: true
  has_many :task
end
