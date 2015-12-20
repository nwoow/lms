class UsersController < ApplicationController
	 skip_before_filter :require_no_authentication, only: [:new]
	def index
          @users = User.all
           
           respond_to do |format|
            format.html
            format.xml{ render xml: @users}
            format.json{ render json: @users1}
          end
        end

       def new
	    
	    @users = User.new
      end
def create
    @book = User.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end


  def book_params
      params.require(:user).permit(:email , :password)
    end


end
