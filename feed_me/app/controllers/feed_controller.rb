class FeedController < ApplicationController

  def index
    # Twitter.author
    @feed_content = ApiHelper.all
  end

  def show
    @user = User.find(params[:id])
    @authors = @user.authors
    @posts = []
    @authors.each do |author|
      if author.service == "Vimeo"
        Vimeo.new(author).query_for_vids.parse_api
      # elsif author.service == "Twitter"

    end

    end
    # @authors.each do author
    #   @posts += author.posts
    # end
    # @posts.sort_by( |post| post.timestamp )
  end

end
