class ImagesController < ApplicationController
  def ver
    path = "/home/ec2-user/environment/Sensai-Fitness/tmp/images/#{params[:filename]}.jpg"
    send_file( path,
      :disposition => 'inline',
      :type => 'image/jpeg',
      :x_sendfile => true )
  end
end