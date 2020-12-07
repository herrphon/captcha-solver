require 'httparty'
require 'net/http'
require 'tempfile'
require 'uri'

def save_to_tempfile(url)
  uri = URI.parse(url)
  Net::HTTP.start(uri.host, uri.port) do |http|
    resp = http.get(uri.path)
    # file = Tempfile.new('foo', Dir.tmpdir)
    file = File.new('foo.png', 'wb+')
    file.binmode
    file.write(resp.body)
    file.flush
    file
  end
end


def get_captcha
	result = HTTParty.get("http://online.guc-asic.com/online/login")

  re = /<img\ src="([\/a-z;A-Z0-9\.=]+)" \/>/
  body = result.body

  matcher = re.match(body)
  picture_url = matcher[1]

  result = save_to_tempfile("http://online.guc-asic.com#{picture_url}")
  puts result
end