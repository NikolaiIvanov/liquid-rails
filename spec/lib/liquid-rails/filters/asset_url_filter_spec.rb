require 'spec_helper'

class AssetUrlFilterKlass
  include Liquid::Rails::AssetUrlFilter
end

module Liquid
  module Rails
    describe AssetUrlFilter do
      subject { AssetUrlFilterKlass.new }

      it { should delegate(:asset_path).to(:h) }
      it { should delegate(:asset_url).to(:h) }

      it { should delegate(:audio_path).to(:h) }
      it { should delegate(:audio_url).to(:h) }

      it { should delegate(:font_path).to(:h) }
      it { should delegate(:font_url).to(:h) }

      it { should delegate(:image_path).to(:h) }
      it { should delegate(:image_url).to(:h) }

      it { should delegate(:javascript_path).to(:h) }
      it { should delegate(:javascript_url).to(:h) }

      it { should delegate(:stylesheet_path).to(:h) }
      it { should delegate(:stylesheet_url).to(:h) }

      it { should delegate(:video_path).to(:h) }
      it { should delegate(:video_url).to(:h) }
    end
  end
end