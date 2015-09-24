class CreateBouts < ActiveRecord::Migration
  def change
    create_table :bouts do |t|
      t.string :opponent
      t.string :result
      t.time :bouttime
      t.date :boutdate

      t.timestamps null: false
    end
  end
end
