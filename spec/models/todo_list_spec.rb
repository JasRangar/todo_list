require 'rails_helper'

RSpec.describe TodoList, type: :model do
  it 'returns a description of the list' do
    # todo_list = TodoList.create(title: 'Title', description: 'description')
    todo_list = build(:todo_list)

    expect(todo_list.description).to eq 'description'
  end

  it 'validated the presence of a title' do
    todo_list = TodoList.create(title: nil, description: 'description')
    expect(todo_list).to_not be_valid
  end

  it 'validated the presence of a description' do
    todo_list = TodoList.create(title: 'Title', description: nil)
    expect(todo_list).to_not be_valid
  end
end
