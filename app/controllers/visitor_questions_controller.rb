class VisitorQuestionsController < ApplicationController
  before_action :set_visitor_question, only: %i[ show edit update destroy ]

  # GET /visitor_questions or /visitor_questions.json
  def index
    @visitor_questions = VisitorQuestion.all
  end

  # GET /visitor_questions/1 or /visitor_questions/1.json
  def show
  end

  # GET /visitor_questions/new
  def new
    @visitor_question = VisitorQuestion.new
  end

  # GET /visitor_questions/1/edit
  def edit
  end

  # POST /visitor_questions or /visitor_questions.json
  def create
    @visitor_question = VisitorQuestion.new(visitor_question_params)

    respond_to do |format|
      if @visitor_question.save
        format.html { redirect_to visitor_questions_path, notice: "Visitor question was successfully created." }
        format.json { render :show, status: :created, location: @visitor_question }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @visitor_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visitor_questions/1 or /visitor_questions/1.json
  def update
    respond_to do |format|
      if @visitor_question.update(visitor_question_params)
        format.html { redirect_to @visitor_question, notice: "Visitor question was successfully updated." }
        format.json { render :show, status: :ok, location: @visitor_question }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @visitor_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visitor_questions/1 or /visitor_questions/1.json
  def destroy
    @visitor_question.destroy
    respond_to do |format|
      format.html { redirect_to visitor_questions_url, notice: "Visitor question was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visitor_question
      @visitor_question = VisitorQuestion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def visitor_question_params
      params.require(:visitor_question).permit(:text)
    end
end
