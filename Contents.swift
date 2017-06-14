//: Playground - noun: a place where people can play

import UIKit

var initialScore = 501

var round = 1


while round < 4 {
    while initialScore > 0 {
        var roundScore = Int()
        var overallScore = Int()
        
        let outerBullsEye = 25
        let innerBullsEye = 50
        
        var possibleScoreHit = false
        var outerBullsEyeHit = false
        var innerBullsEyeHit = false
        
        func possibleScore(){
            if possibleScoreHit {
                for score in 1...20 {
                    overallScore += score
                    roundScore = (initialScore-overallScore)
                }
            }
        }
        
        possibleScoreHit = true
        possibleScore()
        
        func outerBullsEyeScore(x: Int){
            if outerBullsEyeHit {
                overallScore += x
                roundScore = (initialScore-overallScore)
            }
        }
        
        outerBullsEyeHit = true
        outerBullsEyeScore(x: outerBullsEye)
        
        func innerBullsEyeScore(x: Int){
            if innerBullsEyeHit {
                overallScore += x
                roundScore = (initialScore-overallScore)
            }
        }
        
        innerBullsEyeHit = true
        innerBullsEyeScore(x: innerBullsEye)
        
        initialScore -= overallScore
        
        print("Round \(round) \nRound Score: \(roundScore)\nOverall Score: \(overallScore)")
        round+=1
        
    }
    
    if initialScore < 0 {
        print("Game Over")
        round = 5
    }
}