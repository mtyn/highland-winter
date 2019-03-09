let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:hw0 = ["#FAFAFA", "NONE"]
let s:hw1 = ["#F4F4F5", "NONE"]
let s:hw2 = ["#EFEFF1", "NONE"]
let s:hw3 = ["#E9E9EC", 7]
let s:hw4 = ["#484851", 0]
let s:hw5 = ["#3C3C44", 0]
let s:hw6 = ["#303036", 0]
let s:hw7 = ["#459B9F", 6]
let s:hw8 = ["#33ADD4", 6]
let s:hw9 = ["#5C6F95", 4]
let s:hw10 = ["#5C6F95", 4]
let s:hw11 = ["#BC4E4C", 1]
let s:hw12 = ["#E9844A", 1]
let s:hw13 = ["#F5B54F", 3]
let s:hw14 = ["#3C8E5C", 2]
let s:hw15 = ["#826D97", 5]

let s:p.normal.left = [ [ s:hw3, s:hw9 ], [ s:hw0, s:hw1 ] ]
let s:p.normal.middle = [ [ s:hw5, s:hw3 ] ]
let s:p.normal.right = [ [ s:hw5, s:hw1 ], [ s:hw5, s:hw1 ] ]
let s:p.normal.warning = [ [ s:hw1, s:hw13 ] ]
let s:p.normal.error = [ [ s:hw1, s:hw11 ] ]

let s:p.inactive.left =  [ [ s:hw1, s:hw8 ], [ s:hw5, s:hw1 ] ]
let s:p.inactive.middle = [ [ s:hw5, s:hw1 ] ]
let s:p.inactive.right = [ [ s:hw5, s:hw1 ], [ s:hw5, s:hw1 ] ]

let s:p.insert.left = [ [ s:hw3, s:hw6 ], [ s:hw5, s:hw1 ] ]
let s:p.replace.left = [ [ s:hw1, s:hw13 ], [ s:hw5, s:hw1 ] ]
let s:p.visual.left = [ [ s:hw1, s:hw7 ], [ s:hw5, s:hw1 ] ]

let s:p.tabline.left = [ [ s:hw5, s:hw3 ] ]
let s:p.tabline.middle = [ [ s:hw5, s:hw3 ] ]
let s:p.tabline.right = [ [ s:hw5, s:hw3 ] ]
let s:p.tabline.tabsel = [ [ s:hw1, s:hw8 ] ]

let g:lightline#colorscheme#highland_winter#palette = lightline#colorscheme#flatten(s:p)
