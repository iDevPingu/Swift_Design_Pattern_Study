//
//  NotifierDecorator.swift
//  Decorator Pattern
//
//  Created by Ick on 2021/05/19.
//

import Foundation

protocol NotifierDecorator: NotifierComponent {
    var wrappee: NotifierComponent { get set }
    init(notifier: NotifierComponent)
}
