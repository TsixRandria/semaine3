class BoardCase
  VICT=[[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
    #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
    attr_accessor: value, :num_case
    def initialize(num_case)
      #TO DO : doit régler sa valeur, ainsi que son numéro de case
      @num_case=num_case
      @value=""
    end

    
  end
  
  class Board
    #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
    #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
    attr_accessor: num_case
    
    def initialize(num_case)
    #TO DO :
      #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
      #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
      @board = {1=>" ", 2=>" ", 3=>" ", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" "}  
      board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]  
      @num_case=[1,2,3,4,5,6,7,8,9]
    end
    def display_board(board)
      puts " #{board[0]} | #{board[1]} | #{board[2]} "
      puts "-----------"
      puts " #{board[3]} | #{board[4]} | #{board[5]} "
      puts "-----------"
      puts " #{board[6]} | #{board[7]} | #{board[8]} "
    end

    def displayed_board(@board)
        @count_turn=0
        puts " ______________________________________________"
        puts "|              |               |               |"
        puts "|              |               |               |"
        puts "|       #{@num_case[0]}      |       #{@num_case[1]}       |       #{@num_case[2]}      |"
        puts "|              |               |               |"
        puts "|______________|_______________|_______________|"
        puts "|              |               |               |"
        puts "|              |               |               |"
        puts "|       #{@num_case[3]}      |       #{@num_case[4]}       |       #{@num_case[5]}      |"
        puts "|              |               |               |"
        puts "|______________|_______________|_______________|"
        puts "|              |               |               |"
        puts "|              |               |               |"
        puts "|       #{@num_case[6]}      |       #{@num_case[7]}       |       #{@num_case[8]}      |"
        puts "|              |               |               |"
        puts "|______________|_______________|_______________|"
        

    end
  
    def play_turn
        puts "Fais ton jeu"
      #TO DO : une méthode qui :
      #1) demande au bon joueur ce qu'il souhaite faire
      #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    end
  
    def victory?
      #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
      tab
    end
  

    display_board(board)


  class Player
    #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
    attr_reader: name
    attr_reader: value
    
    def initialize
    #TO DO : doit régler son nom et sa valeur
        @name=name
        @value=value
 
    end
  end
  
  class Game
    #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
    attr_accessor:player1
    attr_accessor:player2
    attr_accessor:status

    def initialize(player1,player1)
      #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
      @player1=player1
      @player2=player2
      @status="en cours"
      @current_player=
    end
  
    def turn
      #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    end
  
    def new_round
      # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    end
  
    def game_end
      # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    end    
  
  end
  
  
  class Show
  
    def show_board(board)
      #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
    end
  
  end
  
  class Application
    def perform
      # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
  
    end
  
  end
end
  
  Application.new.perform