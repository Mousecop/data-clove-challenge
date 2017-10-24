class InformationController < ApplicationController
  def index
    @people = Person.all
  end
end
