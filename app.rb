require 'sinatra'
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

before do
  cache_control :public, :must_revalidate, :max_age => 30
end

get '/' do
  erb :index, :locals => { :posts => RecordStore::Posts.map }
end

get '/posts/*' do
  post = RecordStore::Posts.find { |post| post.slug == params[:splat].first.downcase }
  post = RecordStore::NOTFOUND if post.nil?
  erb :article, :locals => { :post => post }
end

get '/tagged/*' do
  erb :index, :locals => { :posts => RecordStore::Posts.find_all { |post| post.tags.map(&:downcase).include?(params[:splat].first.downcase) } }
end

get '/feed' do
  builder :feed, :locals => { :posts => RecordStore::Posts.map }
end
