Dir['./spec/support/**/*.rb'].sort.each do |f|
  puts "requiring #{f.inspect}"
  require f
end

RSpec.configure do |config|
  config.pattern = '**{,/*/**}/*-spec.rb'
end

if ENV['TEST_WITH_BROWSER']
  Capybara.default_driver = :selenium
else
  require 'capybara/poltergeist'
  Capybara.javascript_driver = :poltergeist
end
