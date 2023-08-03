class TodolistsController < ApplicationController
    def index
      @todolists = Todolists.all
    end
  
    def show
      @todolists = Todolists.find(params[:id])
    end
  
    def new
      @todolists = Todolists.new
    end
  
    def create
      @todolists = Todolists.new(todolists_params)
      if @todolists.save
        redirect_to @todolists_path, notice: 'TASK successfully created!'      
      else
        redirect_to todolists_path, alert: 'Failed to created task!'
      end
    end
  
    def update; end
  
    def destory
      @todolists = Todolists.find(params[:id])
      @todolists.destory
      redirect_to action: 'index', notice: 'Task successfully deleted'
    end
  
    private
  
    def todolists_params
      params.required(:todolists).permit(:task)
    end
  end
  
