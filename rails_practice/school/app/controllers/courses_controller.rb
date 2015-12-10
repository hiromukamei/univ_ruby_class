class CoursesController < ApplicationController
	before_action :set_course, only: [:show, :file_upload]
	def index
		@courses = Course.all
	end

	def show
	end

	def file_upload
		file = params[:file]
		name = file.original_filename
		path = "public/file/#{@course.name}/"
		FileUtils.mkdir_p(path)

		File.open(path + name, 'wb') do |f|
			f.write(file.read)
			redirect_to @course, notice: "File was successfully saved."
		end
	end

	private
	def set_course
		@course = Course.find(params[:id])
	end
end
