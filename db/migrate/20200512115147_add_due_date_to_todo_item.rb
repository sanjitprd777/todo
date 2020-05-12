class AddDueDateToTodoItem < ActiveRecord::Migration[6.0]
  def change
    add_column :todo_items, :due_date, :datetime
  end
end
