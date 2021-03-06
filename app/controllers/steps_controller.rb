
class StepsController < ApplicationController
  load_and_authorize_resource

  # Retirado o método index, que será substituído pela view selections#show

  # GET /steps/1
  # GET /steps/1.json
  def show
    @step = Step.find(params[:id])

    page_title step_name: @step.title 

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @step }
    end
  end

  # GET /steps/new
  # GET /steps/new.json
  def new
    @step = Step.new
    @selection = Selection.find(params[:selection_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @step }
    end
  end

  # GET /steps/1/edit
  def edit
    @step = Step.find(params[:id])
    @selection = @step.selection

    page_title step_name: @step.title
  end

  # POST /steps
  # POST /steps.json
  def create
    @selection = Selection.find(params[:selection_id])
    @step = @selection.steps.new(params[:step])

    respond_to do |format|
      if @step.save
        format.html { redirect_to selection_step_path(@step.selection, @step), notice: 'Step was successfully created.' }
        format.json { render json: @step, status: :created, location: @step }
      else
        format.html { render action: "new" }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /steps/1
  # PUT /steps/1.json
  def update
    @step = Step.find(params[:id])

    respond_to do |format|
      if @step.update_attributes(params[:step])
        format.html { redirect_to selection_step_path, notice: 'Step was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steps/1
  # DELETE /steps/1.json
  def destroy    
    @step = Step.find(params[:id])
    @step.destroy

    respond_to do |format|
      format.html { redirect_to selection_path(params[:selection_id]) }
      format.json { head :no_content }
    end
  end
end