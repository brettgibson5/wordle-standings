class PeopleController < ApplicationController
  before_action :set_person, only: %i[ show edit update destroy ]

  # GET /people or /people.json
  def index
    @people = Person.order("average ASC")
  end

  # GET /people/1 or /people/1.json
  def show
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people or /people.json
  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to people_url, notice: "Person was successfully created." }
        format.json { render :index, status: :created, location: @person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/1 or /people/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to people_url, notice: "Person was successfully updated." }
        format.json { render :index, status: :ok }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  def quick_edit
    @people = Person.all
    @options = [
      {:name => '1', :value => :row1},
      {:name => '2', :value => :row2},
      {:name => '3', :value => :row3},
      {:name => '4', :value => :row4},
      {:name => '5', :value => :row5},
      {:name => '6', :value => :row6},
      {:name => 'Fail', :value => :rowFail},
    ]
  end

  def add_one
    puts params[:data].to_json
    params.require(:data).permit(:person_id, :row1, :row2, :row3, :row4, :row5, :row6, :rowFail)
    @person = Person.find(params[:data][:person_id])
    row = params[:data][:row_id]
    sum = @person[row].to_int + 1
    respond_to do |format|
      if @person.update_attribute(row, sum)
          format.html { redirect_to people_url, notice: "Person was successfully updated." }
          format.json { render json, status: :ok }
      else
        format.html { render :index, status: :unprocessable_entity }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end

  end

  # DELETE /people/1 or /people/1.json
  def destroy
    @person.destroy

    respond_to do |format|
      format.html { redirect_to people_url, notice: "Person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_params
      params.require(:person).permit(:name, :row1, :row2, :row3, :row4, :row5, :row6, :rowFail)
    end
end
