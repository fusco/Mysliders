class SlidesController < ApplicationController

  # GET /slides
  # GET /slides.json
  def index
    # requete de base que l'on va passer au model
    # @slides = Slide.where("DateTime(published_from) < ? AND DateTime(published_to) > ? AND published == ?", DateTime.now, DateTime.now, true)

    # Grace au scope créé dans le model on simplifie la lecture du code
    @slides = Slide.publication.min_publication.max_publication
  end
end
