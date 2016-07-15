class AddPhoneNumberToAmbassadors < ActiveRecord::Migration
  def self.up
    add_column :ambassadors, :mobile, :string
  end

  def self.down
    remove_column :ambassadors, :mobile
  end
end
