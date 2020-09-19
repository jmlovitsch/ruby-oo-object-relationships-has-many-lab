class Post

    attr_accessor :name

    @@all = []
    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author(name)
        post.author = name
    end



end
