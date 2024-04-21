//
//  SwiftUIView.swift
//  
//
//  Created by Nap Works on 21/04/24.
//

import SwiftUI
import OSLog

@available(iOS 15.0, *)
public class VTHelper {
    private init (){}
    public static let shared: VTHelper = VTHelper()
    public let logger = Logger()
    private var canLog: Bool = true
    public func showError(_ tag: String, error: String){
        if canLog {
            logger.error("\(tag) : \(error)")
        }
    }
    
    public func showWarning(_ tag: String, error: String){
        if canLog {
            logger.warning("\(tag) : \(error)")
        }
    }
    
    public func showLog(_ tag: String, error: String){
        if canLog {
            logger.log("\(tag) : \(error)")
        }
    }
    
    public func canLog(_ isEnabled: Bool){
        self.canLog = isEnabled
    }
    
}

public extension Double {
    func timestampToDateString(_ format: String)-> String {
        let date = Date(timeIntervalSince1970: self)
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: date)
    }
}
