class StudentsController < ActionController::Base

    def create
        @student = Student.new(student_params)
        @student.save
        redirect_to student_path(@student)
      end

      def student_params
        params.require(:student).permit!
      end

      def new
        @student = Student.new
      end

      def show
        @student = Student.find(params[:id])
      end

      def edit
        @student = Student.find(params[:id])
      end

      def update
        @student = Student.find(params[:id])
        @student.update(student_params)
        redirect_to student_path(@student)
      end

end