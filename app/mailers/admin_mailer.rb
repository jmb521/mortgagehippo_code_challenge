class AdminMailer < ApplicationMailer
    default :from => 'coinmachine@jenniferpazos.com'

    def low_inventory_alert(coin)
      @admin = Admin.all.map {|admin| admin.email}.join(", ")
      @coin = coin

      mail( :to => "#{@admin}",
    :subject => "#{ENV["SENDGRID_USERNAME"]} #{coin.name} with a value of #{coin.value} is running low on inventory ",
    :body => "testing config settings ")
    end

end
