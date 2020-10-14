class Post < ActiveRecord::Base

    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: { in: ["Fiction", "Non-Fiction"] }

    validate :title_validator

    def title_validator

        if title && !["Won't Believe", "Secret", "Top", "Guess"].any? { |w| title.include?(w) }
            errors.add(:title, "uhoh")  
        end
    end

    
end
