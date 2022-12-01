require_relative "./aoc"

class Day1 < AOC
  def solve(part:)
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
