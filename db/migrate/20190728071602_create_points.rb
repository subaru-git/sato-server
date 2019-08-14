class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.references :from, foreign_key: {to_table: :users}
      t.integer :point
      t.references :to, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
