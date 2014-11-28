# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8
Product.delete_all
Product.create(title: 'Iphone6',
              description: %{ <p>品牌: Apple/苹果Apple型号: iPhone6上市时间: 2014年月份: 9月
              网络类型: TD-LTE/FDD-LTE/CDMA/GSM款式: 直板尺寸: 5.5英寸机身颜色: 白色 黑色 黄色
              套餐类型: 官方标配后置摄像头: 800万操作系统: iOS
              附加功能: 重力感应 距离感应 电子罗盘 光线感应 WIFI上网 GPS导航 双卡双待 高清视频 GPRS上网 单卡单待
              宝贝成色: 全新售后服务: 店铺三包触摸屏类型: 电容式机身内存: 16GB
              键盘类型: 虚拟触屏键盘厚度: 9mm以下分辨率: 1920x1080
              手机类型: 拍照手机 音乐手机 时尚手机 智能手机 3G手机 儿童手机 4G手机 商务手机 女性手机 老人
              手机电池类型: 不可拆卸式电池摄像头类型: 双摄像头（前后）
              视频显示格式: 1080P(全高清D5)网络模式: 单卡多模核心数: 四核心版本类型: 港澳台</p>},
              image_url: 'iphone6.jpg',
              price: 5230.54
              )

Product.create(title: 'CoffeeScript',
  description: 
    %{<p>
        CoffeeScript is JavaScript done right. It provides all of JavaScript's
	functionality wrapped in a cleaner, more succinct syntax. In the first
	book on this exciting new language, CoffeeScript guru Trevor Burnham
	shows you how to hold onto all the power and flexibility of JavaScript
	while writing clearer, cleaner, and safer code.
      </p>},
  image_url:   'cs.jpg',
  price: 36.00)
# . . .
Product.create(title: 'Programming Ruby 1.9',
  description:
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
  image_url: 'ruby.jpg',
  price: 49.95)
# . . .

Product.create(title: 'Rails Test Prescriptions',
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: 'rtp.jpg',
  price: 34.95)
