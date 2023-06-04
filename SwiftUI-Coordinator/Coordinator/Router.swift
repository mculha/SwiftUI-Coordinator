//
//  Router.swift
//  SwiftUI-Coordinator
//
//  Created by Melih Çulha on 4.06.2023.
//
import Foundation

protocol Router {
    associatedtype T
    
    var path: [T] { get set }
    var sheetItem: T? { get set }
    var fullScreenItem: T? { get set }
    
    func route(_ type: RouteType<T>)
    
    func pop()
    
    func returnRoot()
}


enum RouteType<T> {
//    case push(_ screen: T) // It is not necessary to use because using Navigation Link directly
    case sheet(_ screen: T)
    case cover(_ screen: T)
}
