//
//  AuthorizationPage.swift
//  UIKITHomeWork3
//
//  Created by MacBook Air on 07.04.24.
//

import UIKit

class AuthorizationPage: UIViewController {
    let headImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    let headText: UILabel = {
        let headText = UILabel()
        headText.translatesAutoresizingMaskIntoConstraints = false
        headText.text = "მოგესალმებით!"
        headText.font = UIFont.boldSystemFont(ofSize: 28)
        
        
        return headText
    }()
    let about: UITextView = {
        let about = UITextView()
        about.translatesAutoresizingMaskIntoConstraints = false
        about.text = "გაიარეთ ავტორიზაცია ან გაიარეთ რეგისტრაცია ან ერთი ან მეორე აირჩიე ნუ ჩამოდექი ისე გაიარეთ ავტორიზაცია ან გაიარეთ რეგისტრაცია ან ერთი ან მეორე აირჩიე ნუ ჩამოდექი ისე"
        about.font = UIFont.systemFont(ofSize: 13)
        about.isEditable = false
        about.isScrollEnabled = false
        
        return about
    }()
    let authorisation: UILabel = {
        let authorisation = UILabel()
        authorisation.translatesAutoresizingMaskIntoConstraints = false
        authorisation.text = "ავტორიზაცია"
        authorisation.font = UIFont.systemFont(ofSize: 22)
        authorisation.textAlignment = .center
        
        
        
        return authorisation
    }()
    let line: UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = .cyan
        
