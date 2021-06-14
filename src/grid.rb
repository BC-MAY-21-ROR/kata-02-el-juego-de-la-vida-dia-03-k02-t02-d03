# frozen_string_literal: true

require_relative './reader'

class Grid
  def draw
    rows = Reader.new.read_file
    first_board = Array.new(rows.length) { Array.new(rows[0].length) }
    rows.each_with_index do |row, index|
      row.each_char.with_index do |cell, column_index|
        first_board[index][column_index] = cell
      end
    end
      first_board
  end

  def neighbours_life
    first_board = draw
    first_board.each_with_index do |row, index|
      row.each_with_index do |_, column_index|
        print "#{first_board[index][column_index]}"
      end
      puts
    end
  end
  

  def life_or_death(n)
    
    if [2, 3].include?(n)
      '*'
    else
      '.'
    end
  end
end

Grid.new.neighbours_life
