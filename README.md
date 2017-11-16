# README
Documentation is like sex, something is better that nothing...

This is a test for PeopleOne

* Ruby version 2.2.3pk173, rails 5.1.4

* Clone the repository, create DB and run migrations.
  - bundle exec rake db:create
  - bundle exec rake db:migrate

* Database PosgreSQL
  There is a file with a db dump called peopleone-test
  run ->

  pg_restore --verbose --clean --no-acl --no-owner -h localhost -U <YOUR-USER> -d catalogues_dev peopleone-test

