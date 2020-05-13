class TodoItem < ApplicationRecord
	validates :content, presence: true
	belongs_to :todo_list
	def completed?
		completed_at.present?
	end

	default_scope { order({completed_at: :asc}, {priority: :asc}, {created_at: :desc}) }

end