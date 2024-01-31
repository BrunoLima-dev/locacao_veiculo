class AddMarcaToVeiculo < ActiveRecord::Migration[5.2]
  def change
    add_reference :veiculos, :marca, foreign_key: true
  end
end
