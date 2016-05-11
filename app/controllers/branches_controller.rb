class BranchesController < ApplicationController
    
    before_action :find_branch, only: [:edit, :update, :show, :destroy]

    def index
        @branches = Branch.all
        @bil = 0
    end

    def new
        @branch = Branch.new
    end

    def create
        @branch = Branch.new(branch_params)
        if @branch.save
            redirect_to new_admin_path
        else
            flash[:danger] = "Cawangan tidak disimpan. Sila cuba sekali lagi"
            render "new"
        end
    end

    def edit
    end

    def update
    end

    def destroy
        if @branch.destroy
            flash[:success] = "#{@branch.name} telah dipadam"
            redirect_to branches_path
        end
    end

    private
        def branch_params
            params.require(:branch).permit(:name)
        end

        def find_branch
            @branch = Branch.find(params[:id])
        end
end
