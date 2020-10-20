//
//  RadixProtocol.swift
//  SwiftRadix
//
//  Created by Steffan Andrews on 2020-09-13.
//  MIT License
//  https://github.com/orchetect/SwiftRadix
//

import Foundation

// Protocol is necessary in order to create asociatedtype-erased extensions
// such as:
// extension Collection where Element : RadixProtocol { }

public protocol RadixProtocol {
	
	associatedtype NumberType: BinaryInteger
	
	var value: NumberType { get set }
	
	var stringPrefix: String { get }
	var base: Int { get set }
	
	init(_ number: NumberType, base: Int)
	init?(_ string: String, base: Int)
	
	var stringValue: String { get set }
	func stringValue(padTo: Int, splitEvery: Int, prefix: Bool) -> String
	func stringValue(padToEvery: Int, splitEvery: Int, prefix: Bool) -> String
	
}