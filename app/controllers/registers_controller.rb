class RegistersController < ApplicationController
  before_action :require_login

  def index
    if !params[:user].blank?
      @registers = Register.by_user(params[:user])
    elsif params[:user_id]
      @registers = User.find(params[:user_id]).registers
    else
      @registers = Register.all
    end
  end

  def search
    @registers = Register.search_by_age(params[:age])
    @registers = Register.order_by_age if @registers == []

    render :index
  end
  
  def show
    set_register
  end

  def new
    @register = Register.new
  end

  def create
    # @register = Register.new(register_params)
    #   if @register.save
    #   redirect_to register_path(@register)
    # else
    #   render :new
    # end
    @register = current_user.registers.build(register_params)
    
    if @register.save
      redirect_to register_path(@register)
    else
      @register.build_tournament unless @register.tournament
      render :new
    end
  end


  def edit
    set_register
    if @register.user != current_user
      redirect_to registers_path
    end
  end

  def update
    set_register
    if @register.user == current_user
      if @register.update(register_params) 
        redirect_to register_path(@register)
      else
        render :edit
      end
    else
      redirect_to registers_path
    end
    
  end

  def destroy
    set_register
    if @register.user == current_user
       @register.destroy
    end
       redirect_to registers_path
  end

  private
    def set_register
      @register = Register.find_by(id: params[:id])
      if !@register
        redirect_to registers_path
      end
    end

    def register_params
      params.require(:register).permit(:name, :age, :gender, :email, :phone, :handicap_category, :tournament_id)
    end
end
