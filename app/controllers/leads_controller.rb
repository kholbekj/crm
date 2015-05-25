class LeadsController < ApplicationController
  def create
    run Lead::Create do |op|
      return redirect_to op.model
    end

    render action: :new
  end

  def index
    @leads = Lead.all
  end

  def new
    form Lead::Create
  end

  def update
    run Lead::Update do |op|
      return redirect_to op.model
    end

    render action: :new
  end

  def edit
    form Lead::Update

    render action: :new
  end

  def show
    @lead = Lead.find(params[:id])
  end
end