        return line
    }()
    let logInStack: UIStackView = {
        let logInStack = UIStackView()
        logInStack.translatesAutoresizingMaskIntoConstraints = false
        
        return logInStack
    }()
    let secondLine: UIStackView = {
        let secondLine = UIStackView()
        secondLine.translatesAutoresizingMaskIntoConstraints = false
        //secondLine.backgroundColor = .lightGray
        
        
        return secondLine
    }()
    let bottomStack: UIStackView = {
        let bottomStack = UIStackView()
        bottomStack.translatesAutoresizingMaskIntoConstraints = false
        //bottomStack.backgroundColor = .lightGray
        
        return bottomStack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureStackView()
        configureSecondLineStack()
        configureBottomStack()
        addAnchors()
        
        
    }
    func addAnchors() {
        self.view.addSubview(headImage)
        NSLayoutConstraint.activate([
            headImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5),
            headImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            headImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            headImage.heightAnchor.constraint(equalToConstant: 50),
            
        ])
        if let image = UIImage(named: "greyApple") {
            headImage.image = image
        } else {
            headImage.image = UIImage(named: "defaultImage")
        }
        self.view.addSubview(headText)
        NSLayoutConstraint.activate([
            headText.topAnchor.constraint(equalTo: headImage.bottomAnchor, constant: 10), // 30 points below headImage
            headText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20), // 20 points left of the view
            headText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20) // 20 points right of the view
        ])
        
        self.view.addSubview(about)
        NSLayoutConstraint.activate([
            about.topAnchor.constraint(equalTo: headText.bottomAnchor, constant: 5),
            about.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            about.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        self.view.addSubview(authorisation)
        NSLayoutConstraint.activate([
            authorisation.topAnchor.constraint(equalTo: about.bottomAnchor, constant: 5),
            authorisation.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            authorisation.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        self.view.addSubview(line)
        NSLayoutConstraint.activate([
            line.heightAnchor.constraint(equalToConstant: 2),
            line.topAnchor.constraint(equalTo: authorisation.bottomAnchor, constant: 5),
            line.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            line.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        self.view.addSubview(logInStack)
        NSLayoutConstraint.activate([
            
            logInStack.topAnchor.constraint(equalTo: line.bottomAnchor, constant: 20),
            logInStack.heightAnchor.constraint(equalToConstant: 300),
            
            logInStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            logInStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            
            
        ])
        self.view.addSubview(secondLine)
        NSLayoutConstraint.activate([
            secondLine.topAnchor.constraint(equalTo: logInStack.bottomAnchor, constant: 20),
            secondLine.heightAnchor.constraint(equalToConstant: 30),
            
            secondLine.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            secondLine.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
        ])
        self.view.addSubview(bottomStack)
        NSLayoutConstraint.activate([
            bottomStack.topAnchor.constraint(equalTo: secondLine.bottomAnchor, constant: 20),
            bottomStack.heightAnchor.constraint(equalToConstant: 120),
            
            bottomStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            bottomStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
        ])
        
    }
    func configureStackView() {
        let fullName = UILabel()
        fullName.text = "სრული სახელი"
        
        let fullNameField = UITextField()
        fullNameField.placeholder = "მაგ: ქეთინო არაბული"
        fullNameField.borderStyle = .roundedRect
        
        let email = UILabel()
        email.text = "ელ ფოსტა"
        
        let emailField = UITextField()
        emailField.placeholder = "მაგ: კუსუნა@მაილ.რუ"
        emailField.borderStyle = .roundedRect
        
        let password = UILabel()
        password.text = "პაროლი"
        
        let passwordField = UITextField()
        passwordField.placeholder = "მაგ: busuna28"
        passwordField.borderStyle = .roundedRect
        
        let loginButton = UIButton()
        loginButton.setTitle("შესვლა", for: .normal)
        loginButton.backgroundColor = .cyan
        loginButton.layer.cornerRadius = 15
        loginButton.setTitleColor(.white, for: .normal)
        
        
        
        logInStack.axis = .vertical
        logInStack.distribution = .equalCentering // Ensure equal height for all arranged subviews
        
        logInStack.addArrangedSubview(fullName)
        logInStack.addArrangedSubview(fullNameField)
        logInStack.addArrangedSubview(email)
        logInStack.addArrangedSubview(emailField)
        logInStack.addArrangedSubview(password)
        logInStack.addArrangedSubview(passwordField)
        logInStack.addArrangedSubview(loginButton)
    }
    func configureSecondLineStack() {
        let leftLine = UIView()
        leftLine.backgroundColor = .lightGray
        leftLine.heightAnchor.constraint(equalToConstant: 2).isActive = true
        leftLine.widthAnchor.constraint(equalToConstant: 140).isActive = true
        
        let rightLine = UIView()
        rightLine.backgroundColor = .lightGray
        rightLine.heightAnchor.constraint(equalToConstant: 2).isActive = true
        rightLine.widthAnchor.constraint(equalToConstant: 140).isActive = true
        
        let and = UILabel()
        and.text = "ან"
        and.font = .systemFont(ofSize: 25)
        and.textColor = .black
        
        
        
        
        secondLine.axis = .horizontal
        secondLine.distribution = .equalSpacing
        secondLine.alignment = .center
        secondLine.spacing = 5
        
        
        secondLine.addArrangedSubview(leftLine)
        secondLine.addArrangedSubview(and)
        secondLine.addArrangedSubview(rightLine)
    }
    
    
    
    
    func configureBottomStack(){
        let google = UIButton()
        google.setTitle("გუგავა მოვა", for: .normal)
        google.backgroundColor = .lightGray
        google.layer.cornerRadius = 15
        google.setTitleColor(.black, for: .normal)
        google.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        let facebook = UIButton()
        facebook.setTitle("გამოიყენეთ გიასმკერდი", for: .normal)
        facebook.backgroundColor = .lightGray
        facebook.layer.cornerRadius = 15
        facebook.setTitleColor(.black, for: .normal)
        facebook.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        bottomStack.axis = .vertical
        bottomStack.distribution = .equalSpacing
        
        bottomStack.addArrangedSubview(google)
        bottomStack.addArrangedSubview(facebook)
        
    }
}
#Preview{
    AuthorizationPage()
}


