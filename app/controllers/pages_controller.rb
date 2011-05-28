class PagesController < ApplicationController

    def home
      @title = "Home"
    end

    def contact
      @title = "Fale Conosco"
    end

    def about
      @title = "Sobre"
    end

    def help
      @title = "Ajuda"
    end
 
end
