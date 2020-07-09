class CreateResponsibles < ActiveRecord::Migration[5.2]
  def change
    create_table :responsibles do |t|
      t.string :description

      t.timestamps
    end
  end
end
