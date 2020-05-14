class TodoItem < ApplicationRecord

	enum priority: { VeryHigh: 0, High: 1, Mid: 2, Low: 3, VeryLow: 4}

	validates :content, presence: true

	belongs_to :todo_list
	def completed?
		completed_at.present?
	end

	default_scope { order({completed_at: :asc}, {priority: :asc}, {created_at: :desc}) }


end