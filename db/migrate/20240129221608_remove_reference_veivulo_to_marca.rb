class RemoveReferenceVeivuloToMarca < ActiveRecord::Migration[5.2]
  def change
    remove_reference :marcas, :veiculo, foreign_key: true
  end
end
