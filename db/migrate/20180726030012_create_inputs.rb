class CreateInputs < ActiveRecord::Migration[5.2]
  def change
    create_table :inputs do |t|
      t.string :input1
      t.string :input2
      t.integer :result


      t.timestamps
    end
  end
end
