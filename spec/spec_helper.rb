Dir['./spec/support/**/*.rb'].sort.each do |f|
  puts "requiring #{f.inspect}"
  require f
end

RSpec.configure do |config|
  config.pattern = '**{,/*/**}/*-spec.rb'
end
