require "tty-prompt"
require "pastel"
require "tty-font"

require_relative "./main_game.rb"
require_relative "./rules.rb"

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
        print "Whats your name? "
        name = gets.chomp.capitalize

        if name != ""
            system "clear"
            puts "Welcome #{name}, prepare to battle to the top!"
            sleep (1)
            main_game
            system "clear"
        elsif name == ""
            name = "The Great Mysterio"
            puts "Welcome #{name}, prepare to battle to the top!"
            sleep (2)
            main_game
            system "clear"
        end 

    when menu == "Rules"
        rules
    when menu == "Difficulty"
        difficulty = prompt.select("Please select your dificulty level:", ["Easy", "Medium", "Hard", "Return to menu"])
        system "clear"
    when menu == "Exit"
        system "clear"
        return
    end
end