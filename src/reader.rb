# frozen_string_literal: true

# File loaded
class Reader
  def read_file
    file = File.open('cells.txt')
    file.readlines.map(&:chomp)
  end
end
