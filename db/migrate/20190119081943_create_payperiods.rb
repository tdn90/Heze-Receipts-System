class CreatePayperiods < ActiveRecord::Migration[5.2]
  def change
    create_table :payperiods do |t|
      t.datetime :start,  null: false
      t.datetime :end,  null: false
      t.text :resultJson, null: false 
      t.boolean :boolean, null: false
      t.references :group, index: true, null: false, foreign_key: true      
    end
  end
end
