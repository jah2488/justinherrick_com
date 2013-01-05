require 'sinatra'
require_relative 'lib/record_keeper'

set :static_cache_control, [:public, :max_age => 300]

before do
  cache_control :public, :must_revalidate, :max_age => 30
end

get '/' do
  send_file File.join(settings.public_folder, 'index.html')
  #erb :index
end

get '/posts' do
  rk = RecordKeeper.new
  rk.all('posts').to_json
end

get '/posts/*' do
  rk = RecordKeeper.new
  rk.find("posts/" + params[:splat].first + ".txt").to_json
end

get '/post/*' do
  rk = RecordKeeper.new
  p = rk.find("posts/" + params[:splat].first + ".txt")
  erb :article, :locals => {:title => p.fetch("title"),
                            :body  => p.fetch("body"),
                            :date  => p.fetch("date"),
                            :tags  => p.fetch("tags")}
end

get '/feed' do
  rk = RecordKeeper.new
  builder :feed, :locals => { :posts => rk.all('posts') }
end
