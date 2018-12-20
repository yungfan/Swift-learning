import UIKit
import PlaygroundSupport


//UIView

//let label = UILabel(frame: CGRect(x: 0, y: 0, width: 400, height: 200))
//label.backgroundColor = .white
//label.font = UIFont.systemFont(ofSize: 32)
//label.textAlignment = .center
//label.text = "Hello World"
//PlaygroundPage.current.liveView = label

//let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
//button.setTitle("登陆", for: .normal)
//button.setTitleColor(UIColor.red, for: .normal)
//PlaygroundPage.current.liveView = button

//UIViewController
class ViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
    }
}

extension ViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = String(indexPath.row)
        return cell
    }
}

extension ViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Select: \(indexPath.row)")
    }
}

let vc = ViewController()
PlaygroundPage.current.liveView = vc
