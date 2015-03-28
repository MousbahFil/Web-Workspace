class Player
   attr_accessor :name
    
    def initialize(name)
        @name=name
    end
    
end

class Result
    attr_accessor :success, :player_name
    
    def initialize
        @success=false                
    end    
end

class Board
    attr_accessor :board
    
    def initialize
        @board=Array.new()
        3.times{board.push(["","",""])}
    end
    
    def play(player,x,y)
       if(board[x-1][y-1]=="")
           board[x-1][y-1]=player.name
        end           
    end
    
    def checkForWinner
        candidates=[board[0][0..2],board[1][0..2],board[2][0..2],[board[0][0],board[1][1],board[2][2]],
        [board[0][2],board[1][1], board[2][0]],[board[0][0],board[1][0], board[2][0]], [board[0][1],board[1][1], board[2][1]], 
        [board[0][2],board[1][2], board[2][2]] ]
        
        result= Result.new()
        candidates.each do |x|
           if(x.all?{|y| y!="" && y==x[0] })              
               result.success=true
               result.player_name=x[0]
               return result
            end           
        end 
        print
        return result
    end
    
    def print
        board.each{|x| puts x.join(" ")}
    end
    
end



player1= Player.new("x")
player2= Player.new("o")
board= Board.new();

while true
    puts "Player x: Please enter your coordinates:"
    x=gets.chomp
    y=gets.chomp    
    board.play(player1, x.to_i(), y.to_i())
    
    puts "Player y: Please enter your coordinates:"
    x=gets.chomp
    y=gets.chomp    
    board.play(player2,x.to_i,y.to_i)
    
    winner=board.checkForWinner()
    if(winner.success==true)
        puts "player #{winner.player_name} wins"
        break
    end
    
end
