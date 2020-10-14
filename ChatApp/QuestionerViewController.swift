//
//  QuestionerViewController.swift
//  ChatApp
//
//  Created by 古田翔太郎 on 2020/09/28.
//  Copyright © 2020 古田翔太郎. All rights reserved.
//

import UIKit
import RealmSwift

class QuestionerViewController: UIViewController {

    var text = ""
    var chat: Chat?
    let realm = try! Realm()
    
    private let cellId = "cellId"
    @IBOutlet weak var chatQuestionerRoomTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // タイトル文字列の設定
        self.navigationItem.title = text
        //chatQuestionerRoomTableView.backgroundColor = .green
        chatQuestionerRoomTableView.delegate = self
        chatQuestionerRoomTableView.dataSource = self
        chatQuestionerRoomTableView.regi
        /*
        //トップに戻るボタンを作成
        let leftButton = UIBarButtonItem(
        title:  "戻る",
        style:  .plain,
        target: nil,
        action: nil)
        self.navigationItem.backBarButtonItem = leftButton
         */
        
        
    }
}

extension QuestionerViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = chatQuestionerRoomTableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.backgroundColor = .purple
        return cell
    }
}
