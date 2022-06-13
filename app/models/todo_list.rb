class TodoList < ApplicationRecord
  has_many :todo_items, dependent: :delete_all

  validates :title, :description, presence: true
end
