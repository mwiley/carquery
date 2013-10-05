VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures'
  c.configure_rspec_metadata!
  c.hook_into :webmock
  c.default_cassette_options = { record: :new_episodes }
  c.allow_http_connections_when_no_cassette = true
end