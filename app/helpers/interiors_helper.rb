module InteriorsHelper

	def events_array(events)
		ev = []
	    attr = {}
	    events.each do |event|
		    attr[:id] = event.id	
		    attr[:title] = event.name
		    attr[:start] = date_with_time(event.date, event.time)
		    attr[:end] = date_with_time(event.date, (event.time + 60*60))
			    if Rails.env.production?
			    	attr[:url] = 'http://medicapp1.herokuapp.com/interiors/'+event.id.to_s
			    else
			    	attr[:url] = 'http://localhost:3000/interiors/'+event.id.to_s
			    end
		    attr[:allDay] = false
		    ev << attr
		    attr = {}
	    end
    	ev.to_json
	end

	def date_with_time(date, time)
		"#{date.strftime('%Y-%m-%d')}T#{time.strftime('%H:%M:%S')}Z"
	end
end
