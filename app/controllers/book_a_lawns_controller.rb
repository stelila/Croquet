class BookALawnsController < InheritedResources::Base
  include ActionController::Live
  before_action :set_book_a_lawn, only: [:show, :edit, :update, :destroy] 
  


  # GET /book_a_lawns
  # GET /book_a_lawns.json
  def index
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
    @book_a_lawns = BookALawn.all
  end

  # GET /book_a_lawns/1
  # GET /book_a_lawns/1.json
  def show
  end

  # GET /book_a_lawns/new
  def new
    @book_a_lawn = BookALawn.new
  end

  # GET /book_a_lawns/1/edit
  def edit
  end

  # POST /book_a_lawns
  # POST /book_a_lawns.json
  def create
    @book_a_lawn = BookALawn.new(book_a_lawn_params)

    respond_to do |format|
      if @book_a_lawn.save
        format.html { redirect_to @book_a_lawn, notice: 'Book a lawn was successfully created.' }
        format.json { render action: 'show', status: :created, location: @book_a_lawn }
      else
        format.html { render action: 'new' }
        format.json { render json: @book_a_lawn.errors, status: :unprocessable_entity }
      end
    end
  end
  
   def events
    response.headers["Content-Type"] = "text/event-stream"
start = Time.zone.now

     BookALawn.uncached do
      BookALawn.where('created_at > ?', start).each do |book_a_lawn|
        response.stream.write "data: #{book_a_lawn.to_json}\n\n"
        start = Time.zone.now
end
     end
  sleep 2
     
 ensure
    response.stream.close
  end
  
  

  # PATCH/PUT /book_a_lawns/1
  # PATCH/PUT /book_a_lawns/1.json
  def update
    respond_to do |format|
      if @book_a_lawn.update(book_a_lawn_params)
        format.html { redirect_to @book_a_lawn, notice: 'Book a lawn was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @book_a_lawn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_a_lawns/1
  # DELETE /book_a_lawns/1.json
  def destroy
    @book_a_lawn.destroy
    respond_to do |format|
      format.html { redirect_to book_a_lawns_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_a_lawn
      @book_a_lawn = BookALawn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_a_lawn_params
      params.require(:book_a_lawn).permit(:title, :description, :date)
    end
  
end
