require 'spec_helper'

describe Genre do
  before :each do
    @adventure = Genre.new('Adventure')
    @item = Item.new('01/01/2019')
    @adventure.add_item(@item)
  end

  it 'checks if adventure is an instance of Genre' do
    @adventure.should be_an_instance_of Genre
  end

  it 'checks if add_item added item into items array' do
    @adventure.items[0].should eql @item
  end

  it 'checks if item has adventure' do
    @item.genre.should eql @adventure
  end
end
