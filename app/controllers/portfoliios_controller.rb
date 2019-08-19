class PortfoliiosController < ApplicationController
    before_action :set_portfolio, only: [:show, :edit, :update, :destroy]
    
    def index
        @portfolio_items = Portfoliio.all
    end

    def show
    end

    def new
        @portfolio_item = Portfoliio.new
    end

    def create
        @portfolio_item = Portfoliio.new(portfolio_params)

        respond_to do |format|
            if @portfolio_item.save
                format.html { redirect_to portfoliios_path, notice: "Portfolio item created" }
            else
                format.html { render :new }
            end
        end
    end

    def edit
    end

    def update
        respond_to do |format|
            if @portfolio.item.update(portfolio_params)
                format.html { redirect_to portfoliios_path, notice: "Portfolio Item Updated" }
            else
                format.html { render :edit }
            end
        end
    end

    def destroy
        @portfolio_item.destroy
        respond_to do |format|
            format.html { redirect_to portfoliios_url, notice: "Portfolio item removed"}
        end
    end

    private

    def set_portfolio
        @portfolio_item = Portfoliio.find(params[:id])
    end

    def portfolio_params
        # white listing specific parameters we will allow
        params.require(:portfoliio).permit(:title, :subtitle, :body)
    end
end
