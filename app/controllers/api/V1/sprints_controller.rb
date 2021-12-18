class Api::V1::SprintsController < ApplicationController
  def index
    sprints = Sprint.all
    render json: sprints, status: :ok
  end

  def create
    sprint = Sprint.new(sprint_params)

    if sprint.save
      render json: sprint, status: :ok
    else
      render json: { error: 'Error creating sprint' }
    end
  end

  def update
    sprint = Sprint.find(params[:id])

    if sprint.update(sprint_params)
      render json: sprint, status: :ok
    else
      render json: { error: 'Error updating sprint' }
    end
  end

  def show
    sprint = Sprint.find_by(id: params[:id])

    if sprint
      render json: sprint, status: :ok
    else
      render json: { error: 'Sprint Not Found.' }
    end
  end

  private

  def sprint_params
    params.permit(%i[target hours minutes seconds distance remarks effort])
  end
end
