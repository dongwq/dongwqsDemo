/* js resource config */

/* 
 *这里不需要使用绝对路径，直接使用相对路径 
 */

In.add('jquery',{path:'http://code.jquery.com/jquery-1.5.2.js',type:'js',charset:'utf-8'});
In.add('a',{path:'js/demo-files/a.js',type:'js',charset:'utf-8',rely:['d']});
In.add('b',{path:'js/demo-files/b.js',type:'js',charset:'utf-8',rely:['c']});
In.add('c',{path:'js/demo-files/c.js',type:'js',charset:'utf-8',rely:['a']});
In.add('d',{path:'js/demo-files/d.js',type:'js',charset:'utf-8'});
In.add('e',{path:'js/demo-files/e.js',charset:'utf-8',rely:['jquery']});
In.add('f',{path:'js/demo-files/f.js'}); //, rely:['b']
In.add('g',{path:'js/demo-files/g.css',rely:['f']});
In.add('h',{path:'js/demo-files/h.css'});

