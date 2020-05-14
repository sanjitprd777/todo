class AddCompletedAtToTodoItems < ActiveRecord::Migration[6.0]
  def change
    add_column :todo_items, :completed_at, :date
  end
end
