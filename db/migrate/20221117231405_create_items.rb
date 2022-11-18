class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :num
      t.string :desc

      t.timestamps
    end
  end
end
