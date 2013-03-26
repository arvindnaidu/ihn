class CreateHostelTypes < ActiveRecord::Migration
  def self.up
    create_table :hostel_types do |t|
      t.string :name, :limit => 96
      t.string :code, :limit => 16
      t.string :permalink, :limit => 96

      t.timestamps
    end
    HostelType.create([
	{:name => "Boys AC Hostel Non-sharing", :code => "B-AC-NS", :permalink => "boys_ac_non_sharing"},
	{:name => "Boys AC Hostel Sharing", :code => "B-AC-S", :permalink => "boys_ac_sharing"},
	{:name => "Boys AC Hostel Sharing/Non-sharing", :code => "B-AC-SAN", :permalink => "boys_ac_sharing_and_non_sharing"},
	{:name => "Boys Non-AC Hostel Non-sharing", :code => "B-NAC-NS", :permalink => "boys_nac_non_sharing"},
	{:name => "Boys Non-AC Hostel Sharing", :code => "B-NAC-S", :permalink => "boys_nac_sharing"},
	{:name => "Boys Non-AC Hostel Sharing/Non-sharing", :code => "B-NAC-SAN", :permalink => "boys_nac_sharing_and_non_sharing"},
	{:name => "Girls AC Hostel Non-sharing", :code => "G-AC-NS", :permalink => "girls_ac_non_sharing"},
	{:name => "Girls AC Hostel Sharing", :code => "G-AC-S", :permalink => "girls_ac_sharing"},
	{:name => "Girls AC Hostel Sharing/Non-sharing", :code => "G-AC-SAN", :permalink => "girls_ac_sharing_and_non_sharing"},
	{:name => "Girls Non-AC Hostel Non-sharing", :code => "G-NAC-NS", :permalink => "girls_nac_non_sharing"},
	{:name => "Girls Non-AC Hostel Sharing", :code => "G-NAC-S", :permalink => "girls_nac_sharing"},
	{:name => "Girls Non-AC Hostel Sharing/Non-sharing", :code => "G-NAC-SAN", :permalink => "girls_nac_sharing_and_non_sharing"},
	{:name => "Boys & Girls AC Hostel Non-sharing", :code => "BG-AC-NS", :permalink => "boys_and_girls_ac_non_sharing"},
	{:name => "Boys & Girls AC Hostel Sharing", :code => "BG-AC-S", :permalink => "boys_and_girls_ac_sharing"},
	{:name => "Boys & Girls AC Hostel Sharing/Non-sharing", :code => "BG-AC-SAN", :permalink => "boys_and_girls_ac_sharing_and_non_sharing"},
	{:name => "Boys & Girls Non-AC Hostel Non-sharing", :code => "BG-NAC-NS", :permalink => "boys_and_girls_nac_non_sharing"},
	{:name => "Boys & Girls Non-AC Hostel Sharing", :code => "BG-NAC-S", :permalink => "boys_and_girls_nac_sharing"},
	{:name => "Boys & Girls Non-AC Hostel Sharing/Non-sharing", :code => "BG-NAC-SAN", :permalink => "boys_and_girls_nac_sharing_and_non_sharing"}
    ])
  end

  def self.down
    drop_table :hostel_types
  end
end
