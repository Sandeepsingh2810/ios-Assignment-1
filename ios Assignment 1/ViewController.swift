//
//  ViewController.swift
//  ios Assignment 1
//
//  Created by Sandeep Jangra on 2020-01-14.
//  Copyright © 2020 Sandeep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var space: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageView.frame.origin.y = self.space.bounds.minY
        self.imageView.frame.origin.x = self.space.bounds.minX
        
        UIView.animate(withDuration: 1, animations: {
                   
                    if self.imageView.frame.origin.y == self.space.bounds.minY && self.imageView.frame.origin.x == self.space.bounds.minX
                                 {
                    
                                 self.imageView.frame.origin.y += self.space.bounds.height - self.imageView.bounds.height
                                 }
        },completion:nil)
        
        let swipeRight=UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeRight.direction=UISwipeGestureRecognizer.Direction.right
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft=UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeLeft.direction=UISwipeGestureRecognizer.Direction.left
        view.addGestureRecognizer(swipeLeft)
        
     //  moveCounterClockwise()
        
    }
    
    @objc func swiped(gesture:UISwipeGestureRecognizer)
    {
       self.imageView.frame.origin.y = self.space.bounds.minY
       self.imageView.frame.origin.x = self.space.bounds.minX
       
       let swipeGesture=gesture as? UISwipeGestureRecognizer
        switch swipeGesture?.direction {
            case UISwipeGestureRecognizer.Direction.right:
                
                moveClockwise()
            break
                case UISwipeGestureRecognizer.Direction.left:
                moveCounterClockwise()
            break
            default:
                break
            }
        
    }
    
    func moveCounterClockwise()
    {
       
               
                
                   
        UIView.animate(withDuration: 1, animations: {
                   
                    if self.imageView.frame.origin.y == self.space.bounds.minY && self.imageView.frame.origin.x == self.space.bounds.minX
                    {
        //            print(self.space.bounds.minX)
        //            print(self.space.bounds.minY)
                         self.imageView.frame.origin.x += self.space.bounds.width - self.imageView.bounds.width
                  //  self.imageView.frame.origin.y += self.space.bounds.height - self.imageView.bounds.height
                        
                        
                    }
                  
                
                
                },completion:{ (true) in
                    UIView.animate(withDuration: 1, animations: {
                        if self.imageView.frame.origin.y == self.space.bounds.minY && self.imageView.frame.origin.x == self.space.bounds.width - self.imageView.bounds.width
//
                                  {
                                     self.imageView.frame.origin.y += self.space.bounds.height - self.imageView.bounds.height
                                    
                                   
                                            }
                    },completion: {
                        (true) in
                        UIView.animate(withDuration: 1, animations: {
                            if self.imageView.frame.origin.y == self.space.bounds.height - self.imageView.bounds.height && self.imageView.frame.origin.x == self.space.bounds.width - self.imageView.bounds.width
                                      {
                                        self.imageView.frame.origin.x -= self.space.bounds.width - self.imageView.bounds.width
                                                }
                        },completion:{
                            (true) in
                            UIView.animate(withDuration: 1, animations: {
                               if  self.imageView.frame.origin.y == self.space.bounds.height - self.imageView.bounds.height && self.imageView.frame.origin.x == self.space.bounds.minX
                               
                                          {
                                                
                                            self.imageView.frame.origin.y -= self.space.bounds.height - self.imageView.bounds.height
                                           
                                                    }
                            },completion:nil)
                            
                        })
                        
                    })
                })
    }
    
    func moveClockwise()
    {
        self.imageView.frame.origin.y = self.space.bounds.minY
                self.imageView.frame.origin.x = self.space.bounds.minX
                
                   
        UIView.animate(withDuration: 1, animations: {
                   
                    if self.imageView.frame.origin.y == self.space.bounds.minY && self.imageView.frame.origin.x == self.space.bounds.minX
                    {
       
                    self.imageView.frame.origin.y += self.space.bounds.height - self.imageView.bounds.height
                        
                        
                    }
                },completion:{ (true) in
                    UIView.animate(withDuration: 1, animations: {
                        if self.imageView.frame.origin.y == self.space.bounds.height - self.imageView.bounds.height && self.imageView.frame.origin.x == self.space.bounds.minX
                                  {
                                                self.imageView.frame.origin.x += self.space.bounds.width - self.imageView.bounds.width
                                            }
                    },completion: {
                        (true) in
                        UIView.animate(withDuration: 1, animations: {
                            if self.imageView.frame.origin.y == self.space.bounds.height - self.imageView.bounds.height && self.imageView.frame.origin.x == self.space.bounds.width - self.imageView.bounds.width
                                      {
                                        self.imageView.frame.origin.y -= self.space.bounds.height - self.imageView.bounds.height
                                                }
                        },completion:{
                            (true) in
                            UIView.animate(withDuration: 1, animations: {
                                if self.imageView.frame.origin.y == self.space.bounds.minY && self.imageView.frame.origin.x == self.space.bounds.width - self.imageView.bounds.width
                                          {
                                                        self.imageView.frame.origin.x -= self.space.bounds.width - self.imageView.bounds.width
                                                    }
                            },completion: nil)
                        })
                        
                    })
                })
    }

    }






