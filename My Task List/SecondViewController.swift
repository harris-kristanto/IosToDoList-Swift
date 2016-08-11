import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var txtTask : UITextField!
    @IBOutlet var txtDesc : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    @IBAction func btnAddTask_Click(sender: UIButton){
        taskMgr.addTask(txtTask.text!, desc:txtDesc.text!)
        self.view.endEditing(true)
        
        //Clears up the text boxes for user
        txtTask.text = ""
        txtDesc.text = ""
        
        //Jumps user back to first view(list of tasks)
        self.tabBarController?.selectedIndex = 0;
        
    }
    
    
    //iOS Touch Function
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    
    //UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }

}

