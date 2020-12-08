require 'json'


def ocr(file="img/test.png")
  # https://ocr.space/ocrapi

  result = `curl --silent  \
  -H 'accept: application/json, */*' \
  -H "apikey: #{ENV['OCR_API_KEY']}" \
  -F "file=@#{file}" \
  'https://api8.ocr.space/parse/image'
  `
  res = JSON.parse(result)
  parsed_results = res["ParsedResults"].first
  
  parsed_results["ParsedText"].chomp
end

