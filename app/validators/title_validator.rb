class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title && !["Won't Believe", "Secret", "Top", "Guess"].any? { |w| record.title.include?(w) }
            record.errors.add(:title, "uhoh")  
        end
    end
end
