require 'httparty'


def ocr_alt_3(file="img/test.png")
  # https://ocr.space/ocrapi

  file = File.expand_path('img/captcha_test.png')
  data = File.open(file).read
  encoded = Base64.strict_encode64(data)

  puts encoded

  res = HTTParty.post(
		'https://api.ocr.space/parse/image',
		body: {
      apikey: ENV["OCR_API_KEY"],
      filetype: 'png',
			base64Image: encoded
		}
	)

	puts res

	result = res.parsed_response['ParsedResults']
	puts "result: ", result

end
