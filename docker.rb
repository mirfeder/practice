require 'docker'
require 'prettyprint'
require 'pg'

puts Docker.default_socket_url
begin
 response = Docker::Image.build_from_dir(Dir.pwd, {'t' => 'miriam'})
 puts response.id
 test = Docker::Container.create('name' => 'miriam', 'image' => 'miriam')
 test.start
 pp test.json["State"]["Status"]
#  container = response.run({'t' => 'miriam'})
#  puts container.id
rescue Docker::Error::ConflictError => e
  
  x = JSON.parse(e.message)
  puts x["message"]
end



begin

    con = PG.connect :dbname => 'database', :user => 'data', :password => 'data', :host => 'localhost', :port => '5432'
    puts con.server_version

rescue PG::Error => e

    puts e.message 
    
ensure

    con.close if con
    
end