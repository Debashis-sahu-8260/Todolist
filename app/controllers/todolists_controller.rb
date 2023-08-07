class TodolistsController < ApplicationController
before_action :set_todolist, only: [:show, :edit, :update, :destroy]
    def index
      @todolists = current_user.todolists.all
    end
  
    def show
      @todolist = Todolist.find(params[:id])
    end
  
    def new
      @todolists = current_user.todolists.build
    end
  
    def create
      @todolist = current_user.todolists.build(todolist_params)
      if @todolist.save
        redirect_to todolists_path, notice: 'TASK successfully created!'      
      else
        redirect_to todolists_path, alert: 'Failed to created task!'
      end
    end
  
    def update
      if @todolist.update(todolist_params)
        redirect_to todolist_path(@todolist)
      else
        render :edit
      end
    end
  
    def destroy
      @todolist.destroy
      redirect_to todolists_path, notice: 'Todolist successfully deleted!'
    end

    def set_todolist
      @todolist = current_user.todolists.find(params[:id])
    end

  
    private
  
    def todolist_params
      params.required(:todolist).permit(:task)
    end
  end
  
