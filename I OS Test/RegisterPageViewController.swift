//
//  RegisterPageViewController.swift
//  I OS Test
//
//  Created by Sergey Matveev on 25/12/2016.
//  Copyright © 2016 Greenlite.cg. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {
    
    @IBOutlet weak var userEmailTextField: UITextField!
    

    @IBOutlet weak var userPasswordTextField: UITextField!
    

    @IBOutlet weak var repeatPasswordTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        
        
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        let userRepeatPassword = repeatPasswordTextField.text;
        
        
        // Check for empty fields
        
        if userEmail!.isEmpty || userPassword!.isEmpty || userRepeatPassword!.isEmpty
            
        {
            //display alert message
            
            displayMyAlertMessage(userMessege: "All field are required ");
            return;
            
        }
        
        // Check if password match
        
        if (userPassword != userRepeatPassword)
            
        {
            
            displayMyAlertMessage(userMessege: "passwords do not match");
            
            return;
        }
        
       
        
      
        
        //Send user data to server side
        
        let myUrl = NSURL(string: "htpp://yandec.ur/user-register/userRegister.php")
    
        let request = NSMutableURLRequest(url:myUrl! as URL);
        request.httpMethod = "POST";
        let postString = "email=\(userEmail)&password=\(userPassword)";
        request.httpBody = postString.data(using: String.Encoding.utf8)
        
          
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    func displayMyAlertMessage(userMessege:String)
        
    {
        let myAlert = UIAlertController(title:"Alert", message:userMessege, preferredStyle: UIAlertControllerStyle.alert);
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default, handler:nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated:true, completion:nil);
        
    }
    
    
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    
    
    
    
    
    
}
