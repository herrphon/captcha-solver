require 'chunky_png'


def create_bordered_img(img='img/captcha.png')
	result_file = "#{img[0..-5]}_test.png"

	captcha = ChunkyPNG::Image.from_file(img)
	png = ChunkyPNG::Image.new(500, 500, ChunkyPNG::Color::BLACK)
	png.compose!(captcha, 200, 200)
	png.save(result_file, :fast_rgba) # Force the fast saving routine.
	
	result_file
end
