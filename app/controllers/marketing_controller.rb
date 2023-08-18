class MarketingController < ApplicationController
    def new
    end

    def sent_mail
        uploaded_file = params[:csv_file]

        if uploaded_file.present?
            csv_data = CSV.read(uploaded_file.path)
            @csv_records = csv_data.drop(1)  # Skip the header row
            puts("===> @csv_records: ", @csv_records)
            redirect_to root_path

            # Now @csv_records contains an array of arrays where each inner array represents a row from the CSV file
        else
            flash[:error] = "Please select a CSV file to upload."
            redirect_to root_path
        end

        # redirect_to root_path
        # MarketingMailer.send_mail.deliver_later
        # MarketingMailer.with(order: @order).send_mail.deliver_laterr
    end
end