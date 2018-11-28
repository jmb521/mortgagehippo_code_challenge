class AdminMailer < ApplicationMailer
    default :from => 'coinmachine@jenniferpazos.com'

    def low_inventory_alert(coin)
      @admin = Admin.all.map {|admin| admin.email}.join(", ")
      @coin = coin
      binding.pry
      mail( :to => "#{@admin}",
    :subject => "#{coin.name} with a value of #{coin.value} is running low on inventory" )
    end

end
