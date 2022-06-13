require 'rails_helper'

RSpec.describe TodoItem, type: :model do
  it 'returns a description of the list' do
    # todo_item = TodoItem.create(content: 'content')
    todo_item = build(:todo_item)

    expect(todo_item.content).to eq 'content'
  end

  it 'validated the presence of content' do
    todo_list = TodoItem.create(content: nil)
    expect(todo_list).to_not be_valid
  end
end
#read up on context within a describe block