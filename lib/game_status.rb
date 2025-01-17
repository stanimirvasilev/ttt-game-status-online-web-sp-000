
require "pry"

WIN_COMBINATIONS = [  
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
  board[win_combination[0]] == board[win_combination[1]] &&
  board[win_combination[1]] == board[win_combination[2]] &&
  position_taken?(board, win_combination[0])
  end
end 


 def full?(board)
    board.all? {|full_board| full_board == "X" || full_board== "O" }
 end
 
 def draw?(board)
   full?(board) && !won?(board)
 end
 
 def over?(board) 
  draw?(board) || won?(board)
 end
 
 def winner(board) 
   #binding.pry
   win_combination = won?(board)
   if won?(board) 
    board[win_combination[0]]
   end
 end 


# Define your WIN_COMBINATIONS constant
