//
//  ToDoItemView.swift
//  CoreDataToDo
//
//  Created by Kafilah on 1/11/20.
//  Copyright © 2020 Yoga Kurniawan. All rights reserved.
//

import SwiftUI

func getFormattedDate(_ date:String) -> String {
    let dateFormatterGet = DateFormatter()
    dateFormatterGet.dateFormat = "yyyy-MM-dd HH:mm:ss"
    
    let dateFormatterPrint = DateFormatter()
    dateFormatterPrint.dateFormat = "MMM dd, yyyy"
    
    let date = dateFormatterGet.date(from: date) ?? Date()
    return dateFormatterPrint.string(from: date)
}

struct ToDoItemView: View {
    var title:String = ""
    var createdAt:String = ""
    
    var body: some View {
        HStack{
            VStack(alignment: .leading) {
                Text(title).font(.headline)
                Text(getFormattedDate(createdAt)).font(.caption)
            }
        }
    }
}

struct ToDoItemView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoItemView(title: "Hello World!", createdAt: "Today")
    }
}
