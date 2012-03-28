class CreateTaps < ActiveRecord::Migration
  def self.up
    create_table :taps do |t|
      t.string :name
      t.references :group
      t.datetime :start
      t.datetime :end
      t.decimal :spd
      t.timestamps
    end
  end

  def self.down
    drop_table :taps
  end
end
