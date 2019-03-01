class OrganisationsController < ApplicationController
    def index
        @organisations = Organisation.all
    end

    def show
        #Variable is equal to from the Post model, find()
        @organisation = Organisation.find(params[:id])
    end

    def new
        @organisation = Organisation.new
    end

    def create
        @organisation = Organisation.new(org_params)

        if(@organisation.save)
            redirect_to home_path
        else
            render 'new'
        end
    end

    def edit
        @organisation = Organisation.find(params[:id])
    end

    def update
        @organisation = Organisation.find(params[:id])

        if(@organisation.update(org_params))
            redirect_to home_path
        else
            render 'edit'
        end
    end

    private def org_params
        params.require(:organisation).permit(:name, :hourlyRate)
    end

end
