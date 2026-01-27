module Sound

    def play
        puts "play"
    end

    def stop
        puts "stop"
    end

    def volume_up
        puts "volume up"
    end

    def volume_down
        puts "volume down"
    end

    def replay
        puts "replay"
    end

end


class MusicPlayer1

    include Sound

end

class MusicPlayer2

    extend Sound

end

class MusicPlayer3

    prepend Sound

    def play
        puts "play from Music player"
    end

end

music = MusicPlayer1.new

loop do
  puts "1. Play"
  puts "2. Volume Up"
  puts "3. Volume Down"
  puts "4. Stop"
  puts "5. Exit"

  choice = gets.to_i

  case choice
  when 1
    music.play
  when 2
    music.volume_up
  when 3
    music.volume_down
  when 4
    music.stop
  when 5
    break
  else
    puts "Invalid choice"
  end
end



puts " "

MusicPlayer2.play
MusicPlayer2.stop



music3= MusicPlayer3.new

music3.play