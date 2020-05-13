class SchoolClassesController< ApplicationController
    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.new(post_params(:title, :room_number))
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def show
        current_school_class
    end

    def edit
        current_school_class
    end

    def update
        current_school_class
        @school_class.update(post_params(:title, :room_number))
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def current_school_class
        @school_class = SchoolClass.find(params[:id])
    end

    def post_params(*args)
        params.require(:school_class).permit(*args)
    end
end