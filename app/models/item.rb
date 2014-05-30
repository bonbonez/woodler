class Item < ActiveRecord::Base
  has_attached_file :picture,
                    :styles  => {
                      :small  => { :geometry => '400x400#', :format => :jpg, :convert_options => '-strip -background white -flatten -quality 75' },
                      :thumb  => { :geometry => '100x100#', :format => :jpg, :convert_options => '-strip -background white -flatten -quality 75' }
                    },
                    :default_style => :thumb,
                    :default_url   => "/images/:style/missing.png"

  validates_attachment_content_type :picture, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
