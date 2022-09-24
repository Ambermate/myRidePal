//
//  DataStructure.swift
//  myRidePal
//
//  Created by Long Hai on 9/23/22.
//

import FirebaseFirestoreSwift
import Foundation
import UIKit

struct User: Identifiable, Hashable, Decodable {
    @DocumentID var id: String?
    var name = ""
    var imageURL = ""
    var from = ""
    var destination = ""
    var time = ""
    var description = ""
    var to = ""
}


