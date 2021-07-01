//
//  ViewController.swift
//  DatePicker
//
//  Created by 정석환 on 2021/07/01.
//

import UIKit

class ViewController: UIViewController {
    // 타이머가 구동되면 실행할 함수
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0  // 타이머 간격 1초
    var count = 0       // 타이머가 설정한 간격대로 실행되는지 확인하기 위한 변수
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 타이머 설정
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender     // 전달된 인수 저장
        let formatter = DateFormatter() // DateFormatter 클래스 상수 선언
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"   // formatter의 dateFormat 속성을 설정
        
        // 데이트 피커에서 선택한 날짜를 formatter의 dateFormat에서 설정한 포맷대로 string 메서드를 사용하여 문자열로 변환
        lblPickerTime.text = "선택 시간 : " + formatter.string(from: datePickerView.date)
        
        
    }
    
    // 타이머가 구동된 후 정해진 시간이 되었을 때 실행할 함수
    @objc func updateTime(){
        let date = NSDate()     // 현재 시간을 가져옴
        
        // DateFormatter라는 클래스의 상수 formatter를 선언
        let formatter = DateFormatter()
        
        // 상수 formatter의 dateFormat 속성을 설정
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        // 현재 날짜(date)를 formatter의 dateFormat에서 설정한 포맷대로
        // string 메서드를 사용하여 문자열로 변환
        // 문자열로 변환한 date 값을 "현재 시간 : "이라는 문자열에 추가
        // 그리고 그 문자열을 lblCurrentTime의 text에 입력
        lblCurrentTime.text = "현재 시간 : " + formatter.string(from: date as Date)
        
        
    }
}

