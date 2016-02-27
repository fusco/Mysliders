class SlidesController < ApplicationController

  # GET /slides
  # GET /slides.json
  def index
    @slides = Slide.all
  end
end
