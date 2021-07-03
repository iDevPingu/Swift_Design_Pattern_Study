//
//  Client.swift
//  Template Method Pattern
//
//  Created by Ick on 2021/07/03.
//

import Foundation

enum FileType {
    case pdf
    case word
    case excel
}
class Client {
    static func dataMining(fileType: FileType) {
        switch fileType {
        case .pdf:
            PDFFileDataMining().dataMining()
        case .word:
            WordFileDataMining().dataMining()
        case .excel:
            ExcelFileDataMining().dataMining()
        }
    }
}
