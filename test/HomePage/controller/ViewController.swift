//
//  ViewController.swift
//  test
//
//  Created by Peoplelink on 28/12/22.
//

import UIKit


protocol Nav {
    func navigateProfile()
    func navigateLikes()
}

var data = APIcall(allData: [Object(userUniqueId: "asheesh.sharma1", name: "Asheesh Sharma", avatarPhoto: "photo", postPhoto: [PostPicVideoList(whoCreated: "asheesh.sharma1", postId: "101", photo: ["photo"], video: [""], likes: ["","","",""], caption: "Hello i am Asheesh nice to meet you", comment: [PersonWithComment(name: "manish", comment: "nice pic")], time: "4h", place: "GLA University")]),
                             
    Object(userUniqueId: "manish7266", name: "manish dhakrey", avatarPhoto: "photo2", postPhoto: [PostPicVideoList(whoCreated: "manish7266", postId: "101", photo: ["photo2"], video: [""], likes: ["asheesh.sharma1","mainsh7266",""], caption: "Hello i am mainsh nice to meet you", comment: [PersonWithComment(name: "asheesh.sharma1", comment: " awsome")], time: "4h", place: "GLA University")]),
    
    Object(userUniqueId: "shreyash3232", name: "Shreyash", avatarPhoto: "photo3", postPhoto: [PostPicVideoList(whoCreated: "shreyash3232", postId: "101", photo: ["photo3"], video: [""], likes: ["manish7266","asheesh.sharma1","shreyash3232"], caption: "Hello i am Shreyash nice to meet you", comment: [PersonWithComment(name: "manish3232", comment: "GAJAB")], time: "4h", place: "GLA University")]),
                             
    Object(userUniqueId: "shreyash3232", name: "Shreyash", avatarPhoto: "photo3", postPhoto: [PostPicVideoList(whoCreated: "shreyash3232", postId: "101", photo: ["photo3"], video: [""], likes: ["manish7266","asheesh.sharma1","shreyash3232"], caption: "Hello i am Shreyash nice to meet you", comment: [PersonWithComment(name: "manish3232", comment: "GAJAB")], time: "4h", place: "GLA University")]),
    
    Object(userUniqueId: "shreyash3232", name: "Shreyash", avatarPhoto: "photo3", postPhoto: [PostPicVideoList(whoCreated: "shreyash3232", postId: "101", photo: ["photo3"], video: [""], likes: ["manish7266","asheesh.sharma1","shreyash3232"], caption: "Hello i am Shreyash nice to meet you", comment: [PersonWithComment(name: "manish3232", comment: "GAJAB")], time: "4h", place: "GLA University")]),
    
    Object(userUniqueId: "shreyash3232", name: "Shreyash", avatarPhoto: "photo3", postPhoto: [PostPicVideoList(whoCreated: "shreyash3232", postId: "101", photo: ["photo3"], video: [""], likes: ["manish7266","asheesh.sharma1","shreyash3232"], caption: "Hello i am Shreyash nice to meet you", comment: [PersonWithComment(name: "manish3232", comment: "GAJAB")], time: "4h", place: "GLA University")]),
                             
    Object(userUniqueId: "shreyash3232", name: "Shreyash", avatarPhoto: "photo3", postPhoto: [PostPicVideoList(whoCreated: "shreyash3232", postId: "101", photo: ["photo3"], video: [""], likes: ["manish7266","asheesh.sharma1","shreyash3232"], caption: "Hello i am Shreyash nice to meet you", comment: [PersonWithComment(name: "manish3232", comment: "GAJAB")], time: "4h", place: "GLA University")]),
                             
    Object(userUniqueId: "shreyash3232", name: "Shreyash", avatarPhoto: "photo3", postPhoto: [PostPicVideoList(whoCreated: "shreyash3232", postId: "101", photo: ["photo3"], video: [""], likes: ["manish7266","asheesh.sharma1","shreyash3232"], caption: "Hello i am Shreyash nice to meet you", comment: [PersonWithComment(name: "manish3232", comment: "GAJAB")], time: "4h", place: "GLA University")]),
                             
    Object(userUniqueId: "shreyash3232", name: "Shreyash", avatarPhoto: "photo3", postPhoto: [PostPicVideoList(whoCreated: "shreyash3232", postId: "101", photo: ["photo3"], video: [""], likes: ["manish7266","asheesh.sharma1","shreyash3232"], caption: "Hello i am Shreyash nice to meet you", comment: [PersonWithComment(name: "manish3232", comment: "GAJAB")], time: "4h", place: "GLA University")]),
                             
    Object(userUniqueId: "shreyash3232", name: "Shreyash", avatarPhoto: "photo3", postPhoto: [PostPicVideoList(whoCreated: "shreyash3232", postId: "101", photo: ["photo3"], video: [""], likes: ["manish7266","asheesh.sharma1","shreyash3232"], caption: "Hello i am Shreyash nice to meet you", comment: [PersonWithComment(name: "manish3232", comment: "GAJAB")], time: "4h", place: "GLA University")])
                             
                            ])

class ViewController: UIViewController, Nav {
    func navigateProfile() {
        guard let profileVC = UIStoryboard(name: "Profile", bundle: nil).instantiateViewController(withIdentifier: "ProfileViewController") as? ProfileViewController else {return}
        self.navigationController?.pushViewController(profileVC, animated: true)
        print("hi")
    }
    
    func navigateLikes() {
        guard let likesVC = UIStoryboard(name: "Likes", bundle: nil).instantiateViewController(withIdentifier: "LikesViewController") as? LikesViewController else {return}
        self.navigationController?.pushViewController(likesVC, animated: true)
//        self.presentM
        print("hii")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    

    

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell") as? TableCell else { return UITableViewCell()}
            
            return cell
        }
        else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableCellPost") as? TableCellPost else {
                return UITableViewCell()}
            cell.postPhoto.image = UIImage(named: data.allData[indexPath.row-1].postPhoto[0].photo[0])
            
            cell.profilepostimg.image = UIImage(named: data.allData[indexPath.row-1].avatarPhoto)
            
            cell.likedphoto1.image =  UIImage(named: data.allData[0].avatarPhoto)
            
            cell.likedphoto2.image =  UIImage(named: data.allData[1].avatarPhoto)
            
            cell.likedphoto3.image =  UIImage(named: data.allData[2].avatarPhoto)
            
            cell.uniqueName.text = data.allData[indexPath.row-1].userUniqueId
            
            cell.userPlace.text = data.allData[indexPath.row-1].postPhoto[0].place
            
            
            cell.numberOfComments.setTitle("View all \(data.allData[indexPath.row-1].postPhoto[0].comment.count) comments", for: .normal)
            
            cell.numberOfLikes.text = "and \(data.allData[indexPath.row-1].postPhoto[0].likes.count) others"
            
            cell.firstLiked.text = data.allData[indexPath.row-1].userUniqueId
            
            cell.aboveCommentName.setTitle(data.allData[indexPath.row-1].userUniqueId, for: .normal)
            
            cell.call = self
            
            return cell;
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 116
        }
        else {
            return 587
        }
    }
    
    
}
