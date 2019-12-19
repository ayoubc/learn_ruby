class Book
# write your code here
    attr_accessor :title

    def title
        arr = @title.split(" ")
        special = {"and"=> 1, "in"=> 1, "the"=>1, "of"=>1, "a"=>1, "an"=>1}
        arr.each do |word| 
            if special[word.downcase].nil?
                word.capitalize!
            end
        end
        arr[0].capitalize!
        @title = arr.join(" ")
    end
end
