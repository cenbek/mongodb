class TeamsController < ApplicationController
  
  
  def new
	@team=Team.new
  end

  def create
	
	@team=Team.new( params[:team] )
	respond_to do |format|
		if @team.save
		#redirect_to :action => "show", :id => 5
        format.html { redirect_to @team, notice: 'Team was successfully created.' }
        format.json { render json: "new", status: :created, location: @team }
      else
        format.html { render action: "new" }
        #format.json { render json: @product.errors, status: :unprocessable_entity }
      end
		
	end

  end



  def show
	@team=Team.find(params[:id])
  
  end

  def index
    @team = Team.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @team }
    end
  end



  def edit
	 @team = Team.find(params[:id])
  end
  
  
  
  def update
    @team = Team.find(params[:id])

    respond_to do |format|
      if @team.update_attributes(params[:team])
        format.html { redirect_to @team, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end
  
  
   def destroy
    @team = Team.find(params[:id])
    @team.destroy

    respond_to do |format|
      format.html { redirect_to teams_path }
      format.json { head :no_content }
    end
  end
  
  
  
end
