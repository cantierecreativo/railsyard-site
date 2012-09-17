$ rails g railsyard:editor Album title:string          \
                                 description:wysihtml5 \
                                 cover:image           \
                                 published_at:datetime
$ rake db:migrate

