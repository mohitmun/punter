require "punter/version"
require "punter/punter_sqlite3"
require "punter/method_generator"
require "active_record"
require 'optparse'
require 'logger'

include MethodGenerator

module Punter
  # Your code goes here...
  $logger = Logger.new $stdout
  $logger.level = Logger::INFO
  def self.init
    options = {}
    OptionParser.new do |opt|
      opt.on('--first_name FIRSTNAME') { |o| options[:first_name] = o }
      opt.on('--log LOG_LEVEL') { |o| $logger.level = o.to_i}
    end.parse!
    filename = ARGV.pop
    $logger.debug "openinng file #{filename}"
    $logger.debug "options #{options.inspect}"
    file_type = determine_file_type(filename)
    case file_type
    when "sqlite3"
      PunterSqlite3.init(File.absolute_path(filename))
      $logger.debug "sqlite3 file detected"
    end
  end

  def  self.determine_file_type(filename)
    return "sqlite3" if filename.end_with?("db")
  end

end
