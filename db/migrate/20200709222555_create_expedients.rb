class CreateExpedients < ActiveRecord::Migration[5.2]
  def change
    create_table :expedients do |t|
      t.string :topic
      t.string :spu
      t.references :exp_types, foreign_key: true
      t.references :destinations, foreign_key: true
      t.references :responsibles, foreign_key: true

      t.timestamps
    end
  end
end
