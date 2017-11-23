require 'dredd_hooks/methods'
include DreddHooks::Methods

before "/Pet/1.0.1/pets > POST > 400 > application/vnd.api+json" do |transaction|
  puts 'Test Response 400'

  transaction['skip'] = false
  # transaction['request']['headers']['Test-400'] = 'Y'
  transaction['request']['body'] = "TEST BODY"
end

before "/Pet/1.0.1/pets > POST > 201 > application/vnd.api+json" do |transaction|
  puts 'Test Response 201'
  transaction['skip'] = false
end


