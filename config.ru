use Rack::Static, 
:urls => ["/pizza.css", "/index.html", "/pizza.js", "/jquery-2.1.4.js"]

run lambda { |env| 
	[
		200,
		{
			'Content-Type' => 'text/html',
			'Cache-Content' => 'public, max-age=b6400'
		},
		File.open('index.html', File::RDONLY)
	]

}