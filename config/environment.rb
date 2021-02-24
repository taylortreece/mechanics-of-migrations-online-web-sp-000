require 'rake'
require 'active_record'
require 'yaml/store'
require 'ostruct'
require 'date'


require 'bundler/setup'
Bundler.require

task :environment do
    require_relative './environment'
  end

task :console => :environment do
    Pry.start
end



# put the code to connect to the database here
ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/artists.sqlite"
)
require_relative "../artist.rb"
