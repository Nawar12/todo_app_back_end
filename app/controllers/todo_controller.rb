class TodoController < ApplicationController
def index 
    @number= 2
end
def show
    if params[:id]=='1' 
        @task="Chemistry project"
    end
    if params[:id]=='2'
        @task="Algebra pages 30-33"
    end
end
end 