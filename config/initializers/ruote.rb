#!/usr/bin/env rub

require 'rubygems'
require 'json' # gem install json
require 'ruote'
require 'ruote-sequel' # gem install ruote-sequel
require 'commonx'
require 'logger'
require 'daemons'

#Usage:
#  bundle exec ruby ruote_worker.rb sqlite://../biz-tools/db/development.sqlite3

#Default value
# set up ruote storage
db_name = 'sqlite://../biz-tools/db/development.sqlite3'
db_name = ARGV[0] if ARGV[0]
db_name = Commonx::CommonxHelper.find_ruote_config_for('db_name')

#sequel = Sequel.connect('sqlite://../biz-tools/db/development.sqlite3')
sequel = Sequel.connect('sqlite://db/' + db_name)

#ruote_docs is hte table name
opts = { 'sequel_table_name' => 'ruote_docs' }
RUOTE_STORAGE = Ruote::Sequel::Storage.new(sequel, opts)

RUOTE.register do
  eval(Commonx::CommonxHelper.find_ruote_config_for('ruote_participant_register'))
  catchall
end

# let's join the worker thread (prevents the script from exiting)
RUOTE.join



logger = Logger.new('ruote_worker.log')
# set up ruote dashboard and run ruote worker outside of rails app
worker = Ruote::Worker.new("worker", RUOTE_STORAGE)


logger.info("Starting ruote worker...")
worker.run_in_thread()
logger.info("Started ruote worker...")
    
