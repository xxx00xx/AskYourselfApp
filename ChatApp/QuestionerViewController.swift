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
    
    private var chatInputAccessoryView: ChatInputAccessoryView = {
        let view = ChatInputAccessoryView()
        view.frame = .init(x: 0, y: 0, width: view.frame.width, height: 100)
        return view
    }()

    // didSetにまとめて実行
    @IBOutlet weak var QuestionerTableView: UITableView! {
        didSet {
            QuestionerTableView.register(UINib(nibName: "QuestionerTableViewCell", bundle: nil), forCellReuseIdentifier: cellId)
            QuestionerTableView.dataSource = self
            QuestionerTableView.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // タイトル文字列の設定
        self.navigationItem.title = text
        QuestionerTableView.reloadData()
        //背景色
        QuestionerTableView.backgroundColor = .green//.init(red: 118, green: 40, blue: 180, alpha: 1)
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
    
    override var inputAccessoryView: UIView? {
        get {
            return chatInputAccessoryView
        }
    }
    
    override var canBecomeFirstResponder: Bool {
        return true
    }
}

extension QuestionerViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        QuestionerTableView.estimatedRowHeight = 20
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = QuestionerTableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        return cell
    }
}
