class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.date :data_de_nascimento
      t.string :codigo
      t.decimal :peso, precision:4, scale:2
      t.decimal :altura, precision:4, scale:2
      t.boolean :hipertensao
      t.boolean :diabetes
      t.boolean :colesterol
      t.string :status

      t.timestamps
    end
  end
end
