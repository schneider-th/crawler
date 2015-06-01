class ObcWorker
  include Sidekiq::Worker
  sidekiq_options queue: :check
  sidekiq_options unique: true

  def perform(id, url)
    @vendor = Vendor.find_by(id: id)

    @page = MetaInspector.new(@vendor.url)

    @first_level_boolean = false

    if @page.links.external.any? { |link| link.include?(url) }
      @laningpage_boolean = true
      @first_level_boolean = true
    else
      @laningpage_boolean = true
      for link in @page.links.internal
        if @first_level_boolean == true then
          break
        end
        @first_level_boolean = true if @subpage.links.external.any? { |link| link.include?(url) }
      end
    end

    @obc = Obc.create!(vendor_id: @vendor.id, landingpage: @laningpage_boolean, first_level: @first_level_boolean)

  end
end
