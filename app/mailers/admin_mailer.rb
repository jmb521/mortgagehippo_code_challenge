class AdminMailer < ApplicationMailer
    default :from => 'coinmachine@jenniferpazos.com'

    def low_inventory_alert(coin)
      @admin = Admin.all.map {|admin| admin.email}.join(", ")
      @coin = coin

      @total = Coin.coin_total
      mail( :to => "#{@admin}",
    :subject => "Coin: #{coin.name} only has #{coin.quantity} left! ",
    )
    end

end
