class Page < ActiveRecord::Base
extend ActsAsTree::TreeView
 acts_as_tree order: "path"
end

root      = Page.create("path" => "root")
child1    = root.children.create("path" => "classII")
subchild1 = child1.children.create("path" => "casestudies")
subchild2 = subchild1.children.create("path" => "intermediate")
