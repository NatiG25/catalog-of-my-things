require 'spec_helper'

describe MusicAlbum do
    before :each do
        @royalty = MusicAlbum.new('02/02/2018')
    end

    it'checks if royalty is an instance of MusicAlbum' do
        @royalty.should be_an_instance_of MusicAlbum
    end
end