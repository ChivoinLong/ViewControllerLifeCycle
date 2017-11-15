//
//  SecondViewController.swift
//  ViewControllerLifeCycle
//
//  Created by Obi-Voin Kenobi on 11/15/17.
//  Copyright © 2017 Obi-Voin Kenobi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func didPressGoBackButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //
    //  Just Override Events below
    //  show() & showDetailViewController() not working
    //
    
    private let TAG = "SECOND:"
    private var order = 1
    
    
    override func loadView() {
        super.loadView()
        print("\(TAG) loadView() called \(order)")
        order += 1
    }
    
    override func loadViewIfNeeded() {
        super.loadViewIfNeeded()
        print("\(TAG) loadViewIfNeeded() called \(order)")
        order += 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(TAG) viewDidLoad() called \(order)")
        order += 1
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("\(TAG) viewWillAppear() called \(order)")
        order += 1
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("\(TAG) viewDidAppear() called \(order)")
        order += 1
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("\(TAG) viewDidDisappear() called \(order)")
        order += 1
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("\(TAG) viewWillDisappear() called \(order)")
        order += 1
    }
    
//    override func show(_ vc: UIViewController, sender: Any?) {
//        super.show(vc, sender: sender)
//        print("\(TAG) show() called \(order)")
//        order += 1
//    }

//    override func showDetailViewController(_ vc: UIViewController, sender: Any?) {
//        super.showDetailViewController(vc, sender: sender)
//        print("\(TAG) showDetailViewController() called \(order)")
//        order += 1
//    }

    override func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil) {
        super.present(viewControllerToPresent, animated: flag, completion: completion)
        print("\(TAG) present() called \(order)")
        order += 1
    }
    
    override func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) {
        super.dismiss(animated: flag, completion: completion)
        print("\(TAG) dismiss() called \(order)")
        order += 1
    }
    
    override func encodeRestorableState(with coder: NSCoder) {
        super.encodeRestorableState(with: coder)
        print("\(TAG) encodeRestorableState() called \(order)")
        order += 1
    }
    
    override func decodeRestorableState(with coder: NSCoder) {
        super.decodeRestorableState(with: coder)
        print("\(TAG) decodeRestorableState() called \(order)")
        order += 1
    }
    
    override func applicationFinishedRestoringState() {
        super.applicationFinishedRestoringState()
        print("\(TAG) applicationFinishedRestoringState() called \(order)")
        order += 1
    }


}
