require "punter/version"
require "punter/punter_sqlite3"
require "punter/method_generator"
require "active_record"
require 'optparse'
include MethodGenerator
module Punter
  # Your code goes here...
  def self.init
    options = {}
    OptionParser.new do |opt|
      opt.on('--first_name FIRSTNAME') { |o| options[:first_name] = o }
    end.parse!
    filename = ARGV.pop
    file = ARGV[0]
    puts "openinng file #{file}"
    puts "options #{options.inspect}"
    file_type = determine_file_type(filename)
    case file_type
    when "sqlite3"
      PunterSqlite3.init(File.absolute_path(filename))
      puts "sqlite3 file detected"
    end
  end

  def  self.determine_file_type(filename)
    return "sqlite3" if filename.end_with?("db")
  end

end
