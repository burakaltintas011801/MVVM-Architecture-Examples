//
//  Article.swift
//  GoodNews
//
//  Created by Compro on 4.04.2023.
//

import Foundation

struct ArticleList : Decodable
{
    let articles : [Article]
}

struct Article : Decodable {
    
    let title : String
    let description : String
}
