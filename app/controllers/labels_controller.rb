class LabelsController < ApplicationController
  def index
    @label = Label.new
    @labels = Label.all
  end

  def create
    @label = Label.new(label_params)
    @labels = Label.all
    @label.save
    flash[:info] = 'レーベルを新規登録しました。'
    redirect_to labels_path
  end

  def destroy
    @label = Label.find(params[:id])
    @label.destroy
    redirect_to labels_path
    end

  private

  def label_params
    params.require(:label).permit(:label_name)
  end
end
