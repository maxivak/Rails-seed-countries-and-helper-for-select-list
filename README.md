Rails-seed-countries-and-helper-for-select-list
===============================================

helper for html select list with countries

The solution presented here:

- The countries are stored in a table in database.

- Helper to show a list of countries in select tag in HTML


Installation
=================


- models

download and save files /models/*
country.rb
state.rb


- seed data

download and save file /db/seed/state_country_seeds.rb

- migrations

create your migrations to create and load tables for countries and states

rails g migration CreateCountries
rails g migration LoadCountries

use code from /db/migrate/


- add column to your model to store country

rails g migration AddCountryToUsers

see an example in the file /db/XXX_add_country_to_users.rb

- update db

rake db:migrate


- helpers

download and save file /helpers/user_form_helper.rb


- use country_code_select helper in a view file to create a select tag with a list of countries

examples,

select tag with countries

        = country_code_select(:user, :country_id,
                  nil,
                  {:selected=>@user.country_id, :include_blank=>false},
                  {:style=>''}
                  )


select tag with countries with USA and Great Britain at the top of the list

        = country_code_select(:user, :country_id,
                  priority_countries=['US','GB'],
                  {:selected=>@user.country_id, :include_blank=>false},
                  {:style=>''}
                  )





