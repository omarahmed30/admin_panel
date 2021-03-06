class CohortStudentsController < ApplicationController
  before_action :set_cohort_student, only: [:show, :edit, :update, :destroy]

  # GET /cohort_students
  # GET /cohort_students.json
  def index
    @cohort_students = CohortStudent.all
  end

  # GET /cohort_students/1
  # GET /cohort_students/1.json
  def show 
  end

  # GET /cohort_students/new
  def new
    @cohort_student = CohortStudent.new
  end

  # GET /cohort_students/1/edit
  def edit
  end

  # POST /cohort_students
  # POST /cohort_students.json
  def create
    @cohort_student = CohortStudent.new(cohort_student_params)

    respond_to do |format|
      if @cohort_student.save
        format.html { redirect_to @cohort_student.cohort, notice: 'Cohort student was successfully created.' }
        format.json { render :show, status: :created, location: @cohort_student }
      else
        format.html { render :new }
        format.json { render json: @cohort_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cohort_students/1
  # PATCH/PUT /cohort_students/1.json
  def update
    respond_to do |format|
      if @cohort_student.update(cohort_student_params)
        format.html { redirect_to @cohort_student, notice: 'Cohort student was successfully updated.' }
        format.json { render :show, status: :ok, location: @cohort_student }
      else
        format.html { render :edit }
        format.json { render json: @cohort_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cohort_students/1
  # DELETE /cohort_students/1.json
  def destroy
    @cohort_student.destroy
    respond_to do |format|
      format.html { redirect_to cohort_students_url, notice: 'Cohort student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cohort_student
      @cohort_student = CohortStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cohort_student_params
      params.require(:cohort_student).permit(:cohort_id, :student_id)
    end
end
