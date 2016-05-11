class AdminsController < ApplicationController
    def new
        @admin = Admin.new
    end

    def create
        @admin = Admin.new(admin_params)
        if @admin.save
            redirect_to admins_path
        else
            flash[:danger] = "Data yang dimasukkan tidak dapat disimpan. Sila cuba sekali lagi"
            render "new"
        end
    end

    private

        def admin_params
            params.require(:admin).permit(:username, :email, :password, :role_id, :branch_id)
        end
end
