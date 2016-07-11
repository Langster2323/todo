class List < ActiveRecord
  validate :title, length: { maximum: 80, minimum: 2 }
  has_many :task
end
