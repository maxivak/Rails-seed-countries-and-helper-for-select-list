class LoadCountries < ActiveRecord::Migration
  def up

    # load
    require File.expand_path('../../seed/state_country_seeds.rb', __FILE__)

  end

  def down
    Country.delete_all
    State.delete_all
  end
end
