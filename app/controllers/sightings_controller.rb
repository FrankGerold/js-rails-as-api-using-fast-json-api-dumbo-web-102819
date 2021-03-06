class SightingsController < ApplicationController
  def show
    @sighting = Sighting.find(params[:id])
    render json: SightingSerializer.new(sighting, options)
    # @sighting.to_json(:include => {:bird => {:only =>[:name, :species]}, :location => {:only =>[:latitude, :longitude]}}, :except => [:updated_at])
  end

  def index
    sightings = Sighting.all
    render json: SightingSerializer.new(sightings)
  end
end
