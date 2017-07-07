//
//  RefreshView.swift
//  pullToRefresh
//
//  Created by idea_liujl on 17/7/7.
//  Copyright © 2017年 idea_liujl. All rights reserved.
//

import UIKit


private let kSHeight:CGFloat=120.0


class RefreshView: UIView,UIScrollViewDelegate {
    
    
    private unowned var scrollView:UIScrollView
    private var progress:CGFloat=0.0
    
    init(frame: CGRect,scrollView:UIScrollView) {
        self.scrollView=scrollView
        super.init(frame:frame)
        backgroundColor=UIColor.blueColor()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updataBackgroundColor(){
        backgroundColor = UIColor(white: 0.7 * progress + 0.2, alpha: 1.0)
    }
    
    
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        let refeshHeight=max(0, -scrollView.contentOffset.y - scrollView.contentInset.top)
        progress = min(1, refeshHeight/kSHeight)
        updataBackgroundColor()
        
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
