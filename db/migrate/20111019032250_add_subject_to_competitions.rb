class AddSubjectToCompetitions < ActiveRecord::Migration
  def self.up
    add_column :competitions, :subject, :string
  end

  def self.down
    remove_column :competitions, :subject
  end
end
