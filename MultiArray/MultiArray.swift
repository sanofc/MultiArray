//
//  MultiArray.swift
//  MultiArray
//
//  Created by Hiroyuki Sano on 10/7/15.
//  Copyright © 2015 Hiroyuki Sano. All rights reserved.
//

import Foundation

class MultiArray<T>{
    
    var size:[Int]
    var data: [T?]
    
    init(size:Int...){
        self.size = size
        let multiply = { (a:Int, b:Int) -> Int in a * b}
        data = [T?](count: size.reduce(1,combine: multiply), repeatedValue: nil)
    }
    
    func indexIsValid(indeces:[Int]) -> Bool{
        var v:Bool = true
        for (i,index) in indeces.enumerate() {
            v = v && index>=0 && index<size[i]
        }
        return v
    }
    
    func createIndex(n:[Int]) -> Int{
        var index:Int = 0
        for (i,v) in n.enumerate(){
            var s:Int = 1
            for j in 0..<i{
                s *= size[j]
            }
            index += v * s
        }
        return index
    }
    
    subscript(n:Int...) -> T{
        get{
            assert(indexIsValid(n))
            return data[createIndex(n)]!
        }
        set{
            assert(indexIsValid(n))
            createIndex(n)
            data[createIndex(n)] = newValue
        }
    }
}