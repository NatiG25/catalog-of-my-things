require_relative '../item'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publish_date, publisher, cover_state, id = nil, archived: false)
    super(publish_date, id, archived: archived)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super || cover_state == 'bad'
  end

  def to_json(*_args)
    JSON.generate(
      {
        publish_date: @publish_date,
        publisher: @publisher,
        cover_state: @cover_state
      }
    )
  end

  private :can_be_archived?
end
