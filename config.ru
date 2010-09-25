Rack::Mime::MIME_TYPES[".mobileprovision"]  = "text/plain"
Rack::Mime::MIME_TYPES[".ipa"]              = "application/octet-stream"

use Rack::Static, :urls => ["/stylesheets", "/images", "/javascripts", "/jqtouch", "/themes", "/files"], :root => "public"
run lambda { |env| [200, { 'Content-Type' => 'text/html', 'Cache-Control' => 'public, max-age=86400' }, File.open('public/index.html', File::RDONLY)] }