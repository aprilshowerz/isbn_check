require 'sinatra'
require_relative 'new_isbn'

get '/' do 
#	'Hey.'

erb :isbn_input, :locals => {:isbn_num => "", :results => "", :message_one => "", :number => ""}

end

post '/isbn_num' do
	isbn_num = params[:isbn_input]

results = valid_isbn?(isbn_num)
# "#{results} results shown here"

erb :isbn_input, :locals => {:isbn_num => isbn_num, :results => results, :message_one => " is a ", :number => " number"}
end
