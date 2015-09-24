class CreateFighters < ActiveRecord::Migration
  def change
    create_table :fighters do |t|
      t.string :name
      t.string :nickname
      t.string :from
      t.string :age
      t.string :height
      t.string :weight
      t.string :gym
      t.string :type

      t.timestamps null: false
    end
  end
end
