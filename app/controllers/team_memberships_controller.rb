class TeamMembershipsController < ApplicationController
  # GET /team_memberships
  # GET /team_memberships.json
  def index
    @team_memberships = TeamMembership.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @team_memberships }
    end
  end

  # GET /team_memberships/1
  # GET /team_memberships/1.json
  def show
    @team_membership = TeamMembership.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @team_membership }
    end
  end

  # GET /team_memberships/new
  # GET /team_memberships/new.json
  def new
    @team_membership = TeamMembership.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @team_membership }
    end
  end

  # GET /team_memberships/1/edit
  def edit
    @team_membership = TeamMembership.find(params[:id])
  end

  # POST /team_memberships
  # POST /team_memberships.json
  def create
    @team_membership = TeamMembership.new(params[:team_membership])

    respond_to do |format|
      if @team_membership.save
        format.html { redirect_to @team_membership, notice: 'Team membership was successfully created.' }
        format.json { render json: @team_membership, status: :created, location: @team_membership }
      else
        format.html { render action: "new" }
        format.json { render json: @team_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /team_memberships/1
  # PUT /team_memberships/1.json
  def update
    @team_membership = TeamMembership.find(params[:id])

    respond_to do |format|
      if @team_membership.update_attributes(params[:team_membership])
        format.html { redirect_to @team_membership, notice: 'Team membership was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @team_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_memberships/1
  # DELETE /team_memberships/1.json
  def destroy
    @team_membership = TeamMembership.find(params[:id])
    @team_membership.destroy

    respond_to do |format|
      format.html { redirect_to team_memberships_url }
      format.json { head :no_content }
    end
  end
end
