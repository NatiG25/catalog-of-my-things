require 'spec_helper'

describe 'Author' do
  context 'when create a new author' do
    it 'return a new object' do
      author = Author.new('Olivier', 'Java')
      expect(author).to be_an_instance_of(Author)
    end

    it 'return the correct first and last name' do
      author = Author.new('Olivier', 'Java')
      expect(author.first_name).to eql('Olivier')
      expect(author.last_name).to eql('Java')
    end
  end

  context 'add_item method' do
    it 'should be able to add an item' do
      author = Author.new('Olivier', 'Java')
      item = Item.new('12/02/2018', false)
      author.add_item(item)
      expect(author.items).to include(item)
      expect(item.author).to be(author)
    end
  end
end
