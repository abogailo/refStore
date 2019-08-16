class CreateContributions < ActiveRecord::Migration[5.2]
  def change
    create_table :contributions do |t|
      t.string :name
      t.string :content
      t.integer :user_id
    end
  end
end
