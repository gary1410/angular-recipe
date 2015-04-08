class HomeController < ApplicationController
  def index
  end
end

ResumesController

CandidateController

	destroy

	end

	def destroy_resume
		@resume = Resume.find(params[:id])
		if @resume.destroy
			redirect_to whatever_path
		else
			redirect_to :back, flash
		end
	end

end

resources :candidate do
	resources :resumes
end

delete '/canidates/:id/resumes/:resume_id', to "canidates#destroy_resume"

/canidate/1/resume
canidate/1/resumes/2

Candidate Controller

def show
	@candidates = Candidate.find(params[:id])
end

end

= link_to('Delete Resume', resume_path(id, method: :delete))





Resume

Canidate

Canidate.resumes.where(most_current: 'true')


class Resume

	def self.most_recent
		order(created_at: :asc)
	end
end

Canidate.resumes.most_recent.take(2)


Users Controller

PEOPLE_PER_PAGE = 10 

def index
	page = params[:page]
	@user = User.for_page(page, PEOPLE_PER_PAGE )
	respond_to |format|
	format.html
	format.json { render json: @users }
end

models

self.for_page(page, PEOPLE_PER_PAGE )
	offset(page - 1 * PEOPLE_PER_PAGE).take(PEOPLE_PER_PAGE)
end

User.offset(30).take(10)

# User.where(id: [21-30])


1..30, 31, 32, 

views

@user.each |u| do
	u.name etc
end

index.html.haml


routes

root users:index
resources :users, only: []



http://localhost:3000/users?page=2


/users/index.html = > /users
users/gary users/1 


