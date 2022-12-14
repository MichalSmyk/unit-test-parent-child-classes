require_relative '../lib/track'

RSpec.describe Track do 
    it 'matches when given a keyword in the title' do 
        song = Track.new("song", "artist")
        expect(song.matches?("song")).to eq true
    end
    it 'matches when given a keyword in the artist' do 
        song = Track.new("song", "artist")
        expect(song.matches?("artist")).to eq true
    end
    it 'does not match artist or title ' do 
        song = Track.new("song", "artist")
        expect(song.matches?("one")).to eq false
    end
end