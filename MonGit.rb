#!/usr/bin/env ruby

require './ginclude'

host=  'localhost'
port =  27017
username =  'MONGO_USERNAME'
password =  'MONGO_PASSWORD'

=begin
MongoMapper.connection = Mongo::Connection.new(host, port)
MongoMapper.database = 'admin'
MongoMapper.database.authenticate(username,password)
MongoMapper.database = 'mongit'
=end

=begin
gitauth.yml should contain
client_id: your_apps_client_id
client_secret: your_apps_client_secret
=end

auth = YAML.load_file File.dirname(__FILE__) + '/gitauth.yml'

client = Octokit::Client.new \
  :client_id     => "<your 20 char id>",
  :client_secret => "<your 40 char secret>"

user = client.user 'put_your_username_here_to_test'
pp user 
