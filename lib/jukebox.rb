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

def run
  help 
  puts "Please enter a command:"
  ans = gets.chomp
  while ans != "exit" do
    puts "Please enter a command:"
    ans = gets.chomp 
    case jukebox_menu 
    
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
  ans = gets.chomp 
  if arr.include?(ans)
    puts "Playing #{ans}"
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
