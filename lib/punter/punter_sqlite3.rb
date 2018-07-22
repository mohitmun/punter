require 'active_record'
require 'punter/method_generator'
module PunterSqlite3

  def self.init(absolute_filepath)
    ActiveRecord::Base.establish_connection(
      :adapter => "sqlite3",
      :database  => absolute_filepath
    ) 
    generate_models
  end

  def self.generate_models
    tables = ActiveRecord::Base.connection.tables
    puts "tables found: #{tables}"
    tables.each do |table_name|
      puts "generating model for #{table_name}"
      variable = table_name.titleize.gsub(" ", "")
      klass = Class.new(ActiveRecord::Base)
      # ...maybe evaluate some code in the context of the new, anonymous class

      ## ...or define some methods
      #klass.send(:attribute, :name, String)
      # Finally, name that class!
      klass.send(:table_name=, table_name)
      MethodGenerator.add_method(table_name){return klass}
      ActiveRecord::Base.send(:const_set, variable, klass)
    end
    MethodGenerator.add_method("show_tables"){return tables}
  end

end
