class PlatformsController < InheritedResources::Base
  def create
    Platform.create(platform_params)
  end

  def update
    redirect_to current_account.people.find(params[:id]).tap { |platform|
      platform.update!(platform_params)
    }
  end

  private

    def platform_params
      params.require(:platform).permit(:name, :description, :ip)
    end
end

