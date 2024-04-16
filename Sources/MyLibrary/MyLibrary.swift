// The Swift Programming Language
// https://docs.swift.org/swift-book

public struct MyLibrary {
    private init(){ }
    public static let shared = MyLibrary()
    
    public static func sayHello(){
        print("Hello World")
    }
}
