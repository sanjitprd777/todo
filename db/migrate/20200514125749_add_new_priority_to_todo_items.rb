class AddNewPriorityToTodoItems < ActiveRecord::Migration[6.0]
  def change
    add_column :todo_items, :new_priority, :integer
  end
end
