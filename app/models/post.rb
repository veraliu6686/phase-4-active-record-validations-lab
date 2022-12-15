class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: ['Fiction','Non-Fiction'] }
    validate :clickbait

    # vaild_content={
    #     "Won't Believe",
    #     "Secret",
    #     "Top [number]",
    #     "Guess"
    # }

    def clickbait
        if title == "True Facts"
            errors.add :title, message: "There is an error!"
        end
    end
end
