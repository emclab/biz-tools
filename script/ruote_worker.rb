


require 'rubygems'
require 'rails'
require 'json' # gem install json
require 'ruote'
require 'ruote-sequel' # gem install ruote-sequel
require 'commonx'
require 'logger'
require 'daemons'

Dir.chdir(File.join(File.dirname(__FILE__), './..'))
require File.expand_path("../config/environment", File.dirname(__FILE__))

logger = Logger.new(File.join(File.dirname(__FILE__), 'daemon','ruote_log'))

#set up ruote storage
db_name = Commonx::CommonxHelper.find_ruote_config_for('db_name')
sequel = Sequel.connect('sqlite://db/' + db_name)

#ruote_docs is hte table name
opts = { 'sequel_table_name' => 'ruote_docs' }
RUOTE_STORAGE = Ruote::Sequel::Storage.new(sequel, opts)
RUOTE = Ruote::Dashboard.new(Ruote::Worker.new(RUOTE_STORAGE))
RUOTE.register do
	eval(Commonx::CommonxHelper.find_ruote_config_for('ruote_participant_register'))
          catchall
end
logger.info('Started Ruote and worker...')
# let's join the worker thread (prevents the script from exiting)
RUOTE.join

