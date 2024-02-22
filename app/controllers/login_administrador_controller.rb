class LoginAdministradorController < ApplicationController
  layout 'login'
  # TODO: ajusta a verificação token quando logar
  skip_before_action :verify_authenticity_token, only: :logar # pulando a verificação de autenticidade do token
  
  def login
  end

  def logar
    administrador = Administrador.login(params[:login], params[:senha])
    if administrador.present?
      # cookies para manrter o usuário logado se fechar o navegador
      cookies[:administrador] = administrador.nome
      redirect_to administradors_path
    else
      flash[:notice] = 'login ou senha inválidos'
      redirect_to '/administrador/login'
    end
  end

  def logout
    cookies.delete(:administrador)
    redirect_to '/administrador/login'
  end
end
