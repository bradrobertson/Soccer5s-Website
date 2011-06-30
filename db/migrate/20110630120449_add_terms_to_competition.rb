class AddTermsToCompetition < ActiveRecord::Migration
  def self.up
    add_column :competitions, :terms, :boolean
  end

  def self.down
    remove_column :competitions, :terms
  end
end
