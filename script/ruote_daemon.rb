#!/usr/bin/env ruby

require 'rubygems'
require 'daemons'

options = {
    :app_name   => "ruote_worker",
    :dir_mode   => :normal,
    :log_dir    => "pid",
    :dir        => 'daemon',
    :log_output => true,
    :backtrace  => true,
    :multiple   => false
}

Daemons.run(File.join(Dir.pwd, 'ruote_worker.rb'), options)
