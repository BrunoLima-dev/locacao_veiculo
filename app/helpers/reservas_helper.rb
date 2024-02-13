module ReservasHelper
  def pag_no_destino
    if @reserva.pagamento_no_destino
      "Sim"
    else
      "Não"
    end
  end
end
