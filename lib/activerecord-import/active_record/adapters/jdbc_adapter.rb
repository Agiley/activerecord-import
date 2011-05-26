require 'activerecord-jdbc-adapter'
require "activerecord-import/adapters/mysql_adapter"

class ActiveRecord::ConnectionAdapters::JdbcAdapter
  include ActiveRecord::Import::MysqlAdapter::InstanceMethods
end