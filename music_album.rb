require_relative './item'

class MusicAlbum < Item
  def initialize(publish_date, archived: true, on_spotify: true)
    super(publish_date, archived: archived)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify
  end
end
