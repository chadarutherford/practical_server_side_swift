//
//  BlogCategoryAdminController.swift
//  
//
//  Created by Chad Rutherford on 7/2/20.
//

import Fluent
import Vapor

struct BlogCategoryAdminController: AdminViewController {
	
	typealias EditForm = BlogCategoryEditForm
	typealias Model = BlogCategoryModel
	
	var listView: String = "Blog/Admin/Categories/List"
	var editView: String = "Blog/Admin/Categories/Edit"
}
