//
//  RankingViewController.swift
//  Barabara
//
//  Created by hiroshi kajikawa on 2023/05/25.
//

import UIKit

class RankingViewController: UIViewController {

    //ランキング表示用のラベル
    @IBOutlet var rankingLabel1: UILabel!
    @IBOutlet var rankingLabel2: UILabel!
    @IBOutlet var rankingLabel3: UILabel!
    
    //スコアを保存するための変数
    let saveData: UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //score1”というKeyの値を取得して表示
        rankingLabel1.text = String(saveData.integer(forKey: "scorel" ))
        //score2”というKeyの値を取得して表示
        rankingLabel2.text = String(saveData.integer(forKey: "score2" ))
        //"score3”というKeyの値を取得して表示
        rankingLabel3.text = String(saveData.integer(forKey: "score3"))
        
    }
    
    @IBAction func toTop () {
        self.dismiss (animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
