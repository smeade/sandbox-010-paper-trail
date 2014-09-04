class VersionsController < ApplicationController

  def revert
    @version = PaperTrail::Version.find(params[:id])
    @version.reify.save!
    redirect_to :back, :notice => "Restored to version"
  end

end