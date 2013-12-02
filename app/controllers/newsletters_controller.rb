class NewslettersController < InheritedResources::Base
   before_action :set_newsletter, only: [:show, :edit, :update, :destroy]

  # GET /newsletters
  # GET /newsletters.json
  def index
  
    @newsletters = Newsletter.find(:all, :group => 'year')
      
   # @newsletters = Newsletter.find(:all, :order => "year")
   # @newsletters_years = @newsletters.group_by { |years| }
  end

  # GET /newsletters/1
  # GET /newsletters/1.json
  def show
   
  #  @newsletters = Newsletter.find(params[:id])
 #   send_data @newsletters.file.read, filename: @newsletters.name
  #  send_file @newsletters.file.read, :type => 'application/pdf', :filename => @newsletters.name

  end
  

  
  

  # GET /newsletters/new
  def new
    @newsletter = Newsletter.new
  end

  # GET /newsletters/1/edit
  def edit
  end

  # POST /newsletters
  # POST /newsletters.json
  def create
    
    @newsletter = Newsletter.new(newsletter_params)

    respond_to do |format|
      if @newsletter.save
        format.html { redirect_to @newsletter, notice: 'Newsletter was successfully created.' }
        format.json { render action: 'show', status: :created, location: @newsletter }
      else
        format.html { render action: 'new' }
        format.json { render json: @newsletter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newsletters/1
  # PATCH/PUT /newsletters/1.json
  def update
    respond_to do |format|
      if @newsletter.update(newsletter_params)
        format.html { redirect_to @newsletter, notice: 'Newsletter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @newsletter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newsletters/1
  # DELETE /newsletters/1.json
  def destroy
    @newsletter.destroy
    respond_to do |format|
      format.html { redirect_to newsletters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newsletter
      @newsletter = Newsletter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newsletter_params
      params.require(:newsletter).permit(:name, :file, :year)
    end
  before_filter :authenticate_admin_user!, :only => [:new, :edit, :create, :update, :destroy] 
end
