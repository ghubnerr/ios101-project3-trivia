//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Gabriel Hübner on 10/5/23.
//

import UIKit

class TriviaViewController: UIViewController {
    
    private var questions = [Question]()
    private var selectedQuestionIndex = 0

    @IBOutlet weak var questionNumber: UILabel!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var ans1: UIButton!
    @IBOutlet weak var ans2: UIButton!
    @IBOutlet weak var ans3: UIButton!
    @IBAction func didPressAns1(_ sender: Any) {
        selectedQuestionIndex = min(questions.count - 1, selectedQuestionIndex + 1)
        configure(with: questions[selectedQuestionIndex])
    }
    @IBAction func didPressAns2(_ sender: Any) {
        selectedQuestionIndex = min(questions.count - 1, selectedQuestionIndex + 1)
        configure(with: questions[selectedQuestionIndex])
    }
    @IBAction func didPressAns3(_ sender: Any) {
        selectedQuestionIndex = min(questions.count - 1, selectedQuestionIndex + 1)
        configure(with: questions[selectedQuestionIndex])
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        questions = createMockData()
        configure(with: questions[selectedQuestionIndex])
    
        // Do any additional setup after loading the view.
    }
    
    private func configure(with question: Question){
        questionNumber.text = question.questionNumber
        questionText.text = question.questionText
        ans1.setTitle(question.ans1, for: .normal)
        ans2.setTitle(question.ans2, for: .normal)
        ans3.setTitle(question.ans3, for: .normal)
    }
    
    private func createMockData() -> [Question] {
        let mockData1 = Question(questionNumber: "Question 1", questionText: "Why did the chicken cross the road?", ans1: "The chicken wanted to get to the other side of the road", ans2: "What's a chicken?", ans3: "She was running away from her husband")
        
        let mockData2 = Question(questionNumber: "Question 2", questionText: "Who was George Washignton?", ans1: "The first president of the United States", ans2: "An Alien", ans3: "Neither or both")
        
        let mockData3 = Question(questionNumber: "Question 3", questionText: "What is reinforcement learning?", ans1: "A type of supervised learning", ans2: "Definitely not a reinforcement-based learning", ans3: "Bellman equation and temporal difference stuff")
        
        return [mockData1, mockData2, mockData3]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
