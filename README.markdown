# IMPORTANT!

This forked version is primarily used for own personal use. I heavily rely on activerecord-import in quite a few projects and wanted to get it up and running with JRuby/Rails.

Caveats:
* This forked version has only been tested with JRuby 1.6.2 running with the 1.9 ruby core (1.9 is required due to bugfixes - see commit https://github.com/Agiley/activerecord-import/commit/9d997cfa150dc4f0e917bbc0adc43d5415a11dbb)
* Mysql is the only supported jdbc-adapter (I only use mysql and do not need the other adapters - but if you'll need em', fork away).
* The mysql jdbc-adapter is specifially inluded using the following (in Gemfile):
```ruby
gem 'activerecord-jdbc-adapter'
gem 'jdbc-mysql'
```
* Your database.yml have to look something like:
```yaml
development:
  adapter: jdbc
  encoding: utf8
  driver: com.mysql.jdbc.Driver
  url: jdbc:mysql://localhost:3306/database_name
  username: 
  password: 
```

NOTE: I've only tested the above and I can only verify what worked for me. I'm also a JRuby newbie so please bear that in mind if stuff isn't working properly ;).

# activerecord-import

activerecord-import is a library for bulk inserting data using ActiveRecord. 

For more information on activerecord-import please see its wiki: http://wiki.github.com/zdennis/activerecord-import/

# License

This is licensed under the ruby license. 

# Author

Zach Dennis (zach.dennis@gmail.com)

# Contributors

* Blythe Dunham
* Gabe da Silveira
* Henry Work
* James Herdman
* Marcus Crafter
* Thibaud Guillaume-Gentil
* Mark Van Holstyn 
* Victor Costan
