class CreateExpTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :exp_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
