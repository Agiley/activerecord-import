require 'activerecord-jdbc-adapter'
require "activerecord-import/adapters/jdbc_adapter"

class ActiveRecord::ConnectionAdapters::JdbcAdapter
  include ActiveRecord::Import::JdbcAdapter::InstanceMethods
end