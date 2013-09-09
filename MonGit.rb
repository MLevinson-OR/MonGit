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
  :client_id     => auth['client_id'],
  :client_secret => auth['clent_secret']

user = client.user 'mlevinson-or'
pp user 
