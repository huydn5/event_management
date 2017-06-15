class SpeakersController < ApplicationController
	def index
		@speaker = Speaker.all
	end

	def show
		@speaker = Speaker.all
	end

	def new
		@speaker = Speaker.new
	end

	def create
		@speaker = Speaker.new(speaker_params)
		if @speaker.save
			#redirect_to @speaker
			redirect_to speakers_path
		else
			render 'new'
		end
	end

	def edit
		@speaker = Speaker.find(params[:id])
    end

    def update
    	@speaker  =Speaker.find(params[:id])
    	if  @speaker.update(speaker_params)
    		redirect_to @speaker
    	else
    		render 'edit'
    	end
    end

    def destroy
    	@speaker = Speaker.find(params[:id])
    	@speaker.destroy
    	redirect_to speakers_path
    end

    private 

    def speaker_params
      params.require(:speaker).permit(:sp_firstname, :sp_lastname, :sp_major, :sp_email, :sp_phone, :sp_description, :sp_avatar)
    end
end
