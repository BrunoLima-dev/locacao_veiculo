class CreateMarcas < ActiveRecord::Migration[5.2]
  def change
    create_table :marcas do |t|
      t.string :nome
      t.references :veiculo, foreign_key: true

      t.timestamps
    end
  end
end
