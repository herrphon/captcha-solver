require_relative('captcha_getter')
require_relative('image_preparator')
require_relative('ocr_5')


img = get_captcha
puts img

bordered_img = create_bordered_img(img)
puts bordered_img

puts ocr(bordered_img)



