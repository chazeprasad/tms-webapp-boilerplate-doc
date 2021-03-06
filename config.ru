use Rack::Static,
    :urls => ['/fonts', '/assets', '/images', '/javascripts', '/stylesheets'],
    :root => 'build',
    :index => 'index.html'

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('build/index.html', File::RDONLY)
  ]
}
