class StatusesController < ApplicationController
  def update
    @idea = idea

    @idea.update(status: params[:status])

    redirect_back fallback_location: ideas_path
  end

  private

    def idea
       @idea = Idea.find(params[:id])
    end
end
