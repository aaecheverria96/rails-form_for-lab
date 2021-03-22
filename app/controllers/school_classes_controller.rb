class SchoolClassesController < ApplicationController 


def new 
    @school_class = SchoolClasses.new
end 
def create 
    @school_class = SchoolClasses.new(post_params(:title, :room_number)) 
    @school_class.save 
    redirect_to school_classes_path(school_classes)
end 

def update 
    @school_class = SchoolClasses.find(params[:id]) 
    @school_class.update(params.require(:school_classes).permit(:title, :room_number)) 
    redirect_to school_classes_path(@school_class) 
end 



private 

def school_class_params(*args)
    params.require(:school_classes).permit(*args)
  end 
end 