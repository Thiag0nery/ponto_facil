namespace :dev do
  desc "TODO"
  task setup: :environment do
    if Rails.env.development?
      %x(rake db:drop db:create db:migrate db:seed)
    end
  end

end
