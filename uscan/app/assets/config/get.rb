require 'httparty'
require 'json'
include Math


url = 'https://api.data.gov/ed/collegescorecard/v1/schools.json?api_key=0PGR8AfEJpwx1vrAndIR6OT9elbqm5RH5dU6pg0g'+
'&school.degrees_awarded.highest=3'+
'&_fields=id,school.name,school.city,school.state,school.zip,location.lat,location.lon,2014.admissions.admission_rate.overall,'+
'2014.cost.tuition.in_state,2014.cost.tuition.out_of_state,2014.completion.completion_rate_4yr_150nt&_per_page=100'

distance = '&_zip=28208&_distance=50mi'
tuit = '&2014.cost.tuition.in_state__range=..7000'
grad = '&2014.completion.completion_rate_4yr_150nt__range=0.5..'
accept = '&2014.admissions.admission_rate.overall__range=0.5..'


response = HTTParty.get(url)


#puts response


body = JSON.parse(response.body)

results = body["results"]

data =  body["metadata"]

total =  data["total"]

puts "total: #{total}"


count = 0

name=""
city=""
state=""
long=""
lat=""
zip=""
admission_rate=""
tuit_instate=""
tuit_outstate=""
grad_rate=""
map_script=""

results.each do |result| 
    result.each do |key, value|
       if key == 'school.name'
           name = value
       end
       if key == 'school.city'
           city = value
       end 
       if key == 'school.state'
           state = value
       end 
       if key == 'location.lon'
           long = value
       end 
       if key == 'location.lat'
           lat = value
       end 
       if key == 'school.zip'
           zip = value
       end 
       if key == '2014.admissions.admission_rate.overall'
           admission_rate = value.to_f*100
       end 
       if key == '2014.cost.tuition.in_state'
           tuit_instate = value
       end 
       if key == '2014.cost.tuition.out_of_state'
           tuit_outstate = value
       end 
       if key == '2014.completion.completion_rate_4yr_150nt'
           grad_rate = value.to_f*100
       end 
    end
   map_script += "var contentString#{count} = '<h3>#{name}</h3>'+
                    '#{city}, #{state}'+
                    '<br><b>Acceptence Rate:</b> #{admission_rate}%'+
                    '<br><b>Graduation Rate:</b> #{grad_rate}%'+
                    '<br><b>In State Tuition:</b> #{tuit_instate}'+
                    '<br><b>Out of State Tuition:</b> #{tuit_outstate}'+
                    '<br>';

var infowindow#{count} = new google.maps.InfoWindow({
    content: contentString#{count}
  });

//this is how to add a marker 
var marker#{count} = new google.maps.Marker({
    position :new google.maps.LatLng(#{lat},#{long}),
    map : map
})

marker#{count}.addListener('click', function() {
    infowindow#{count}.open(map, marker#{count});
});
"

count += 1
end


puts map_script