# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


File uploading pake carrierwave, https://github.com/carrierwaveuploader/carrierwave#activerecord

Admin :
admin@happidy.com
admin1234

Reset and rebuild db
rails db:drop:_unsafe
rails db:create
rails db:migrate 

Masuk rails console
modif db
@user = User.all
@user.admin = true
@user.save

Notifikasi pake toasr
https://medium.com/@hitobias/rails-6-%E4%BD%BF%E7%94%A8-toastr-%E4%BD%9C-flash-message-ab0fc75ee51b