require 'sinatra'
require 'sinatra/asset_pipeline'

require_relative 'initializers/contentful_model'
require_relative 'models/product'
require_relative 'models/bundle'

register Sinatra::AssetPipeline

Bundle.all.load   # Why do we do this?
Product.all.load

get '/products' do
  @products = Product.all.load
  erb :products
end

get '/products/:slug' do
  @product = Product.find_by(slug: params['slug']).load.first
  erb :product
end

get '/bundles' do
  @bundles = Bundle.all.load
  erb :bundles
end

get '/bundles/:id' do
  @bundle = Bundle.find(params['id'])
  erb :bundle
end

get '/' do
  redirect '/products'
end

