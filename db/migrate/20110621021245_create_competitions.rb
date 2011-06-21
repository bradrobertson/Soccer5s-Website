class CreateCompetitions < ActiveRecord::Migration
  def self.up
    create_table :competitions do |t|
      t.string :name
      t.string :team_name
      t.string :favorite_mariner
      t.string :email
      t.string :telephone
      t.text :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :competitions
  end
end
