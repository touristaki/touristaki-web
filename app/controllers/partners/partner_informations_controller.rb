class Partners::PartnerInformationsController < ApplicationController
  before_action :load_params, only: %i[update]

  layout 'partners'

  def index
    if current_partner.partner_information.nil?
      @information = current_partner.create_partner_information({})
    else
      @information = current_partner.partner_information
    end
  end

  def edit
    @information = current_partner.partner_information
  end

  def update
    @information = current_partner.partner_information

    if @information.update(*load_params)
      redirect_to partners_partner_informations_path
    end
  end

  private

  def load_params
    params.require(:partner_information).permit(
      :full_name, :language, :country, :contact_phone,
      :cnpj, :cpf, :cep, :city, :state, :address,
      :district, :address_number
    )
  end
end
