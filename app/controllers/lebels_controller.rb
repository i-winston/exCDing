class LebelsController < ApplicationController

		def index
		@lebels = Lebel.all
		@lebel = lebel.new
	end

	def create
		@lebel = lebel.new(lebel_params)
		@lebels = Lebel.all
		if @lebel.save
			flash[:notice] = 'レーベルを新規登録しました。'
			redirect_to #どこか
		else
			flash[:notice] = 'レーベルの登録に失敗しました。'
			render :index
		end
	end

	def destroy
      @lebel = Lbele.find(params[:id])
      @lebel.destroy
      redirect_to admin_lebel_index_path
  	end

	private

	def lebel_params
		params.repuire(:lebel).permit(:lebel_name)
	end
end
