FactoryGirl.define do
  factory(:task) do
    description('Knit the sock monkey')
  end
  factory(:list) do
    name('Home stuff')
  end
end
