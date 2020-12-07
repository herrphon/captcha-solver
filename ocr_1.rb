require 'ocr_space'



def ocr(file="img/test.png")
	puts "OCR_API_KEY: #{ENV['OCR_API_KEY'][0..2]} ..."

	file = File.expand_path('test.png')
	puts "File: #{file}"

	resource = OcrSpace::Resource.new(apikey: ENV["OCR_API_KEY"])
	result = resource.convert file: file
	puts "result:", result


	res = HTTParty.post(
		'https://api.ocr.space/parse/image',
		body: {
			apikey: ENV["OCR_API_KEY"],
			language: "eng",
			ocrEngine: 1,
			isOverlayRequired: true,
			file: file
		}
	)

	puts res

	result = res.parsed_response['ParsedResults']
	puts "result: ", result
end


def ocr_alt(file="img/test.png")
"""curl 'https://api8.ocr.space/parse/image' \
  -H 'authority: api8.ocr.space' \
  -H 'pragma: no-cache' \
  -H 'cache-control: no-cache' \
  -H 'accept: application/json, text/javascript, */*; q=0.01' \
  -H 'apikey: 5a64d478-9c89-43d8-88e3-c65de9999580' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36' \
  -H 'content-type: multipart/form-data; boundary=----WebKitFormBoundaryzY7BM6NOi6cgIEnk' \
  -H 'origin: https://ocr.space' \
  -H 'sec-fetch-site: same-site' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-dest: empty' \
  -H 'referer: https://ocr.space/' \
  -H 'accept-language: en-US,en;q=0.9,de-DE;q=0.8,de;q=0.7' \
  --data-binary $'------WebKitFormBoundaryzY7BM6NOi6cgIEnk\r\nContent-Disposition: form-data; name="file"; filename="test.png"\r\nContent-Type: image/png\r\n\r\n\r\n------WebKitFormBoundaryzY7BM6NOi6cgIEnk\r\nContent-Disposition: form-data; name="url"\r\n\r\n\r\n------WebKitFormBoundaryzY7BM6NOi6cgIEnk\r\nContent-Disposition: form-data; name="language"\r\n\r\neng\r\n------WebKitFormBoundaryzY7BM6NOi6cgIEnk\r\nContent-Disposition: form-data; name="isOverlayRequired"\r\n\r\ntrue\r\n------WebKitFormBoundaryzY7BM6NOi6cgIEnk\r\nContent-Disposition: form-data; name="FileType"\r\n\r\n.Auto\r\n------WebKitFormBoundaryzY7BM6NOi6cgIEnk\r\nContent-Disposition: form-data; name="IsCreateSearchablePDF"\r\n\r\nfalse\r\n------WebKitFormBoundaryzY7BM6NOi6cgIEnk\r\nContent-Disposition: form-data; name="isSearchablePdfHideTextLayer"\r\n\r\ntrue\r\n------WebKitFormBoundaryzY7BM6NOi6cgIEnk\r\nContent-Disposition: form-data; name="detectOrientation"\r\n\r\nfalse\r\n------WebKitFormBoundaryzY7BM6NOi6cgIEnk\r\nContent-Disposition: form-data; name="isTable"\r\n\r\nfalse\r\n------WebKitFormBoundaryzY7BM6NOi6cgIEnk\r\nContent-Disposition: form-data; name="scale"\r\n\r\ntrue\r\n------WebKitFormBoundaryzY7BM6NOi6cgIEnk\r\nContent-Disposition: form-data; name="OCREngine"\r\n\r\n1\r\n------WebKitFormBoundaryzY7BM6NOi6cgIEnk\r\nContent-Disposition: form-data; name="detectCheckbox"\r\n\r\nfalse\r\n------WebKitFormBoundaryzY7BM6NOi6cgIEnk\r\nContent-Disposition: form-data; name="checkboxTemplate"\r\n\r\n0\r\n------WebKitFormBoundaryzY7BM6NOi6cgIEnk--\r\n' \
  --compressed
  """
end