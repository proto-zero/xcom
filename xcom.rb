require "colorize"

# Variables
lw = 30
width = 31
height = 15
x = 7
y = 0
i = 7
j = 30
looping = true

## Sizes Map
grid = [];
(0...height).each do |row|
    grid[row] = []
    (0...width).each do |column|
        grid[row][column] = "* ".colorize(:white)
    end
end

# Game Loop
while looping
  system("clear")
  puts

  # Draw Map
  grid[x][y] = "& ".colorize(:red)     # Player
  grid[i][j] = "@ ".colorize(:blue)    # Enemy
  grid[0][15] = "| ".colorize(:black)  # Wall
  grid[1][15] = "| ".colorize(:black)  # Wall
  grid[2][15] = "| ".colorize(:black)  # Wall
  grid[3][15] = "| ".colorize(:black)  # Wall
  grid[4][15] = "| ".colorize(:black)  # Wall
  grid[5][15] = "| ".colorize(:black)  # Wall
  grid[6][15] = "| ".colorize(:black)  # Wall
  grid[7][15] = "| ".colorize(:black)  # Wall
  grid[8][15] = "| ".colorize(:black)  # Wall
  grid[9][15] = "| ".colorize(:black)  # Wall
  grid[10][15] = "| ".colorize(:black)  # Wall
  grid[11][15] = "| ".colorize(:black)  # Wall
  grid[12][15] = "| ".colorize(:black)  # Wall
  grid[13][15] = "| ".colorize(:black)  # Wall
  grid[14][15] = "| ".colorize(:black)  # Wall

  (0...height).each do |row|
      print " " * (lw / 3)
      (0...width).each do |column|
          print grid[row][column]
      end
      puts
  end
  puts
  puts "Player &".center lw
  puts "M to move".center lw
  puts "X to Shoot"
  puts
  print "ACTION: "

  # Cleans board
  grid[x][y] = "* ".colorize(:red)
  grid[i][j] = "* ".colorize(:blue)

  # Player movement
  move = gets.chomp
  if move == "w" && x != 0
    x -= 1
  elsif move == "s" && x < height - 1
    x += 1
  elsif move == "a" && y != 0
    y -= 1
  elsif move == "d" && y < 14
    y += 1
  end

  # # Random enemy movement
  # enemy_roll = rand(0..3)
  # if enemy_roll == 0 && i != 0
  #   i -= 1
  # elsif enemy_roll == 1 && i < size - 1
  #   i += 1
  # elsif enemy_roll == 2 && j != 0
  #   j -= 1
  # elsif enemy_roll == 3 && j < size -1
  #   j += 1
  # end

  # # Encounter / Go To Battle
  # if x == i && y == j
  #   Battle.new
  #   looping = false
  # end
end

# Credits
system("clear")
puts "Game Over!"
puts
puts "Created By"
puts "    Sean Lenhart"
puts "            2021"
puts
puts "                Thank you for playing!"
puts



#### TODO
# create arena +
# place players +
## choose player tokens
# move players +
# turn actions
## move up to a set amount of spaces
## shoot
### shooting increases in accuracy as distance to the target decreases
### damage increases with accuracy
## special actions
### aim
### sprint
# hit points
# player defeated
# AI movement
# AI turns
