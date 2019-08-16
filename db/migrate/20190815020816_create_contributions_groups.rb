class CreateContributionsGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :contributions_groups do |t|
      t.integer :contribution_id
      t.integer :group_id
    end
  end
end
