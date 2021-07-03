//
//  DataMining.swift
//  Template Method Pattern
//
//  Created by Ick on 2021/07/03.
//

import Foundation
// Abstract Class
class DataMining {
    final func dataMining() {
        getData()
        dataProcess()
        dataAnalysis()
    }
    
    func getData() {
        print("데이터를 불러옵니다.")
    }
    func dataProcess() {
        print("데이터 처리완료")
    }
    func dataAnalysis() {
        print("데이터 분석완료\n")
    }
}
