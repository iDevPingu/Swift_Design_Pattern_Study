//
//  main.swift
//  Composite Pattern
//
//  Created by Ick on 2021/05/18.
//

import Foundation

let rootDirectory = Directory(size: 0, name: "Root")
let musicDirectory = Directory(size: 0, name: "Music")
let codeDirectory = Directory(size: 0, name: "Code")

let iUMusicFile = MusicFile(size: 10, name: "Lilac", artist: "IU")
let pinguMusicFile = MusicFile(size: 12, name: "PinguBGM", artist: "Pingu")

let swiftCodeFile = CodeFile(size: 3, name: "iOS", language: "Swift")
let kotlinCodeFile = CodeFile(size: 5, name: "Android", language: "kotlin")

musicDirectory.addFile(file: iUMusicFile)
musicDirectory.addFile(file: pinguMusicFile)

codeDirectory.addFile(file: swiftCodeFile)
codeDirectory.addFile(file: kotlinCodeFile)

rootDirectory.addFile(file: musicDirectory)
rootDirectory.addFile(file: codeDirectory)

rootDirectory.open()


print("RootDirectory Size : \(rootDirectory.getSize())")
print("MusicDirectory Size : \(musicDirectory.getSize())")
print("CodeDirectory Size : \(codeDirectory.getSize())")
