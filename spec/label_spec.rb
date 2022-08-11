require 'spec_helper'

describe Label do
  before :each do
    @tutorial = Label.new('Tutorial')
    @item = Item.new('01/01/2019')
    @tutorial.add_item(@item)
  end

  it 'checks if adventure is an instance of Label' do
    @tutorial.should be_an_instance_of Label
  end

  it 'checks if add_item added item into items array' do
    @tutorial.items[0].should eql @item
  end

  it 'checks if item has tutorial' do
    @item.label.should eql 'Tutorial'
  end
end
