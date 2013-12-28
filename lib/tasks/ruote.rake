require 'rubygems'
require 'json' # gem install json
require 'ruote'
require 'ruote-sequel' # gem install ruote-sequel
require 'commonx'
require 'logger'
require 'daemons'

require 'rake'

desc "Run a ruote-kit worker"
task :ruote_worker  => :environment do
        #set up ruote storage
        db_name = Commonx::CommonxHelper.find_ruote_config_for('db_name')
        #sequel = Sequel.connect('sqlite://../biz-tools/db/development.sqlite3')
        sequel = Sequel.connect('sqlite://db/' + db_name)

        #ruote_docs is hte table name
        opts = { 'sequel_table_name' => 'ruote_docs' }
        RUOTE_STORAGE = Ruote::Sequel::Storage.new(sequel, opts)
        RUOTE = Ruote::Dashboard.new(Ruote::Worker.new(RUOTE_STORAGE))
        RUOTE.register do
          eval(Commonx::CommonxHelper.find_ruote_config_for('ruote_participant_register'))
          catchall
        end

        # let's join the worker thread (prevents the script from exiting)
        RUOTE.join
end
