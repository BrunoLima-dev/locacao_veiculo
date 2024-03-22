class EstadosController < AdministradorsController
  # GET /estados or /estados.json
  def index
    estados = [
      { id: 1, nome: 'Acre',     uf: 'AC' },
      { id: 2, nome: 'Alagoas',  uf: 'AL' },
      { id: 3, nome: 'Amapá',    uf: 'AP' },
      { id: 4, nome: 'Amazonas', uf: 'AM' },
      { id: 5, nome: 'Bahia',    uf: 'BA' },
      { id: 6, nome: 'Ceará',    uf: 'CE' }
    ]

    if params[:uf].present?
      estados = estados.select { |estado| estado[:uf].downcase == params[:uf].downcase}
    end

    render json: estados, status: 200
  end

  def lista_cidades
    cidades = [
      { id: 1, nome: 'Rio Branco', uf: 'AC' },
      { id: 2, nome: 'Maceió',     uf: 'AL' },
      { id: 3, nome: 'Macapá',     uf: 'AP' },
      { id: 4, nome: 'Manaus',     uf: 'AM' },
      { id: 5, nome: 'Salvador',   uf: 'BA' },
      { id: 6, nome: 'Fortaleza',  uf: 'CE' }
    ]

    if params[:uf].present?
      cidades = cidades.select { |cidade| cidade[:uf].downcase == params[:uf].downcase}
    end

    render json: cidades, status: 200
  end
end
