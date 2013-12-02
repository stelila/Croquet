class Programme2013sController < InheritedResources::Base
  before_action :set_programme2013, only: [:show, :edit, :update, :destroy]
  
 
  # GET /programme2013s
  # GET /programme2013s.json
  def index
    @programme2013s = Programme2013.where("date >= ?", Date.today)
    @title = Time.now.year
  end
  
  
  # GET /programme2013s/1
  # GET /programme2013s/1.json
  def show
    
  end

  # GET /programme2013s/new
  def new
    @programme2013 = Programme2013.new
  end

  # GET /programme2013s/1/edit
  def edit
  end

  # POST /programme2013s
  # POST /programme2013s.json
  def create
    @programme2013 = Programme2013.new(programme2013_params)

    respond_to do |format|
      if @programme2013.save
        format.html { redirect_to @programme2013, notice: 'Programme2013 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @programme2013 }
      else
        format.html { render action: 'new' }
        format.json { render json: @programme2013.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programme2013s/1
  # PATCH/PUT /programme2013s/1.json
  def update
    respond_to do |format|
      if @programme2013.update(programme2013_params)
        format.html { redirect_to @programme2013, notice: 'Programme2013 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @programme2013.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programme2013s/1
  # DELETE /programme2013s/1.json
  def destroy
    @programme2013.destroy
    respond_to do |format|
      format.html { redirect_to programme2013s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programme2013
      @programme2013 = Programme2013.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def programme2013_params
      params.require(:programme2013).permit(:title, :date, :description)
    end
 
  before_filter :authenticate_admin_user!, :only => [:new, :edit, :create, :update, :destroy] 
end
