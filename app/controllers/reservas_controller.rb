class ReservasController < AdministradorsController
  before_action :set_reserva, only: %i[ show edit update destroy ]

  # GET /reservas or /reservas.json
  def index
    @reservas = Reserva.all
  end

  # GET /reservas/1 or /reservas/1.json
  def show
  end

  # GET /reservas/new
  def new
    @reserva = Reserva.new
    @veiculo = Veiculo.all
    @cliente = Cliente.all
  end

  # GET /reservas/1/edit
  def edit
    @veiculo = Veiculo.all
    @cliente = Cliente.all
  end

  # POST /reservas or /reservas.json
  def create
    @reserva = Reserva.new(reserva_params)
    @veiculo = Veiculo.all
    @cliente = Cliente.all

    respond_to do |format|
      if @reserva.save
        format.html { redirect_to reserva_url(@reserva), notice: "Reserva was successfully created." }
        format.json { render :show, status: :created, location: @reserva }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservas/1 or /reservas/1.json
  def update
    respond_to do |format|
      if @reserva.update(reserva_params)
        format.html { redirect_to reserva_url(@reserva), notice: "Reserva was successfully updated." }
        format.json { render :show, status: :ok, location: @reserva }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservas/1 or /reservas/1.json
  def destroy
    @reserva.destroy

    respond_to do |format|
      format.html { redirect_to reservas_url, notice: "Reserva was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_reserva
    @reserva = Reserva.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def reserva_params
    params.require(:reserva).permit(:veiculo_id, :cliente_id, :tempo_de_espera, :valor_alugado, :reservado_de, :reservado_ate, :pagamento_no_destino)
  end
end
