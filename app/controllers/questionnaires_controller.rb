class QuestionnairesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_questionnaire, only: [:show, :edit, :update, :destroy]

  # GET /questionnaires
  # GET /questionnaires.json
  def index
    @questionnaires = current_user.questionnaires
  end

  # GET /questionnaires/1
  # GET /questionnaires/1.json
  def show
    # @evaluation = Evaluation.find(params[:id])
  end

  # GET /questionnaires/new
  def new
    @questionnaire = Questionnaire.new
  end

  # GET /questionnaires/1/edit
  def edit
  end

  # POST /questionnaires
  # POST /questionnaires.json
  def create
    @questionnaire = Questionnaire.new(questionnaire_params)
    @questionnaire.user = current_user

    respond_to do |format|
      if @questionnaire.save
        format.html { redirect_to new_evaluation_path(questionnaire_id: @questionnaire.id), notice: 'Questionnaire was successfully created.' }
        format.json { render :show, status: :created, location: @questionnaire }
      else
        format.html { render :new }
        format.json { render json: @questionnaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questionnaires/1
  # PATCH/PUT /questionnaires/1.json
  def update
    respond_to do |format|
      if @questionnaire.update(questionnaire_params)
        format.html { redirect_to @questionnaire, notice: 'Questionnaire was successfully updated.' }
        format.json { render :show, status: :ok, location: @questionnaire }
      else
        format.html { render :edit }
        format.json { render json: @questionnaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questionnaires/1
  # DELETE /questionnaires/1.json
  def destroy
    @questionnaire.destroy
    respond_to do |format|
      format.html { redirect_to questionnaires_url, notice: 'Questionnaire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionnaire
      @questionnaire = Questionnaire.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def questionnaire_params
      params.require(:questionnaire).permit(:user_id, :question1, :question2, :question3, :question4, :question5, :importance1, :importance2, :importance3, :importance4, :importance5)
    end
end
