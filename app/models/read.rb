class Read < ApplicationRecord
  # scope :hot, -> {
  #   select('links.url as url')
  #     .joins('join reads on reads.link_id = links.id')
  #     .where('reads.created_at > ?', Time.now - 1.day)
  #     .group("links.url")
  #     .order('count("reads".id) DESC').limit(10)
  # }
  # def self.hot
  #   Read.where(updated_at: (Time.now - 24.hours)..Time.now).limit(10).group(:url).order('count_id DESC')
  # end

end
