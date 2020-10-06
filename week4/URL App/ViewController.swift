
import UIKit

struct StationData: Decodable {
  var stationID: String
  var stationName: String
  var stationAddress: String
}

class ViewController: UIViewController {
  
  
  @IBOutlet weak var StationID: UILabel!
  @IBOutlet weak var StationName: UILabel!
  @IBOutlet weak var Address: UILabel!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let jsonURLString = "https://stations-98a59.firebaseio.com/practice.json"
    
    guard let url = URL(string: jsonURLString) else {return}
    
    URLSession.shared.dataTask(with: url) { (data, response, error) in
      guard let data = data else {return}
      
      do {
        let stationData = try JSONDecoder().decode(StationData.self, from: data)
        print(stationData.stationID, stationData.stationName, stationData.stationAddress)
        
        DispatchQueue.main.async {
          self.StationID.text = stationData.stationID
          self.StationName.text = stationData.stationName
          self.Address.text = stationData.stationAddress
        }

      } catch let jsonError {
        print("Error serializing json", jsonError)
      }
    }.resume()
    
  }
  
}
