import UIKit

class TableViewController: UITableViewController {
    
    var hoges = [Hoge]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Hoge.fetchHoges() { hoges in
            self.hoges = hoges
            self.tableView.reloadData()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.hoges.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "hogeCell", for: indexPath as IndexPath)
        
        updateCell(cell: cell, indexPath: indexPath)
        
        return cell
    }
    
    private func updateCell(cell: UITableViewCell, indexPath: IndexPath) {
        cell.textLabel?.text = self.hoges[indexPath.row].content
    }
}
