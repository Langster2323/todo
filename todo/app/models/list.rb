class List < ActiveRecord
  #Setting a maximum and minimum character length
  validate :title, length: { minimum: 2, maximum: 80 }
  has_many :task
end
