def find_sum(foodz, boroz, homez, roomz, subwayz)
    sum = foodz + boroz + homez + roomz + subwayz
end


def id_animal(sum)
# hash should be within method and returned, hash does not require an @
    spirit = {
        :animal => "",
        :description => "",
        :img_url => ""
    }
    if sum > 13
        spirit[:animal] = "pigeon"
        spirit[:description] = "You own the cityz..."
        spirit[:img_url] = "https://media0.giphy.com/media/GyKCVW91R83Ek/giphy.gif"
    elsif sum > 7
        spirit[:animal] = "rat"
        spirit[:description] = "You scavenge the subways for pizza!"
        spirit[:img_url] = "http://i.imgur.com/42afJcK.gif?noredirect"
    else 
        spirit[:animal] = "roach"
        spirit[:description] = "You scramble around and scare people."
        spirit[:img_url] = "https://media2.giphy.com/media/blvIDzVpmvQBO/200w.webp#1-grid1"
    end
    spirit
end
