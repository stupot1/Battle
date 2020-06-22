require 'sinatra'

enable :sessions
      set :session_secret, "secret"

get '/' do
  "Hello World"
end
#   <div>'http://bit.ly/1eze8aE'</div>  
#   div {
#   
# }
# <h3>CAT!</h3>
get '/secret' do
  "Hello!"
end

get '/secret2' do
  "Hello 2!"
end

get '/secret3' do
  "Hello 3!"
end

get '/cat' do
  erb :cat
end
__END__
@@ cat
<head>
  <style>
  .borderexample {
   border-style:dashed;
   border-color:red;
  }
  </style>
</head>

<p style="border:3px; border-style:dashed; border-color:#FF0000; padding: 1em;">
  <img src=http://bit.ly/1eze8aE alt="Cat">
</p>

<p class="borderexample">
  <img src=http://bit.ly/1eze8aE alt="Cat">
</p>


