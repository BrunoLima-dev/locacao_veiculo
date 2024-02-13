class LoginAdministradorController < AdministradorsController
  def signin
  end

  def logar
    administrador = Administrador.find_by.login(params[:login], params[:senha])
    if administrador.present?
      cookies[:administrador] = administrador.nome
      redirect_to administradors_path
    else
      flash[:notice] = 'login ou senha inválidos'
      redirect_to login_administrador_signin_path
    end
  end
end
