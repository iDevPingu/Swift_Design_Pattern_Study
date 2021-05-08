//
//  ViewFactory.swift
//  AbstractFactoryPattern
//
//  Created by Ick on 2021/05/08.
//

import Foundation

class ViewFactory {
    public static var factory: ViewAbstractFactory {
        #if os(macOS)
            return MacViewFactory()
        #elseif os(Windows)
            return WindowViewFactory()
        #elseif os(Linux)
            return LinuxViewFactory()
        #endif
    }
}


