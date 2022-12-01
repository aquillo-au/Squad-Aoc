class AOC
  def initialize(input_file:)
    @input_file = input_file
  end

  def lazy_load_data
    File.open(@input_file).read
  end
end
