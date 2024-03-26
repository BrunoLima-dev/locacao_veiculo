class EstadosController < AdministradorsController
  before_action :cross_domain, only: [:index, :lista_cidades]
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

  # def proxy
  #   require 'rest-client'
  #   estados = RestClient.get('http://localhost:3000/estados.json')
  #   render json: estados.body, status: 200
  # end

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

  private

  def cross_domain
    # Permite que a API seja acessada por qualquer domínio
    headers['Access-Control-Allow-Origin'] = '*'
    # Permite que a API seja acessada so pelo o verbo GET
    headers['Access-Control-Allow-Methods'] = 'GET'
    # Libero todos os metodos
    headers['Access-Control-Request-Method'] = "*"
    # Libero alguns os headers
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept'
  end
end
