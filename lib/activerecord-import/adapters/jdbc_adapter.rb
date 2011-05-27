require "activerecord-import/adapters/mysql_adapter"

module ActiveRecord::Import::JdbcAdapter
  module InstanceMethods
    
    def self.included(klass)
      klass.instance_eval do
        include ActiveRecord::Import::MysqlAdapter::InstanceMethods
      end
    end
    
    # Sets sql_mode to standard mode so that we can insert rows without supplying values for every column that needs a value but hasn't been supplied,
    # e.g: ActiveRecord::JDBCError: Field 'title' doesn't have a default value
    # more details: http://stackoverflow.com/questions/5887019/rails-3-dataobjectssqlerror-how-do-i-stop-these-from-producing-errors-on-w
    def set_sql_mode # :nodoc:
      execute( "SET sql_mode = '';" )
    end
    
    def get_sql_mode # :nodoc:
      execute( "SHOW VARIABLES WHERE Variable_name = 'sql_mode';" )
    end
  end
end