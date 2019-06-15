module ApplicationHelper
  def resource_name
    :enduser
  end

  def resource
    @resource ||= Enduser.new
  end
end
