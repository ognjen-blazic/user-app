# README

User management application prerequisites and setup:
* System dependencies - Microsoft Windows [Version 10.0.18362.836]
* IDE - RubyMine 2020.1.1
* Ruby version - 2.6.6p146 (2020-03-31 revision 67876) [x64-mingw32]
* Rails version - 6.0.3.1
* Node.js - v12.16.3
* Yarn - v1.22.4
* Database - SQLite v3
* Database creation - `rails db:migrate`
* Run - `rails server`

Used commands during development:
* `rails new user-app`
* `rails g devise:install`
* `bundle install`
* `rails g devise:views`
* `rails g devise user`
* `rails db:migrate`
* `rails server`
* `rails generate migration migration_name column_name:column_type`
* `rails g controller ControllerName view_name`
* `rails g mailer example_mailer`
* `rails g job send_email`
* Email preview is on `http://localhost:3000/rails/mailers/user_mailer/user_deleted_mail_preview.html`
* `rails generate delayed_job:active_record`
* Run background job worker `bundle exec rake jobs:work`


