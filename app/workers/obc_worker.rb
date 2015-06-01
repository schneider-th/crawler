class ObcWorker
  include Sidekiq::Worker
  sidekiq_options queue: :check
  sidekiq_options unique: true

  def perform(id, url)
    @vendor = Vendor.find_by(id: id)

    @page = MetaInspector.new(@vendor.url)

    @first_level_boolean = false


    if @page.links.external.any? { |link| link.include?(url) }
      @laning_page_boolean = true
    else
      @laning_page_boolean = true
    end

    for link in @page.links.internal
      if @first_level_boolean == true then
        break
      end
      @first_level_boolean = true if @subpage.links.external.any? { |link| link.include?(url) }
    end
  end
end
