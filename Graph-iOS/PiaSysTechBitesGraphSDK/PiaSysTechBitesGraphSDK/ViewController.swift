//
//  ViewController.swift
//  PiaSysTechBitesGraphSDK
//
//  Created by Paolo Pialorsi on 30/12/21.
//

import UIKit
import MSGraphClientModels

class ViewController: UIViewController {

    var loggingText: UITextView!
    var signInButton: UIButton!
    var signOutButton: UIButton!
    var callGraphButton: UIButton!

    override func viewDidLoad() {

        super.viewDidLoad()

        initUI()
        initAuth()
    }
    
    func initUI() {

        // Add sign in button
        signInButton = UIButton()
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.setTitleColor(.blue, for: .normal)
        signInButton.setTitleColor(.gray, for: .disabled)
        signInButton.addTarget(self, action: #selector(signIn(_:)), for: .touchUpInside)
        self.view.addSubview(signInButton)

        signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signInButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 120.0).isActive = true
        signInButton.widthAnchor.constraint(equalToConstant: 150.0).isActive = true
        signInButton.heightAnchor.constraint(equalToConstant: 50.0).isActive = true

        // Add call Graph button
        callGraphButton  = UIButton()
        callGraphButton.translatesAutoresizingMaskIntoConstraints = false
        callGraphButton.setTitle("Call Microsoft Graph API", for: .normal)
        callGraphButton.setTitleColor(.blue, for: .normal)
        callGraphButton.addTarget(self, action: #selector(callGraphAPI(_:)), for: .touchUpInside)
        self.view.addSubview(callGraphButton)

        callGraphButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        callGraphButton.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 10.0).isActive = true
        callGraphButton.widthAnchor.constraint(equalToConstant: 300.0).isActive = true
        callGraphButton.heightAnchor.constraint(equalToConstant: 50.0).isActive = true

        // Add sign out button
        signOutButton = UIButton()
        signOutButton.translatesAutoresizingMaskIntoConstraints = false
        signOutButton.setTitle("Sign Out", for: .normal)
        signOutButton.setTitleColor(.blue, for: .normal)
        signOutButton.setTitleColor(.gray, for: .disabled)
        signOutButton.addTarget(self, action: #selector(signOut(_:)), for: .touchUpInside)
        self.view.addSubview(signOutButton)

        signOutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signOutButton.topAnchor.constraint(equalTo: callGraphButton.bottomAnchor, constant: 10.0).isActive = true
        signOutButton.widthAnchor.constraint(equalToConstant: 150.0).isActive = true
        signOutButton.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        signOutButton.isHidden = true

        // Add logging textfield
        loggingText = UITextView()
        loggingText.isUserInteractionEnabled = false
        loggingText.translatesAutoresizingMaskIntoConstraints = false

        self.view.addSubview(loggingText)

        loggingText.topAnchor.constraint(equalTo: signOutButton.bottomAnchor, constant: 10.0).isActive = true
        loggingText.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 10.0).isActive = true
        loggingText.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -10.0).isActive = true
        loggingText.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 10.0).isActive = true
    }
    
    func initAuth() {

        AuthenticationManager.instance.getTokenSilently {
            (token: String?, error: Error?) in

            DispatchQueue.main.async {

                guard let _ = token, error == nil else {
                    // If there is no token or if there's an error,
                    // no user is signed in, so stay here
                    return
                }

                // Since we got a token, a user is signed in
                self.loggingText.text = "User authenticated silently!"
                self.signInButton.isHidden = true
                self.signOutButton.isHidden = false
            }
        }

    }
    
    @objc func signIn(_ sender: AnyObject) {

        // Do an interactive sign in
        AuthenticationManager.instance.getTokenInteractively(parentView: self) {
            (token: String?, error: Error?) in

            DispatchQueue.main.async {

                guard let _ = token, error == nil else {
                    // Show the error and stay on the sign-in page
                    let alert = UIAlertController(title: "Error signing in",
                                                  message: error.debugDescription,
                                                  preferredStyle: .alert)

                    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(alert, animated: true)
                    return
                }

                // Signed in successfully
                self.loggingText.text = "User authenticated interactively!"
                self.signInButton.isHidden = true
                self.signOutButton.isHidden = false
            }
        }
    }
    
    @objc func callGraphAPI(_ sender: AnyObject) {
        
        GraphManager.instance.getEvents {
            (eventsArray: [MSGraphEvent]?, error: Error?) in

            DispatchQueue.main.async {

                guard let events = eventsArray, error == nil else {
                    print("Error getting user's events: \(String(describing: error))")
                    return
                }

                self.loggingText.text = "Retrieved \(events.capacity) events from Graph!"
            }
        }

    }

    @objc func signOut(_ sender: AnyObject) {
        AuthenticationManager.instance.signOut()
        self.signInButton.isHidden = false
        self.signOutButton.isHidden = true
        self.loggingText.text = ""
    }
}

