class PeopleController < ApplicationController
  before_action :set_person, only: %i[ show edit update destroy ]

  add_breadcrumb 'Requerente', :people_path, filter_options: { class: 'inline-flex items-center text-sm font-medium text-gray-700 hover:text-gray-900 dark:text-gray-400 dark:hover:text-white' }


  # GET /people or /people.json
  def index
    if params[:query].present?
      key = "%#{params[:query]}%"
      columns = %w{name document email}

      @people = Person.where(
        columns
        .map {|c| "#{c} like :search" }
        .join(' OR '),
        search: key
      ).order(name: :asc)
    else
      @people = Person.all.order(name: :asc)
    end

    respond_to do |format|
      if turbo_frame_request? && turbo_frame_request_id = 'searh_people'
        format.html { render partial: 'people_table', locals: { people: @people } }
      else
        format.html
      end
    end
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
    @person.user_id = set_user

    respond_to do |format|
      if @person.save
        format.html { redirect_to person_url(@person), notice: "Person was successfully created." }
        format.json { render :show, status: :created, location: @person }
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
        format.html { redirect_to person_url(@person), notice: "Person was successfully updated." }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit, status: :unprocessable_entity }
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

    def set_user
      current_user.id
    end

    # Only allow a list of trusted parameters through.
    def person_params
      params.require(:person).permit(
        :name, :kind_document, :document, :email, :street, :number,
        :neighborhood, :complement, :city, :state, :postcode, :user_id
      )
    end
end
