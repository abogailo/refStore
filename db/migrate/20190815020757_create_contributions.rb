class CreateContributions < ActiveRecord::Migration[5.2]
  def change
    create_table :contributions do |t|
      t.string :name
      t.integer :user_id
      t.string :content
    end
  end
end
