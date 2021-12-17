require "tty-prompt"
require "pastel"
require "tty-font"

prompt = TTY::Prompt.new(active_color: :bright_magenta)
pastel = Pastel.new
font = TTY::Font.new(:doom)

while true

puts pastel.yellow("
    ████████████████████████████████████████████████████████████████████████
    █─▄▄▄─█─▄▄─█▄─▀█▄─▄█▄─▀█▄─▄█▄─▄▄─█─▄▄▄─█─▄─▄─███▄─▄▄─█─▄▄─█▄─██─▄█▄─▄▄▀█
    █─███▀█─██─██─█▄▀─███─█▄▀─███─▄█▀█─███▀███─██████─▄███─██─██─██─███─▄─▄█
    ▀▄▄▄▄▄▀▄▄▄▄▀▄▄▄▀▀▄▄▀▄▄▄▀▀▄▄▀▄▄▄▄▄▀▄▄▄▄▄▀▀▄▄▄▀▀▀▀▄▄▄▀▀▀▄▄▄▄▀▀▄▄▄▄▀▀▄▄▀▄▄▀")

menu = prompt.select("Welcome to connect four", ["Start new game", "Rules", "Difficulty", "Exit"])

case

when menu == "Start new game"
    print "Whats your name?"
    name = gets.chomp.capitalize

    if name != ""
        system "clear"
        puts "Welcome #{name}, prepare to battle to the top!"
        sleep (1)
        main_game
    elsif name == ""
        name = "Frank"
        puts "Welcome #{name}, prepare to battle to the top!"
        sleep (1)
        main_game
    end 

when menu == "Rules"
    rules
when menu == "Difficulty"
    select_difficulty
when menu == "Exit"
    system "clear"
    return
end
end