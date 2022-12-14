require_relative '../lib/track'
require_relative '../lib/music_library'

RSpec.describe 'integration' do 
    it 'adds and lists the tracks' do
        library = MusicLibrary.new
        song_1 = Track.new("song1", "artist1")
        song_2 = Track.new("song2", "artist2")
        library.add(song_1)
        library.add(song_2)
        expect(library.all).to eq [song_1, song_2]
    end

    it 'serches tracks by the title ' do 
        library = MusicLibrary.new
        song_1 = Track.new("one two", "three four")
        song_2 = Track.new("five six", "seven eight")
        library.add(song_1)
        library.add(song_2)
        expect(library.search("two")).to eq [song_1]
    end
end

