let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:polar0 = ["#FAFAFA", "NONE"]
let s:polar1 = ["#F4F4F5", "NONE"]
let s:polar2 = ["#EFEFF1", "NONE"]
let s:polar3 = ["#E9E9EC", 7]
let s:polar4 = ["#484851", 0]
let s:polar5 = ["#3C3C44", 0]
let s:polar6 = ["#303036", 0]
let s:polar7 = ["#459B9F", 6]
let s:polar8 = ["#33ADD4", 6]
let s:polar9 = ["#5C6F95", 4]
let s:polar10 = ["#5C6F95", 4]
let s:polar11 = ["#BC4E4C", 1]
let s:polar12 = ["#E9844A", 1]
let s:polar13 = ["#F5B54F", 3]
let s:polar14 = ["#3C8E5C", 2]
let s:polar15 = ["#826D97", 5]

let s:p.normal.left = [ [ s:polar3, s:polar9 ], [ s:polar0, s:polar1 ] ]
let s:p.normal.middle = [ [ s:polar5, s:polar3 ] ]
let s:p.normal.right = [ [ s:polar5, s:polar1 ], [ s:polar5, s:polar1 ] ]
let s:p.normal.warning = [ [ s:polar1, s:polar13 ] ]
let s:p.normal.error = [ [ s:polar1, s:polar11 ] ]

let s:p.inactive.left =  [ [ s:polar1, s:polar8 ], [ s:polar5, s:polar1 ] ]
let s:p.inactive.middle = [ [ s:polar5, s:polar1 ] ]
let s:p.inactive.right = [ [ s:polar5, s:polar1 ], [ s:polar5, s:polar1 ] ]

let s:p.insert.left = [ [ s:polar3, s:polar6 ], [ s:polar5, s:polar1 ] ]
let s:p.replace.left = [ [ s:polar1, s:polar13 ], [ s:polar5, s:polar1 ] ]
let s:p.visual.left = [ [ s:polar1, s:polar7 ], [ s:polar5, s:polar1 ] ]

let s:p.tabline.left = [ [ s:polar5, s:polar3 ] ]
let s:p.tabline.middle = [ [ s:polar5, s:polar3 ] ]
let s:p.tabline.right = [ [ s:polar5, s:polar3 ] ]
let s:p.tabline.tabsel = [ [ s:polar1, s:polar8 ] ]

let g:lightline#colorscheme#polar#palette = lightline#colorscheme#flatten(s:p)
