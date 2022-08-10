require_relative './item'

class MusicAlbum < Item
  def initialize(publish_date, on_spotify: true)
    super(publish_date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    can_be_archived? && @on_spotify
  end
end
