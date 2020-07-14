class CreateExpedients < ActiveRecord::Migration[5.2]
  def change
    create_table :expedients do |t|
      t.date :exp_date
      t.string :topic
      t.string :spu
      t.references :exp_type, foreign_key: true
      t.references :destination, foreign_key: true
      t.references :responsible, foreign_key: true

      t.timestamps
    end
  end
end
