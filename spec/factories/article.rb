FactoryBot.define do
    factory :article do |f|
        title { 'Sample Title' }
        body { 'Sample Body' }
        status { 'public' }
      
    end
end