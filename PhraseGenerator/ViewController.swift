//
//  ViewController.swift
//  PhraseGenerator
//
//  Created by 박재희 on 2022/02/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var content: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    let phrases = [
        Phrase(contents: "죽음을 두려워하는 나머지 삶을 시작조차 못하는 사람이 많다.", name: "벤다이크"),
        Phrase(contents: "나는 나 자신을 빼 놓고는 모두 안다.", name: "비용"),
        Phrase(contents: "편견이란 실효성이 없는 의견이다.", name: "암브로스 빌"),
        Phrase(contents: "분노는 바보들의 가슴속에서만 살아간다.", name: "아이슈타인"),
        Phrase(contents: "몇 번이라도 좋다! 이 끔찍한 생이여...다시!", name: "니체")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func GenButton(_ sender: Any) {
        let phraseCnt = phrases.count
        let randomIndexNum = Int(arc4random_uniform(UInt32(phraseCnt)))
        let phrase = phrases[randomIndexNum]
        content.text = phrase.contents
        titleLabel.text = phrase.name
    }
    

}

