 
var windo = '<a target="_self" class="nav" onMouseover="this.className=\'navhover\'" onMouseout="this.className=\'nav\'" href="';
var windochk = '';
function windotargt(){
if(document.getElementById('newwin').checked == true){
windo = '<a target="_blank" class="nav" onMouseover="this.className=\'navhover\'" onMouseout="this.className=\'nav\'" href="';
windochk = 'CHECKED';
} else {
windo = '<a target="_self" class="nav" onMouseover="this.className=\'navhover\'" onMouseout="this.className=\'nav\'" href="';
windochk = '';}}

function loadstyl(){
if(top.location.href != self.location.href) top.location.href = self.location.href;
if(document.all){
document.styleSheets[0].addRule('html','height:100%;');
document.styleSheets[0].addRule('body','margin:0px; padding:0px; font-family:arial; font-size:14px; line-height:1.2; background-color:#ECE9D8;');
document.styleSheets[0].addRule('a:link','color:#000000;');
document.styleSheets[0].addRule('a:visited','color:#000000;');
document.styleSheets[0].addRule('a:hover','color:#0000FF;');
document.styleSheets[0].addRule('a:active','color:#000000;');
document.styleSheets[0].addRule('h1','font-size:16px; font-weight:bold; margin:0px; padding:0px 0px 4px 0px;');
document.styleSheets[0].addRule('table','border-collapse:collapse;');
document.styleSheets[0].addRule('table, td','padding:0px;');
document.styleSheets[0].addRule('textarea','font-family:arial; font-size:14px; line-height:1.2; overflow:scroll; margin:0px; padding:3px 0px 0px 3px; border:0px solid #000000;');
document.styleSheets[0].addRule('.buttn','width:auto; overflow:visible; margin:3px 0px 0px 0px; padding-left:3px; padding-right:3px; background-color:#F0F0F0; border:0px solid #000000; font-size:14px; font-family:arial; cursor:pointer; cursor:hand;');
document.styleSheets[0].addRule('.buttn:hover','border-color:#0000FF; background-color:#CCFFFF;');
document.styleSheets[0].addRule('#toolpadding','padding:10px;');
document.styleSheets[0].addRule('#tool','position:absolute; z-index:1; left:0px; top:0px; width:100%; height:100%; margin:0px; padding:0px; overflow:auto; background-color:#ECE9D8;');
document.styleSheets[0].addRule('.nav','display:block; margin:0px; padding:0px; background-color:#ECE9D8; text-decoration:none;');
document.styleSheets[0].addRule('.navhover','display:block; margin:0px; padding:0px; background-color:#FFFFFF; text-decoration:none;');
document.styleSheets[0].addRule('#menu','position:absolute; z-index:-1; left:0px; top:0px; width:0px; height:0%; margin:0px; overflow:auto; overflow-y:scroll; white-space:nowrap; background-color:#ECE9D8;');
} else {
document.styleSheets[0].insertRule('#menu {position:absolute; z-index:-1; left:0px; top:0px; width:0px; height:0%; margin:0px; overflow:auto; overflow-y:scroll; white-space:nowrap; background-color:#ECE9D8;}',0);
document.styleSheets[0].insertRule('.navhover {display:block; margin:0px; padding:0px; background-color:#FFFFFF; text-decoration:none;}',0);
document.styleSheets[0].insertRule('.nav {display:block; margin:0px; padding:0px; background-color:#ECE9D8; text-decoration:none;}',0);
document.styleSheets[0].insertRule('#tool {position:absolute; z-index:1; left:0px; top:0px; width:100%; height:100%; margin:0px; padding:0px; overflow:auto; background-color:#ECE9D8;}',0);
document.styleSheets[0].insertRule('#toolpadding {padding:10px;}',0);
document.styleSheets[0].insertRule('.buttn:hover {border-color:#0000FF; background-color:#CCFFFF;}',0);
document.styleSheets[0].insertRule('.buttn {width:auto; overflow:visible; margin:3px 0px 0px 0px; padding-left:3px; padding-right:3px; background-color:#F0F0F0; border:0px solid #000000; font-size:14px; font-family:arial; cursor:pointer; cursor:hand;}',0);
document.styleSheets[0].insertRule('textarea {font-family:arial; font-size:14px; line-height:1.2; overflow:scroll; margin:0px; padding:3px 0px 0px 3px; border:0px solid #000000;}',0);
document.styleSheets[0].insertRule('table, td {padding:0px;}',0);
document.styleSheets[0].insertRule('table {border-collapse:collapse;}',0);
document.styleSheets[0].insertRule('h1 {font-size:16px; font-weight:bold; margin:0px; padding:0px 0px 4px 0px;}',0);
document.styleSheets[0].insertRule('a:active {color:#000000;}',0);
document.styleSheets[0].insertRule('a:hover {color:#0000FF;}',0);
document.styleSheets[0].insertRule('a:visited {color:#000000;}',0);
document.styleSheets[0].insertRule('a:link {color:#000000;}',0);
document.styleSheets[0].insertRule('body {margin:0px; padding:0px; font-family:arial; font-size:14px; line-height:1.2; background-color:#ECE9D8;}',0);
document.styleSheets[0].insertRule('html {height:100%;}',0);}}

var sanendwrite = '<script type="text/javascript">loadmenu(\'close\');</script>';
var firstload = 'yes';
 
function clicked(){}

window.onresize = resizepage;

function resizepage(){
var client_width = document.body.parentNode.clientWidth;
if(client_width <= 800){
document.getElementById('tool').style.width = '800px';
} else {
document.getElementById('tool').style.width = '100%';}
var client_height = document.body.parentNode.clientHeight;
if(client_height >= 400){
document.getElementById('menu').style.height = client_height + 'px';
document.getElementById('tool').style.height = client_height + 'px';
} else {
document.getElementById('menu').style.height = '400px';
document.getElementById('tool').style.height = '400px';}
if(autohgt == 'yes'){
var toolhgt = document.getElementById('tool').clientHeight;
var topdivhgt = document.getElementById('topdiv').clientHeight;
var btmdivhgt = document.getElementById('btmdiv').clientHeight;
var middivhgt = toolhgt - 30 - topdivhgt - btmdivhgt;
if(middivhgt > 120) document.getElementById('middiv').style.height = middivhgt + 'px';
else document.getElementById('middiv').style.height = '120px';}}