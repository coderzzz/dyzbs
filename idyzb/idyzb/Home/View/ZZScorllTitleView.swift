//
//  ZZScorllTitleView.swift
//  idyzb
//
//  Created by Interest on 2017/1/19.
//  Copyright © 2017年 Interest. All rights reserved.
//

import UIKit

//MARK:- 定义协议
protocol ZZScorllTitleViewDelegate : class {
    
    func zzTitleView(titleView : ZZScorllTitleView, selectIndex : Int)
}


// MARK:- 定义类
class ZZScorllTitleView: UIView {

    //MARK:-定义属性
    private var titles :[String]
    weak var delegate : ZZScorllTitleViewDelegate?
    //MARK:-定义懒加载属性
    
    private lazy var titleLables :[UILabel] = [UILabel]()
    private lazy var scrollView : UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.bounces = false
        scrollView.backgroundColor = UIColor.clearColor()
        scrollView.scrollsToTop = false
        return scrollView
    }()
    private lazy var scrollviewline :UIView = {
        let line = UIView()
        line.backgroundColor = UIColor.orangeColor()
        return line
    }()
    
    //MARK:-自定义构造函数
    init(frame: CGRect ,titles:[String]) {
        self.titles = titles
        
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//MARK:-设置界面
extension ZZScorllTitleView{
    
    private func setupUI(){
        
        addSubview(scrollView)
        scrollView.frame = bounds
        scrollView.contentSize = bounds.size
        setupTitleLabels()
        setupButtomLine()
        setupScrollLine()
    }
    
    private func setupTitleLabels(){
        
        let labelW :CGFloat = frame.width / CGFloat(titles.count)
        let labelH :CGFloat = frame.height - 2
        let labelY :CGFloat = 0
        
        for (index, title) in titles.enumerate(){
            
            let label = UILabel()
            label.text = title
            label.tag = index
            label.font = UIFont.systemFontOfSize(14)
            label.textColor = UIColor.darkGrayColor()
            label.textAlignment = .Center
            label.frame = CGRect(x: labelW * CGFloat(index), y: labelY, width: labelW, height: labelH)
            scrollView.tag = 99;
            scrollView.addSubview(label)
            titleLables.append(label)
            
        }
        
        
    }
    
    private func setupButtomLine(){
        
        let buttomLine = UIView()
        buttomLine.frame = CGRect(x: 0, y: frame.height - 0.5, width: frame.width, height: 0.5)
        buttomLine.backgroundColor = UIColor.lightGrayColor()
        addSubview(buttomLine)
        
    }
    
    private func setupScrollLine(){
        
        let labelW :CGFloat = frame.width / CGFloat(titles.count)
        scrollviewline.frame = CGRect(x: 0, y: frame.height - 2, width: labelW, height: 4)
        scrollView.addSubview(scrollviewline)

    }
    
}

//MARK:-对外方法
extension ZZScorllTitleView{
    
    func setTitleWithProgess(progess : CGFloat){
        
        
    }
    
}

