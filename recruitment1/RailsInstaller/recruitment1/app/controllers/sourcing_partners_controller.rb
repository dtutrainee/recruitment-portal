class SourcingPartnersController < ApplicationController
  # GET /sourcing_partners
  # GET /sourcing_partners.json
  def index
    @sourcing_partners = SourcingPartner.search(params[:name])

if !session[:logged_in]
  redirect_to :controller => 'login3', 
              :action => 'login_page' 
  return
end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sourcing_partners }
    end
  end

  # GET /sourcing_partners/1
  # GET /sourcing_partners/1.json
  def show
    @sourcing_partner = SourcingPartner.find(params[:id])

if !session[:logged_in]
  redirect_to :controller => 'login3', 
              :action => 'login_page' 
  return
end
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sourcing_partner }
    end
  end

  # GET /sourcing_partners/new
  # GET /sourcing_partners/new.json
  def new
    @sourcing_partner = SourcingPartner.new

   if !session[:logged_in]
  redirect_to :controller => 'login3', 
              :action => 'login_page' 
  return
end
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sourcing_partner }
    end
  end

  # GET /sourcing_partners/1/edit
  def edit
    @sourcing_partner = SourcingPartner.find(params[:id])
  if !session[:logged_in]
  redirect_to :controller => 'login3', 
              :action => 'login_page' 
  return
end
  end

  # POST /sourcing_partners
  # POST /sourcing_partners.json
  def create
    @sourcing_partner = SourcingPartner.new(params[:sourcing_partner])

    respond_to do |format|
      if @sourcing_partner.save
        format.html { redirect_to @sourcing_partner, notice: 'Sourcing partner was successfully created.' }
        format.json { render json: @sourcing_partner, status: :created, location: @sourcing_partner }
      else
        format.html { render action: "new" }
        format.json { render json: @sourcing_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sourcing_partners/1
  # PUT /sourcing_partners/1.json
  def update
    @sourcing_partner = SourcingPartner.find(params[:id])

    respond_to do |format|
      if @sourcing_partner.update_attributes(params[:sourcing_partner])
        format.html { redirect_to @sourcing_partner, notice: 'Sourcing partner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sourcing_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sourcing_partners/1
  # DELETE /sourcing_partners/1.json
  def destroy
    @sourcing_partner = SourcingPartner.find(params[:id])
    @sourcing_partner.destroy
if !session[:logged_in]
  redirect_to :controller => 'login3', 
              :action => 'login_page' 
  return
end
    respond_to do |format|
      format.html { redirect_to sourcing_partners_url }
      format.json { head :no_content }
    end
  end
end
