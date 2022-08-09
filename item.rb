class Item
    def initialize(archived = true)
        @id = Random.rand(1..1000)
        @archived = archived
        @genre = []
        @author = []
        @label = []
        @publish_date = []
        @source = []
    end

    def genre=(genre)
        @genre = genre
    end

    def author=(author)
        @author = author
    end

    def label=(label)
        @label = label
    end

    def source=(source)
        @source = source
    end
end