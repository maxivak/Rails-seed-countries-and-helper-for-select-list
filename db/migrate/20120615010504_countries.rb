class Countries < ActiveRecord::Migration
  def up
    create_table :countries do |t|
    t.column :iso, :string, :size => 2
    t.column :name, :string, :size => 80

    end

    create_table :states do |t|
      t.column :name, :string, :size => 80
      t.column :country_id, :integer
      t.column :iso, :string, :size=>2

    end

  end

  def down
    drop_table :countries
    drop_table :states
  end
end
