class RegistersController < ApplicationController
  # before_action 

  def index
    if !params[:user].blank?
      @registers = Register.by_user(params[:user])
    elsif params[:user_id]
      @registers = User.find(params[:user_id]).registers
    else
      @registers = Register.all
    end
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
  end

  def update
    set_register
    if @register.update(register_params)
      redirect_to register_path(@register)
    else
      render :edit
    end
  end

  def destroy
    set_register
    @register.destroy
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
      params.require(:register).permit(:name, :age, :gender, :email, :phone, :handicap_category)
    end
end
