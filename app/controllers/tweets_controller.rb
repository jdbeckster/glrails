class TweetsController < InheritedResources::Base

  private

    def tweet_params
      params.require(:tweet).permit(:content)
    end
end

