class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = MapViewController.alloc.init
    @window.makeKeyAndVisible
    true
  end
end

class MapViewController < UIViewController

  def viewDidLoad
    self.view = MKMapView.alloc.init
    brewery = Brewery.create(id: 'ABCD',
                             name: 'Test Brewery',
                             latitude: 41.88,
                             longitude: -87.65)
    p "Brewery Name: #{brewery.name}" # this works
    self.view.addAnnotation(brewery)  # this doesn't
  end

end

class Brewery
  include MotionModel::Model
  include MotionModel::ArrayModelAdapter
  include MotionModel::Validatable

  columns id: :string,
          name: :string,
          latitude: :float,
          longitude: :float

  validates :id, presence: true
  validates :name, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true

  def coordinate
    CLLocationCoordinate2D.new(latitude, longitude)
  end

  def title
    name
  end
end