class PagesController < ApplicationController
def show
@page = Page.where(:path => "root").first
end
end
