require 'ocr_space'


def ocr(file="img/test.png")
	puts "OCR_API_KEY: #{ENV['OCR_API_KEY'][0..2]} ..."

	file = File.expand_path('test.png')
	puts "File: #{file}"

	resource = OcrSpace::Resource.new(apikey: ENV["OCR_API_KEY"])
	result = resource.convert file: file
	puts "result:", result

end


