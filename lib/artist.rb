class Artist

    attr_accessor :name, :song

    @@all_songs = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        @songs
    end

    def add_song(song)
        artist.song = song
    end

    def add_song_by_name(song_name)
        Song.new(song_name, self)
        @@all_songs << song_name
        @songs << song_name
    end

    def self.song_count
        @@all_songs
    end

end
