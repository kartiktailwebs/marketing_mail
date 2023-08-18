class MarketingController < ApplicationController
    def new
        puts("===> params: ", params)
        # MarketingMailer.send_mail.deliver_later
        # MarketingMailer.with(order: @order).send_mail.deliver_later
    end
end