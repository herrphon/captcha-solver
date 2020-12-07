require 'ocr'

# https://github.com/mabarroso/ocr

def ocr(file="img/captcha-test.png")
  ocr = OCR.use :onlineocr

  ocr.login ENV["OCR_WEBSERVICE_USERNAME"], ENV["OCR_WEBSERVICE_PASS"]
  
  ocr.format= :txt
  #ocr.outputencoding="utf-8"
  ocr.recognize

  puts "ERROR: #{ocr.error}" if ocr.error?
  puts "RESULT: #{ocr.text}" unless ocr.error?
end

