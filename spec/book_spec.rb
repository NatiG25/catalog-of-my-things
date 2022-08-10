require 'spec_helper'

describe Book do
    it 'archived should be true' do
        book = Book.new('15/05/2022', 'publisher', 'bad')
        book.move_to_archive?
        book.archived.should eq true
      end
    
      it 'archived should be false' do
        book = Book.new('15/05/2022', 'publisher', 'good')
        book.move_to_archive?
        book.archived.should eq false
      end
end