class CreateRepeats < ActiveRecord::Migration
  def change
    create_table :repeats do |t|
      t.integer :type
      t.integer :user_id
      t.string :avatar

      t.timestamps null: false
    end
  end
end
