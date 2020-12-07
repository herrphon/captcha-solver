require 'chunky_png'
require 'ocr_space'


captcha = ChunkyPNG::Image.from_file('captcha.png')

png = ChunkyPNG::Image.new(500, 500)  #, ChunkyPNG::Color::TRANSPARENT)
png.compose!(captcha, 200, 200)
png.save('test.png', :fast_rgba) # Force the fast saving routine.


puts ENV["OCR_API_KEY"][0..2]

resource = OcrSpace::Resource.new(apikey: ENV["OCR_API_KEY"])

file = File.expand_path('test.png').to_s
puts file


result = resource.clean_convert file: file
puts result


result = resource.convert file: file

puts result.inspect #Raw result

puts "asdf"


