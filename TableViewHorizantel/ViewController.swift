import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UIScrollView oluşturma
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        scrollView.showsHorizontalScrollIndicator = true
        scrollView.showsVerticalScrollIndicator = false
        scrollView.isPagingEnabled = false
        scrollView.alwaysBounceHorizontal = true
        
        // UITableView oluşturma
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: 800, height:900))
        tableView.delegate = self
        tableView.dataSource = self
        
        // UITableView'e gerektiğinde genişleme özelliği ekleme
        tableView.autoresizingMask = UIView.AutoresizingMask.flexibleWidth
        
        // UITableView'i UIScrollView içine ekleme
        scrollView.addSubview(tableView)
        
        // UIScrollView'i görünüme ekleme
        view.addSubview(scrollView)
        
        // UIScrollView'in genişlik ve yüksekliğini ayarlama
        scrollView.contentSize = CGSize(width: tableView.frame.width, height: tableView.frame.height)
    }
    
    // UITableViewDataSource'den gerekli yöntemleri uygulayın
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Tablo hücre sayısını döndürün
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Tablo hücresini oluşturun ve geri döndürün
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        cell.textLabel?.text = "Veri Veri  Veri  Veri   Veri    Veri   Veri  Veri  Veri \(indexPath.row)"
        return cell
    }
}
