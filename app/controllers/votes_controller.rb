class VotesController < ApplicationController
    def create
        @vote = current_user.likes.new(article_id: params[:article_id])

        if @vote.save
            redirec_to article_path(:article_id), notice "You vote to #{@vote.article.title}"
        else
            redirec_to article_path(:article_id), notice "Sorry you can't vote to #{@vote.article.title}"
        end
    end

    def destroy
        @vote = Vote.find_by
    end



    private

    def like_params
        params.requiere(:vote).permit(id: params[:id], user: current_user, post_id: params[:post_id])
    end
end