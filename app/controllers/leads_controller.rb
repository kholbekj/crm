class LeadsController < ApplicationController
  def create
    run Lead::Create do |op|
      return redirect_to op.model
    end

    render action: :new
  end

  def new
    form Lead::Create
  end

  def update
  end

  def edit
  end

  def show
  end
end
