# classe cases :
class BoardCase
    #la classe a deux attr_accessor : sa valeur ("X", "_", ou vide), et son numéro de case.
    attr_accessor :value, :case_number
    
    def initialize(case_number)
      @value = ""
      @case_number = case_number
    end
    
    def to_s
      # renvoie la valeur au format string
      self.value = @value 
    end
  
  end
  
  ##################################################
  ##################################################
  
  # Le tableau de jeu
  class Board
    include Enumerable
  
    attr_accessor :board
  
    def initialize
      #Quand la classe s'initialize, elle crée 9 instances BoardCases
      #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
      @board =  [*0..8].map { |i|  BoardCase.new(i).case_number }
    end
  
    def to_s
    # affiche le plateau
      puts "#{@board[0..2].join(" | ")}"
      puts "--|---|--"
      puts "#{@board[3..5].join(" | ")}"
      puts "--|---|--"
      puts "#{@board[6..8].join(" | ")}"
    end
  
    def play(symbol)
      # change la case jouée en fonction de ce qu'a joué le joueur (X, ou _)
      case_number = gets.chomp().to_i
      @board = @board.each_index.map { |e| e == case_number && @board[e] != "X" && @board[e] != "_" ? @board[e] = symbol : @board[e] }
    end
  
    def victory?
      # qui gagne : on teste si les rangées ou diagonales contiennent des symboles identiques
      if (@board[0] == @board[1] && @board[0] == @board[2]) || (@board[3] == @board[4] && @board[3] == @board[5]) || (@board[6] == @board[7] && @board[6] == @board[8] ) || (@board[0] == @board[3] && @board[0] == @board[6]) || (@board[1] == @board[4] && @board[1] == @board[7]) || (@board[2] == @board[5] && @board[2] == @board[8]) ||( @board[0] == @board[4] && @board[0] == @board[8]) || (@board[2] == @board[4] && @board[2] == @board[6])
        return true
      else
        return false
      end
    end
  
  end
  
  ##################################################
  ##################################################
  
  class Player
    # La classe a deux attr_accessor : son nom, et son symbole (X ou O).
    attr_accessor :name, :symbol
    
    def initialize(name, symbol)
      # nom du joueur, symbole avec lequel il joue
      @name = name
      @symbol = symbol
    end
  
  end
  
  ##################################################
  ##################################################
  
  class Game
  
      attr_accessor :symbol
  
    def initialize
        # On efface l'écran du terminal
      system "clear"
      puts "Bienvenue au jeu du morpion!"
      puts "Attention, si tu choisis une case déjà occupée, tu perds ton tour!"
      puts
      puts "Joueur 1, ton symbole sera X, choisis un nom: "
      print ">"
      name_1 = gets.chomp
  
      # crée le joueur 1
      @player1 = Player.new(name_1, "X")
      puts
      puts "Joueur 2, ton symbole sera underscore _ , choisis un nom: "
      print ">"
      name_2 = gets.chomp
  
      # crée le joueur 2
      @player2 = Player.new(name_2, "_")
      @current_player = @player1
  
      # crée le plateau de jeu
      @board = Board.new
    end
  
    def go
      # lance la partie
      while @board.victory? == false
        self.turn
      end
    end
  
    # Passe d'un joueur à l'autre
    def switch_players
      if @current_player == @player1
        @current_player = @player2
      else
        @current_player = @player1
      end
    end
  
    #à chaque tour on exécute turn (lancé par la méthode go)
    def turn
      # On boucle tant qu'il n'y a pas de victoire
      loop do
          system "clear"
          puts "============="
  
          puts "Voici l'état du jeu:"
          # Affiche le plateau :
        @board.to_s
  
        puts ""
        puts "C'est le tour de #{@current_player.name} avec les #{@current_player.symbol}"
        puts "Choisis une case"
        print ">"
  
        # On appelle la méthode play de la classe board sur le joueur en cours (current). Elle demande au joueur quelle case il joue, puis affiche son symbole dans la case
        @board.play(@current_player.symbol)
  
        # On arrête la boucle en cas de victoire
        if @board.victory? == true
            system "clear"
                 puts "============="
                puts "Voici l'état du jeu:"
          @board.to_s
          puts ""
          puts "#{@current_player.name} a gagné !!!"
          puts
          break
        end
  
        # Il n'y a pas de victoire : on passe au joueur suivant et on boucle (tour suivant)
        switch_players
  
      end
    end 
  end
  
  ##################################################
  ##################################################
  
  # On crée un nouveau jeu et on appelle la méthode Go qui lance le jeu
  Game.new.go