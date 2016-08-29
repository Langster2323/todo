class Task < ActiveRecord::Base
  #presence ensures that attribute is NOT NULL!
  validate :body, length: { minimum: 5, maximum: 1000}
  validate :list_id, presence: true
  validate :completed, presence: true

  belongs_to :list
end
