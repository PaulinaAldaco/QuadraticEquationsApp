//
//  Calculator.swift
//  QuadraticEquationsApp
//
//  Created by user193919 on 9/1/21.
//

import Foundation
import Numerics

public class Calculator {
    public func solveEquation(equation: Equation) -> QuadraticSolution {
        // Calculate discriminant
        let discriminant: Float = (equation.b * equation.b) - (4 * equation.a * equation.c)
        
        switch discriminant {
        case _ where discriminant >= 0:
            let rOne: Float = (0 - equation.b + sqrtf(discriminant)) / (2 * equation.a)
            let rTwo: Float = (0 - equation.b - sqrtf(discriminant)) / (2 * equation.a)
            return .Real(rootOne: rOne, rootTwo: rTwo)
        default:
            let rOne: Complex<Float> = Complex<Float>((0 - equation.b + sqrtf(discriminant)) / (2 * equation.a))
            let rTwo: Complex<Float> = Complex<Float>((0 - equation.b - sqrtf(discriminant)) / (2 * equation.a))
            return .Complex(rootOne: rOne, rootTwo: rTwo)
        }
        
    }
    
    // What will be returned
    public enum QuadraticSolution {
        case Real(rootOne: Float, rootTwo: Float)
        case Complex(rootOne: Complex<Float>, rootTwo: Complex<Float>)
    }
}
