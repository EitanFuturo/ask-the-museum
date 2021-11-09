class HomeController < ApplicationController
  def index
    @visitor_question = VisitorQuestion.new
  end
end
