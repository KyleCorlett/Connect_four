def rules
    puts " "
    puts "• Players must connect 4 of the same colored discs in a row to win."
    puts " "
    sleep (0.5)
    puts "• Only one piece is played at a time."
    puts " "
    sleep (0.5)
    puts "• Players can be on the offensive or defensive."
    puts " "
    sleep (0.5)
    puts "• The game ends when there is a 4-in-a-row or a stalemate."
    puts " "
    sleep (0.5)
    puts "• he starter of the previous game goes second on the next game."
    puts " "
    sleep (0.5)
    puts "'Press any key to return to main menu'"
    STDIN.getch
    system "clear"
end