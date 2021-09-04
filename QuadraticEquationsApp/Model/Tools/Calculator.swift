//
//  Calculator.swift
//  QuadraticEquationsApp
//
//  Created by user193919 on 9/1/21.
//

import Foundation
import Numerics

public class Calculator {
    public func solveEquation(equation: Equation) -> Solution {
        // Instantiate result
        var result: Solution = Solution(rootOne: "", rootTwo: "")
        // Calculate discriminant
        let discriminant: Float = (equation.b * equation.b) - (4 * equation.a * equation.c)
        // Solve the equation based on the value of the discriminant
        if discriminant >= 0 {
            let rOne: Float = (0 - equation.b + sqrtf(discriminant)) / (2 * equation.a)
            let rTwo: Float = (0 - equation.b - sqrtf(discriminant)) / (2 * equation.a)
            // Assign roots
            result.rootOne = String(rOne)
            result.rootTwo = String(rTwo)
        } else {
            // Calculate complex roots
            let imaginary_num: Float = sqrtf(discriminant*(-1)) / (2 * equation.a)
            let real_num: Float = 0 - equation.b / (2 * equation.a)
            let rOne: String = String(real_num) + " + " + String(imaginary_num) + "i"
            let rTwo: String = String(real_num) + " - " + String(imaginary_num) + "i"
            // Assign roots
            result.rootOne = String(rOne)
            result.rootTwo = String(rTwo)
        }
        
        return result
        
    }

}
