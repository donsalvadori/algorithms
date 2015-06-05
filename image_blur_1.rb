class Image
  def initialize(array = [])
    @array = array
  end

  def output_image()
     @array
  end

end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

puts image.output_image