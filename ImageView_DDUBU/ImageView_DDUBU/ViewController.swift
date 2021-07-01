//
//  ViewController.swift
//  ImageView_DDUBU
//
//  Created by 정석환 on 2021/07/01.
//

import UIKit

class ViewController: UIViewController {

    var count = 1   // 사진 순서 매기는 count 변수
    @IBOutlet var imgView: UIImageView! // image view 변수
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        printImgView()
    }

    @IBAction func btnPrevious(_ sender: UIButton) {
        count -= 1  // 사진 순서 count 감소
        if(count < 1){  // count가 1보다 작으면 0.png 사진이 없으므로 3.png가 나와야함
            count = 3
        }
        printImgView()
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        count += 1  // 사진 순서 count 증가
        if(count > 3){  // count가 3보다 크면 4.png 사진이 없으므로 1.png가 나와야함
            count = 1
        }
        printImgView()
    }
    
    func printImgView(){    // imgView 사진 바꾸는 함수
        imgView.image = UIImage(named: String(count)+".png")    // count.png 출력
    }
}

