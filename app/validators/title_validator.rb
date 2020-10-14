class TitleValidator < ActiveModel::Validator
    def validate(record)
        ["Won't Believe", "Secret", "Top", "Guess"].any? { |w| record.title.include?(w) }    
    end
end
