require './item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at, publish_date)
    super(publish_date, archived)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    current_year = Date.today.year
    last_played_at_year = Date.parse(@last_played_at).year

    super && current_year - last_played_at_year > 2
  end

  def to_json(*_args)
    JSON.generate(
      {
        multiplayer: @multiplayer,
        last_played_at: @last_played_at,
        publish_date: @publish_date
      }
    )
  end
end
