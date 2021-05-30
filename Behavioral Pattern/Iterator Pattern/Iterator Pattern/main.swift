//
//  main.swift
//  Iterator Pattern
//
//  Created by Ick on 2021/05/30.
//

import Foundation

// Swift Sequence, IteratorProtocol에 대해 공부 하자!
class WordsCollection {
    fileprivate lazy var items = [String]()
    
    func append(_ item: String) {
        self.items.append(item)
    }
}

extension WordsCollection: Sequence {
    func makeIterator() -> some IteratorProtocol {
        return WordsIterator(self)
    }
}

class WordsIterator: IteratorProtocol {
    private let collection: WordsCollection
    private var index: Int = 0
    
    init(_ collection: WordsCollection) {
        self.collection = collection
    }
    
    func next() -> String? {
        defer { index += 1}
        return self.index < self.collection.items.count ? collection.items[index] : nil
    }
}

class Client {
    static func clientCode<S: Sequence>(sequence: S) {
        for item in sequence {
            print(item)
        }
    }
}

let words = WordsCollection()
words.append("First")
words.append("Second")
words.append("Third")

Client.clientCode(sequence: words)

enum IterationType {
    case inOrder
    case preOrder
    case postOrder
}

class Tree<T> {
    var value: T
    var left: Tree<T>?
    var right: Tree<T>?
    
    init(_ value: T) {
        self.value = value
    }
    
    func iterator(_ type: IterationType) -> AnyIterator<T> {
        var items = [T]()
        switch type {
        case .inOrder:
            inOrder { (item) in
                items.append(item)
            }
        case .preOrder:
            preOrder { (item) in
                items.append(item)
            }
        case .postOrder:
            postOrder { (item) in
                items.append(item)
            }
        }
        return AnyIterator(items.makeIterator())
    }
    
    private func inOrder(_ body: (T) -> ()) {
        left?.inOrder(body)
        body(value)
        right?.inOrder(body)
    }
    private func preOrder(_ body: (T) -> ()) {
        body(value)
        left?.preOrder(body)
        right?.preOrder(body)
    }
    private func postOrder(_ body: (T) -> ()) {
        left?.postOrder(body)
        right?.postOrder(body)
        body(value)
    }
}

let tree = Tree(1)
tree.left = Tree(2)
tree.right = Tree(3)

tree.left?.left = Tree(4)
tree.left?.right = Tree(5)

tree.right?.left = Tree(6)
tree.right?.right = Tree(7)

class ClientC {
    static func clientCode<T>(iterator: AnyIterator<T>) {
        while case let item? = iterator.next() {
            print(item)
        }
    }
}
print("inOrder")
ClientC.clientCode(iterator: tree.iterator(.inOrder))
print("preOrder")
ClientC.clientCode(iterator: tree.iterator(.preOrder))
print("postOrder")
ClientC.clientCode(iterator: tree.iterator(.postOrder))
