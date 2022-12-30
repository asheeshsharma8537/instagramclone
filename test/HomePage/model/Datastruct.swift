//
//  Datastruct.swift
//  test
//
//  Created by Peoplelink on 28/12/22.
//

import Foundation


struct APIcall {
    var allData:[Object]
}
struct Object {
    var userUniqueId: String
    var name: String
//    var bio: String
//    var anyOtherAccountLink: String
//    var followers: String
//    var following: String
    var avatarPhoto: String
    var postPhoto: [PostPicVideoList]
//    var highlights: [SpecificHighlight]
//    var story: [PicNameAndCaption]
//    var storyViewedBy: [StoryReaction]
}
struct PicNameAndCaption {
    var photo: String
    var caption: [String]
}
struct SpecificHighlight {
    var photo : [String]
}

struct StoryReaction {
    var name: Object
    var reaction : String
}


struct PostPicVideoList {
    var whoCreated: String
    var postId: String
    var photo: [String]
    var video: [String]
    var likes: [String]
    var caption: String
    var comment: [PersonWithComment]
    var time: String
    var place: String
}

struct PersonWithComment {
    var name : String
    var comment : String
}


