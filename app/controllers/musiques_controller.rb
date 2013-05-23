class MusiquesController < ApplicationController
  # GET /musiques
  # GET /musiques.json
  def index
    @musiques = Musique.paginate(:page => params[:page], :per_page=>2)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @musiques }
    end
  end

  # GET /musiques/1
  # GET /musiques/1.json
  def show
    @musique = Musique.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @musique }
    end
  end

  # GET /musiques/new
  # GET /musiques/new.json
  def new
    @musique = Musique.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @musique }
    end
  end

  # GET /musiques/1/edit
  def edit
    @musique = Musique.find(params[:id])
  end

  # POST /musiques
  # POST /musiques.json
  def create
    @musique = Musique.new(params[:musique])

    respond_to do |format|
      if @musique.save
        format.html { redirect_to @musique, notice: 'Musique was successfully created.' }
        format.json { render json: @musique, status: :created, location: @musique }
      else
        format.html { render action: "new" }
        format.json { render json: @musique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /musiques/1
  # PUT /musiques/1.json
  def update
    @musique = Musique.find(params[:id])

    respond_to do |format|
      if @musique.update_attributes(params[:musique])
        format.html { redirect_to @musique, notice: 'Musique was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @musique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musiques/1
  # DELETE /musiques/1.json
  def destroy
    @musique = Musique.find(params[:id])
    @musique.destroy

    respond_to do |format|
      format.html { redirect_to musiques_url }
      format.json { head :no_content }
    end
  end
end
