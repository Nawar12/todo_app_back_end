class TodoController < ApplicationController
    def index 
        @number= 2
    end
    def show
        if params[:id]=='1' 
            @task="Chemistry project- "
        end
        if params[:id]=='2'
            @task="Algebra pages 30-33"
        end
    
        if params[:id]=='3'
            @task=" Endlish essay"
        end
    
        if params[:id]=='4'
            @task="Woking papers due on monday" 
        end
    end
    
    def new
    end
    
    def create 
         t = Todo.new
         t.description = params['description']
         t.order = params['order']
         t.save
         redirect_to "/todo/show/#{ t.id }"
    end
    
end