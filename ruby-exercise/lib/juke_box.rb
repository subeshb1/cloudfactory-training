# JukeBox
class JukeBox
  def initialize (songs)
    @songs = songs
    @current = 0
  end

  def play
    puts "Playing #{@songs[@current]}"
  end

  def next
    @current = (@current + 1) % @songs.length
    play
  end

  def previous
    @current = (@current - 1) % @songs.length
    play
  end

  def shuffle
    @current = Random.rand(@songs.length)
    play
  end

  def add_song(song)
    @songs.push(song)
  end
end
