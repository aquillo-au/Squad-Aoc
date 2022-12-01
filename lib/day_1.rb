require_relative "./aoc"

class Day1 < AOC
  def solve(part:)
    #lazy_load_data will bring in the text file as a 1 line string so any new lines will be converted to \n
    data = lazy_load_data

    data = data.split("\n\n")
    data = data.map { |num| num.split("\n") }
    data = data.map {|num| num.map {|n| n.to_i }.sum }
    if part == 2
      data.max(3).sum
    else
      data.max
    end
  end

end
