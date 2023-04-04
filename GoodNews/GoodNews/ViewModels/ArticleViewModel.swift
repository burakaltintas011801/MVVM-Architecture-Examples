//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by Compro on 4.04.2023.
//

import Foundation

// Creating a ViewModel which uses the ArticleViewModel because we need multiple Articles inside our Table View Controller.

struct ArticleListViewModel {
    let articles : [Article]
    
}

extension ArticleListViewModel
{
    var numberOfSections : Int {
        return 1
    }
    func numberOfRowsInSection (_ section:Int) -> Int
    {
        return self.articles.count
    }
    
    func articleAtIndex(_ index:Int) -> ArticleViewModel{
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}




//ArticleViewModel is responsible for JUST ONE  particular article, not all of them. Just One
struct ArticleViewModel
{
    private let article : Article
}

extension ArticleViewModel
{
    init(_ article:Article){
        self.article = article
    }
}

extension ArticleViewModel
{
    var title : String
    {
        return self.article.title
    }
    
    var description : String {
        return self.article.description
    }
}
