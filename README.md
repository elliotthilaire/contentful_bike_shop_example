# Outsource your Admin Interface

This is a demo app created with With http://contentful.com for a short talk at http://brisruby.org

The application is hosted at http://contentful-bike-shop-example.herokuapp.com

## Contenful

> Like a CMS — except for the bad parts.
> Meet Contentful, A headless CMS with an API at its core.

It provides a nice admin interface to manage the data and provides an API for you access the data how you like.

## What is it?

There's three parts.

  * Web interface https://app.contentful.com/
  * An API for accessing content
  * An API for modifying content

## There are gems

Contentful
`contentful`
`contentful-management`
`contentful_bootstrap`
`contentful-webhook-listener`

Middleman
`contenful-middleman`
`contentful-middleman-pages`

ActiveRecord like
`errorstudio/contentful_model`
`errorstudio/contentful_rails`

Importing and Exporting
`contentful-importer`
`jekyll-contentful-data-import`
`wordpress-exporter`
`database-exporter`
`drupal-exporter`

## Demo

Today I'm going to walk you through setting up a bike shop.
We'll sell bikes, and some bike related products. We'll also offer bundles where you can buy a group of products together for cheaper.

I'll set this up in Contentful and then use Sinatra to put things online.

### Spaces

First we will create a new space. Then add a Product content type.

There are templates to choose from such as , Blog, Photo Gallery, or Product Catalogue, but we will go with an empty one.

### Content types

#### Product

Then we will create a Product content type and give it some fields.

It has a name, that represents the title and is required.
We'll give it a price, as a decimal that is also required.
Finally it needs pictures. Any number of pictures, displayed as a gallery.

#### Bundle

Next we can create the bundle content type.
Name...
Price...
Finally we add Reference field. So a bundle can have many products, and can only contain products. Let's say it needs to have at least two.

Can delete or disable fields.
Can't delete a field. Can't delete a field if it has an entity.

#### contentful_model

See, just like active record.
No `belongs_to`

## Reasons

  * Automatic image resizing
  * Markdown
  * Reasonable pricing
  * Hits to cache don't count

## Links

  * https://github.com/elliotthilaire/contentful_bike_shop_example
  * http://contentful-bike-shop-example.herokuapp.com/products
