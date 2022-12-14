require_relative '../lib/music_library'

 RSpec.describe MusicLibrary do 
    it 'adds and lists tracks' do
        library = MusicLibrary.new
        song_1 = double :track
        song_2 = double :track
        library.add(song_1)
        library.add(song_2)
        expect(library.all).to eq [song_1, song_2]
    end
    it 'searches tracks by title ' do 
        library = MusicLibrary.new
        song_1 = double :track, matches?: true
        song_2 = double :track, matches?: false
        library.add(song_1)
        library.add(song_2)
        expect(library.search("two")).to eq [song_1]
    end
end