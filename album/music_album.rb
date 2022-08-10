require_relative '../item'

class MusicAlbum < Item
  attr_accessor :on_spotify, :publish_date

  def initialize(publish_date, archived: false, on_spotify: false)
    super(publish_date, archived: archived)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify
  end

  def to_json(*args)
    JSON.generate(
      {
        on_spotify: @on_spotify,
        publish_date: @publish_date
      }
    )
  end

  private :can_be_archived?
end
