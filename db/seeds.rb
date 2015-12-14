# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

items = Item.create (
  [
    {
      name: 'パン',
      price: 200,
      stock: 10,
      remote_image_url: "http://www.andersen-net.jp/shop/home/1330/item_img/an_303830_1.jpg"
    },
    {
      name: 'パン',
      price: 300,
      stock: 10,
      image: "http://pds.exblog.jp/logo/1/201010/07/02/e020670220101009070532.jpg"
    },
    {
      name: 'パン',
      price: 400,
      stock: 10,
      remote_image_url: "http://oriminebakers.com/wp-content/uploads/2011/09/kumapan2.jpg"
    }
  ]
)
users = User.create(
  [
    {
      email: 'test00@test.com',
      password: '11111111',
      password_confirmation: '11111111'
    },
    {
      email: 'test01@gtest.com',
      password: '11111111',
      password_confirmation: '11111111'
    }
  ]
)
