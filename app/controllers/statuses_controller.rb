class StatusesController < ApplicationController
  def update
    @idea = idea

    if @idea.active?
      @idea.update(status: :inactive)
    else
      @idea.update(status: :active)
    end

    redirect_back fallback_location: ideas_path
  end

  private

    def idea
       @idea = Idea.find(params[:id])
    end
end
