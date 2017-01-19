//
//  ZZScrollContentView.swift
//  idyzb
//
//  Created by Interest on 2017/1/19.
//  Copyright © 2017年 Interest. All rights reserved.
//

import UIKit

private let ContentCellID = "ContentCellID"

class ZZScrollContentView: UIView {

    private var contentViews :[UIView]
    
    private lazy var collectiontView : UICollectionView = {
   
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .Horizontal
        
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collectionView.showsVerticalScrollIndicator = false
        collectionView.bounces = false

        return collectionView
    }()
    
    init(frame: CGRect,views:[UIView]) {
        
        contentViews = views
        
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

// MARK:-初始化页面
extension ZZScrollContentView{
    
    private func setupUI(){
        
    }
    
    
}


