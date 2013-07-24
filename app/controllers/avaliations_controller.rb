#encoding: utf-8

class AvaliationsController < ApplicationController
  # GET /avaliations
  # GET /avaliations.json
  def index
    @avaliations = Avaliation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @avaliations }
    end
  end

  # GET /avaliations/1
  # GET /avaliations/1.json
  def show
    @avaliation = Avaliation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @avaliation }
    end
  end

  # GET /avaliations/new
  # GET /avaliations/new.json
  def new
    @avaliation = Avaliation.new
    @candidate = Candidate.find(params[:candidate_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @avaliation }
    end
  end

  # GET /avaliations/1/edit
  def edit
    @avaliation = Avaliation.find(params[:id])
  end

  # POST /avaliations
  # POST /avaliations.json
  def create
    #@avaliation = Avaliation.new(params[:avaliation])
    @candidate = Candidate.find(params[:candidate_id])
    @avaliation = @candidate.avaliations.create(params[:avaliation])
    
    respond_to do |format|
      if @avaliation.save
        format.html { redirect_to candidate_avaliation_path(@avaliation.candidate, @avaliation), notice: 'Avaliation was successfully created.' }
        format.json { render json: @avaliation, status: :created, location: @avaliation }
      else
        format.html { render action: "new" }
        format.json { render json: @avaliation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /avaliations/1
  # PUT /avaliations/1.json
  def update
    @avaliation = Avaliation.find(params[:id])

    respond_to do |format|
      if @avaliation.update_attributes(params[:avaliation])
        format.html { redirect_to @avaliation, notice: 'Avaliation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @avaliation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avaliations/1
  # DELETE /avaliations/1.json
  def destroy
    @avaliation = Avaliation.find(params[:id])
    @avaliation.destroy

    respond_to do |format|
      format.html { redirect_to avaliations_url }
      format.json { head :no_content }
    end
  end
end
