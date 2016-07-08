class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.text :body
      t.interger :list_id
      t.boolean :completed
    end
  end
end
