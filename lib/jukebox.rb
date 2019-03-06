songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def run(songs)
  help 
  puts "Please enter a command:"
  ans = gets.chomp
  while ans != "exit" do
    puts "Please enter a command:"
    ans = gets.chomp 
    case ans
    when "help"
      help 
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      next
    else
      puts "Invalid command."
      help 
    end
  end
end

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(arr)
  puts "Please enter a song name or number:"
  binding.pry
  ans = gets.chomp 
  if arr.include?(ans)
    puts "Playing #{ans}"
  elsif arr.length >= ans.to_i
    puts "Playing #{arr[ans.to_i-1]}"
  else 
    puts "Invalid input, please try again"
  end
end

def list(arr)
  arr.each_with_index {|x,y|
    puts "#{y+1}. #{x}"
  }
end

def exit_jukebox
  puts "Goodbye"
end
