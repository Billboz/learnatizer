class ConceptsController < ApplicationController
  before_action :set_concept, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate, only: [ :home]


  # GET /concepts
  # GET /concepts.json

  def home
    @tile_colors = ['lt-blue', 'red', 'purple', 'grey', 'gold', 'green', 'lt-blue', 'lt-gold', 'green', 'gold', 'blue', 'lt-gold',
                   'lt-blue', 'red', 'purple', 'grey', 'gold', 'red', 'lt-blue', 'lt-gold', 'gold', 'purple', 'grey', 'red']

    @concepts = Concept.all
  end

  def index
    @concepts = Concept.all
  end

  # GET /concepts/1
  # GET /concepts/1.json
  def show
    @tips = @concept.tips.order('created_at DESC')
    # @concept = Tip.where('concept_id = ?', 193).order('created_at desc')
    # @concept.tips = @concept.tips.group_by { |t| t.posted_at. }
    #
    #
    # @concept.tips.all
  end

  # GET /concepts/new
  def new
    @concept = Concept.new
  end

  # GET /concepts/1/edit
  def edit
  end

  # POST /concepts
  # POST /concepts.json
  def create
    @concept = Concept.new(concept_params)

    respond_to do |format|
      if @concept.save
        format.html { redirect_to @concept, notice: 'Concept was successfully created.' }
        format.json { render :show, status: :created, location: @concept }
      else
        format.html { render :new }
        format.json { render json: @concept.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /concepts/1
  # PATCH/PUT /concepts/1.json
  def update
    respond_to do |format|
      if @concept.update(concept_params)
        format.html { redirect_to @concept, notice: 'Concept was successfully updated.' }
        format.json { render :show, status: :ok, location: @concept }
      else
        format.html { render :edit }
        format.json { render json: @concept.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /concepts/1
  # DELETE /concepts/1.json
  def destroy
    @concept.destroy
    respond_to do |format|
      format.html { redirect_to concepts_url, notice: 'Concept was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_concept
      @concept = Concept.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def concept_params
      params[:concept]
    end
end
