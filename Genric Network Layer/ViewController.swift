//
//  ViewController.swift
//  Genric Network Layer
//
//  Created by ahmedpro on 5/19/20.
//  Copyright © 2020 iti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // afdadfadfadfa

    override func viewDidLoad() {
        super.viewDidLoad()
        
        invokePostWithParamter(urlString: getURL(endPoint: .allVenues(userId: 146, pageNumber: 0)), onCompilition: {(response: ResponseArray<Venue>) in
            print(response.result.count)
            }) { error in
                print(error)
        }
    }

}

