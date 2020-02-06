def intput_index(choix)
    choix=board[choix-1]
end
def display_board(board)
        puts " ______________________________________________"
        puts "|              |               |               |"
        puts "|              |               |               |"
        puts "|       #{board[0]}      |       #{board[1]}       |       #{board[2]}       |"
        puts "|              |               |               |"
        puts "|______________|_______________|_______________|"
        puts "|              |               |               |"
        puts "|              |               |               |"
        puts "|       #{board[3]}      |       #{board[4]}       |       #{board[5]}       |"
        puts "|              |               |               |"
        puts "|______________|_______________|_______________|"
        puts "|              |               |               |"
        puts "|              |               |               |"
        puts "|       #{board[6]}      |       #{board[7]}       |       #{board[8]}       |"
        puts "|              |               |               |"
        puts "|______________|_______________|_______________|"
  end
  display_board(board = ["1", " ", " ", "4", " ", " ", " ", " ", " "])
  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]


def move(tableau, index, p)
  tableau
  index=intput_index
  if player1 
    p="X"
  else
    p="O"
  end
end

def position_taken?
  index=="X" || index=="O"
end

def valid_move?
  display_board
end

def turn(choice)
  puts "Entrer un chiffre entre 1 à 9"
  choice=gets.chomp
  intput_index
  if valid_move?
    move
  else
    puts "Faites un autre choix"
  end

end

def turn_count
  turn_count=0
  if turn?
    turn_count+=1
  end
end

def curent_player

end



end

