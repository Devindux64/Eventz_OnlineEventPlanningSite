<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
	
<head>
		<title>Eventz</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>  
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="description" content="">

		<!--== Google Fonts ==-->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Belgrano' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Dosis' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>

<style>

p,li{
  font-family: 'Dosis', sans-serif !important;
}

input[type='submit'], .nav li.current a, .speaker-contacts > .contact:hover, 
.social-icons li a:hover, .form-notification, .table-price, .gotop:hover, 
.preloader div, .owl-btn.prev:hover, .owl-btn.next:hover,
.flex-control-paging li a.flex-active, .flex-control-paging li a.flex-active:hover, 
.owl-page.active span, .owl-page.active span:hover,
.preloader, .preloader:before, .preloader:after, div.fancy-select div.trigger.open,
div.fancy-select ul.options li.selected, div.fancy-select ul.options li.selected.hover  {
  background-color: none;
  color: black;
}

a, .accordion-heading span, .speaker-contacts > .contact, 
.table-features li.fa-check-circle, .owl-btn.prev,
.owl-btn.next, div.fancy-select ul.options li.hover {
  color: #C83A66; }

.speaker:hover .speaker-photo, .speaker-contacts > .contact, 
.social-icons li a:hover, .gotop:hover, .speaker-contacts > .contact:hover {
  border-color: rgba(79, 218, 224, 0.47); 
}
h2.heading{
 font-family: 'Roboto', sans-serif;    
color: black;
}

hr{
    background: white !important;
}
.title-start{
    margin-top: -40px;
    font-family: 'Roboto', sans-serif;
    margin-bottom: 40px;
}

.title-start h2 {
    text-align: center;
    color: #000000 ;
    font-size: 38px;
}



/*--------------------
Reset ==============*/
body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,form,fieldset,p,blockquote,hr,th,td {
  margin:0; 
  padding:0;
}



/*--------------------
General ============*/
p.sub-text.text-center {
font-size: 20px;
}
p.text-right {
font-weight: bold;
color: rgba(166, 53, 53, 0.42);
}

body {
  -webkit-font-smoothing: antialiased;
}

a, a:hover, a:active, a:focus {
  outline: 0;
  text-decoration: none;
}

a {
    text-decoration:none;
}

a:hover {
  color: #bbbac0;
    text-decoration:none;
}

p {
    font-size: 1.6rem;
  line-height: 1.6em;
    font-family: 'Open Sans', sans-serif;
    margin-bottom: 10px;
}

h1,h2,h3 {
    font-family: 'Roboto', sans-serif;
    line-height: 1.4em;
    color: #222222;
    margin: 10px 0;
}

h4,h5 {
  font-family: 'Open Sans', sans-serif;
  line-height: 1.5em;
  color: #555555;
  margin: 10px 0;
}

h1 {
    font-size: 5.5rem;
}

h2 {
    font-size: 3.4rem;
}

h3 {
    font-size: 2.2rem;
}

h4 {
    font-size: 1.8rem;
}

h5 {
    font-size: 1.6rem;
}

blockquote {
  font-size: 1.6rem;
  line-height: 1.6em;
  border-left: 3px solid #efefef;
  padding: 1rem 0 1rem 1rem;
  margin: 1rem 0;
}

ul,ol {
  font-size: 1.6rem;
  line-height: 1.6em;
  padding: 0 0 0 2rem;
  margin: 1rem 0;
}

ul {
  list-style-image: url(../images/ul.png);
}

hr {
  height: 2px;
    margin-top: 2rem;
    margin-bottom: 2rem;
    background: #efefef;
}

input,
textarea,
select {
  width: 100%;
  height: 6rem;
  margin-bottom: 15px;
  padding: 1rem 1.5rem;
  border: none;
  background: #ffffff;
  border-radius: 5px;
  font-size: 1.6rem;
  color: #555555;
}

select {
    cursor: pointer;
    line-height: 5.6rem;
    padding: 1.7rem 1.5rem;
    -webkit-appearance: menulist-button;
}

input[type='submit'] {
  height: 6rem;
  font-size: 2.5rem;
  color: #ffffff;
  border-bottom: 3px solid rgba(0, 0, 0, 0.2);
  transition: all 0.1s;
  -moz-transition: all 0.1s;
  -webkit-transition: all 0.1s;
  -o-transition: all 0.1s; 
}

input[type='submit']:hover {
  opacity: 0.9;
}

input[type='submit']:active {
  border-bottom: 1px solid #b85146;
}

.box {
  
  border-radius: 5px;
  padding: 0 45px;
}

#header {
  position: relative;
  margin-bottom: -100px;
  overflow: hidden;
}

.header-panel {
  position: absolute;
  width: 100%;
  min-height: 100px;
  top: 0;
  margin-top: 50px;
  z-index: 55;
}

.header-menu {
  position: absolute;
    width: 100%;
    z-index: 55;
}

.header-menu.sticky {
  position: fixed;
  margin: 0;
  -moz-animation: bounceInDown 0.5s;
  -webkit-animation: bounceInDown 0.5s;
  animation: bounceInDown 0.5s;
}

.header-menu.fixed {
  -moz-animation: bounceIn 0.5s;
  -webkit-animation: bounceIn 0.5s;
  animation: bounceIn 0.5s;
}

.header-menu > .box {
  background: #C5EFF7;
  padding-top: 20px;
  padding-bottom: 20px;
}

.header-menu.sticky > .box {
  padding-top: 0;
  padding-bottom: 0;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
  border-bottom: 1px solid #efefef;
}

header{
  background: url(../images/demo/bg-slide-02.jpg);
  background-size: cover;
}
.header-bg {
  position: relative;
  height: 750px;
  overflow: hidden;
}

.header-bg:before {
  top: 0;
  position: absolute;
  display: block;
  width: 100%;
  height: 100%;
  content: "";
  background: url(../images/bg.png) repeat;
  z-index: 40;
}

.content {
  margin-top: 60px;
  position: relative;
  padding: 0 15px;
  z-index: 50;
}

.content section {
  padding: 50px 0;
}

.content section#features:first-child {
  padding: 40px 0;
}

.content section + section:before {
  display: block;
  margin: -50px 15px 50px;
  content: "";
  height: 2px;
  background: #efefef;
}

.content section.separated:before {
  display: none;
}

.content section.separated { 
  border-top: 20px solid #efefef;
  border-bottom: 20px solid #efefef;
  margin: 0 -45px -3px;
  padding: 50px 30px;
}

.section-header {
  margin-bottom: 45px;
}

.section-header h2,
.section-header h4 {
  margin: 0;
}





/*--------------------
Main Slider ========*/
.main-slider .slides img {
  position: absolute;
  width: 100%;
  min-width: 1200px;
  left: 50%;

}

/*--------------------
About us ========*/
.about-part{
  position: relative;
  top: 70px;
}

.progress-bar {
  background: rgb(124, 207, 223);
  color: white;
  text-indent: 8px;
}
.about-us{
  margin-top: 60px;
}
.content-block {
text-align: center;
}



Header CTA ========*/
  .start-text {
    font-weight: bold;
    background: rgba(197, 239, 247, 0.7);
    color: black;
    padding: 3px 15px;
    /* transform: skew(40deg); */
  }

 .entry-item .entry-content > p > span {
    font-family: "Oswald", sans-serif;
    font-size: 18px;
    line-height: 26px;
    color: #ea2e2b;
    font-weight: 300;
    padding: 2px 35px;
    background: #fff;
    text-transform: uppercase;
  }

.entry-content{
     font-family: 'Oswald', sans-serif;
    position: absolute;
    left: 0;
    right: 0;
    margin: 0 auto;
    width: 500px;
    text-align: center;
    -webkit-transform: skew(-15deg);
    -moz-transform: skew(-15deg);
    -o-transform: skew(-15deg);
    transform: skew(-15deg);
  }
 @media (max-width:500px){
  .entry-content{
     
    width: 350px;
    text-align: center;
    -webkit-transform: skew(-0deg);
    -moz-transform: skew(-0deg);
    -o-transform: skew(-0deg);
    transform: skew(-0deg);
  }
  }
.entry-title {
    font-family: 'Oswald', sans-serif;
    font-size: 46px;
    line-height: 52px;
    text-transform: uppercase;
    background: rgba(197, 239, 247, 0.74);
    padding: 20px;
    margin-bottom: 3px;
    transition: all 0.5s;
    -ms-transition: all 0.5s;
    -webkit-transition: all 0.5s;
    -moz-transition: all 0.5s;
    border-bottom: 5px solid white;
    border-top: 5px solid white;

}
.entry-title a{
  color: black;
  transform: skew(-15deg);
}
.entry-content > p {
border-bottom: 4px solid #fff;
margin-bottom: 5px;
font-size: 24px;
}
h5 span {
  border-top: 4px solid #fff;
  border-bottom: 4px solid #fff;
  margin-bottom: 5px;
  padding: 0 6px;
  display: block;
  background: rgba(171, 171, 171, 0.73);
  padding: 5px 10px;
  color: #FFFFFF;
  margin-bottom: 0;
  }



.header-cta {
  position: absolute;
  width: 100%;
  padding: 0 15px;
  z-index: 50;
  bottom: 250px;
  top: 220px;
}



.header-cta input[type="submit"] {
  margin: 0;
}



/*--------------------
Navigation =========*/
@media (max-width: 991px) {
    .navbar-header {
        float: none;
    }
    .navbar-toggle {
        display: block;
    }
    .navbar-collapse {
        border-top: 1px solid transparent;
        box-shadow: inset 0 1px 0 rgba(255,255,255,0.1);
    }
    .navbar-collapse.collapse {
        display: none!important;
    }
    .navbar-nav {
        float: none!important;
        margin: 7.5px -15px;
    }
    .navbar-nav>li {
        float: none;
    }
    .navbar-nav>li>a {
        padding-top: 10px;
        padding-bottom: 10px;
    }
    .navbar-text {
        float: none;
        margin: 15px 0;
    }
    /* since 3.1.0 */
    .navbar-collapse.collapse.in { 
        display: block!important;
    }
    .collapsing {
        overflow: hidden!important;
    }
}
.nav a {
  float: left;
  padding: 8px 10px;
}
.nav > li > a:hover, .nav > li > a:focus {
text-decoration: none;
background: none;
}

.nav a:hover {
  background: #efefef;
  transition: all 0.1s;
  -moz-transition: all 0.1s;
  -webkit-transition: all 0.1s;
  -o-transition: all 0.1s; 
}

.navbar-nav {
  float: right;
  margin: 1rem 0;
}

.navbar-nav > li {
  float: left;
  overflow: hidden;
  border-radius: 2px;
}

.navbar-nav > li + li {
  margin-left: 1rem;
}

.navbar-nav > li > a {
  line-height: 2.4rem;
  padding: 0.8rem 1rem;
  font-size: 1.5rem;
  font-weight: bold;
  border-radius: 2px;
  color: black;
  overflow: hidden;
}

.navbar-nav > li.current > a {
  color: #39998E;
}

.navbar-brand {
    float: left;
    font-size: 1.8rem;
    height: 6rem;
    color: black;
    line-height: 4rem;
    font-size: 3.8rem;
    font-weight: 700;
    padding: 1rem 0;
}

.navbar-brand span {
    margin-right: 10px;
    color: #bbbac0;
}

.navbar-brand:hover {
  color: #222222;
}

.navbar-brand.logo > img {
    max-height: 40px;
    width: auto;
}

.navbar-brand:hover span {
  -moz-animation: flip 0.5s;
  -webkit-animation: flip 0.5s;
  animation: flip 0.5s;
}

.navbar-toggle {
  float: right;
  height: 40px;
  margin: 10px 0;
  background: #bbbac0;
  border-radius: 5px;
  border: 2px solid #bbbac0;
}

.navbar-toggle .icon-bar {
  display: block;
  width: 22px;
  height: 2px;
    border-radius: 1px;
    background: #ffffff;
}

.navbar-toggle.collapsed {
  background: #ffffff;
}

.navbar-toggle.collapsed .icon-bar {
  background: #bbbac0;
}

.navbar-collapse {
  padding: 0;
}



/*--------------------
Home ===============*/
.home-background {
  max-height: 48.5rem;
  overflow: hidden;
}

.home-background img {
  width: 100%;
}



  i.fa.fa-quote-left {
font-size: 30px;
}
i.fa.fa-quote-right {
font-size: 30px;
position: relative;
top: 8px;
}

  h2.text-center {
position: relative;
top: -15px;
background: aliceblue;
width: 50%;
text-align: center;
margin: 0 auto;
border-radius: 15px;
font-size: 25px;
font-style: italic;
}
.timeline-footer {
  height: 10px;
  width: 100%;
  padding: 0px 15px;
  background-color: rgba(152, 57, 57, 0.39);
  font-weight: bold;
  color: white;
  }
.timeline-footer p { margin-bottom: 0; }
.timeline-footer > a {
    cursor: pointer;
    text-decoration: none;
}
.timeline > li.timeline-inverted {
    float: right;
    clear: right;
}
.timeline > li:nth-child(2) {
    margin-top: 60px;
}
.timeline > li.timeline-inverted > .timeline-badge {
    left: -12px;
}
.no-float {
    float: none !important;
}
@media (max-width: 767px) {
    ul.timeline:before {
        left: 40px;
    }
    ul.timeline > li {
        margin-bottom: 0px;
        position: relative;
        width:100%;
        float: left;
        clear: left;
    }
    ul.timeline > li > .timeline-panel {
        width: calc(100% - 65px);
        width: -moz-calc(100% - 65px);
        width: -webkit-calc(100% - 65px);
    }
    ul.timeline > li > .timeline-badge {
        left: 28px;
        margin-left: 0;
        top: 16px;
    }
    ul.timeline > li > .timeline-panel {
        float: right;
    }
    ul.timeline > li > .timeline-panel:before {
        border-left-width: 0;
        border-right-width: 15px;
        left: -15px;
        right: auto;
    }
    ul.timeline > li > .timeline-panel:after {
        border-left-width: 0;
        border-right-width: 14px;
        left: -14px;
        right: auto;
    }
    .timeline > li.timeline-inverted {
        float: left;
        clear: left;
        margin-top: 30px;
        margin-bottom: 30px;
    }
    .timeline > li.timeline-inverted > .timeline-badge {
        left: 28px;
    }
}
li{
  list-style: none;
}

  .schedule-menu{
    margin-top: 5px;
  }

/* Pricing Table */
.events-menu {
  margin-top: -34px;
  margin-bottom: 45px;
}

@import url(http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,700);
* {
  margin: 0;
  padding: 0;
}

.cf:before, .pricing-table:before,
.cf:after,
.pricing-table:after {
  content: ".";
  display: block;
  height: 0;
  overflow: hidden;
}

.cf:after, .pricing-table:after {
  clear: both;
}

.cf, .pricing-table {
  zoom: 1;
}



strong {
  font-weight: bold;
}

.white{
  color:white !important;
}

.wrap {
  width: 900px;
  margin: 15px auto;
  color: #607d8b;
  box-shadow: 1px 1px 10px #424242;
}

@media (min-width:991px ){


  .pricing-table .plan {
  box-sizing: border-box;
  width: 300px;
  background-color: #fff;
  float: left;
  text-align: center;
  position: relative;
  z-index: 10;
}
}

.pricing-table .plan {
  box-sizing: border-box;
  width: 300px;
  background-color: #fff;
  margin: 0 auto;
  text-align: center;
  position: relative;
  z-index: 10;
}
.pricing-table .plan h3.name {
  font-size: 20px;
  background-color: #C5EFF7;
  padding: 15px;
  color: #000;
}
.pricing-table .plan h4.price {
  font-size: 49px;
  color: #fff;
  padding: 30px;
  background-color: #5BB8AD;
  line-height: 40px;
}.pricing-table .plan h4.price span {
  font-size: 16px;
  font-style: italic;
}
.pricing-table .plan ul.details {
  list-style-type: none;
}
.pricing-table .plan ul.details li {
  border-bottom: 1px solid #B3B9C4;
  padding: 15px;
}
.pricing-table .plan h5.order {
  padding: 30px;
  font-size: 17px;
}
.pricing-table .plan h5.order a {
  text-decoration: none;
  color: #000;
  background-color: #5BB8AD;
  padding: 10px 20px;
}
.pricing-table .plan:first-child h4.price {
  background-color: rgba(92, 165, 165, 0.71);
}
.pricing-table .plan:first-child h5.order a {
background-color: #C5EFF7;
}
.pricing-table .plan:last-child h4.price {
  background-color: #8ABEBE;
}
.pricing-table .plan:last-child h5.order a {
  background-color: #8ABEBE;
}
.pricing-table .plan:nth-child(2n) {
  box-shadow: 0px 0px 10px #424242;
  z-index: 100;
}

/* Register/Login */


.form {
    position: relative;
    background: #fff;
    width: 358px;
    margin: 40px auto 0;
    padding: 40px;
    box-shadow: 0 0 3px rgba(0, 0, 0, 0.3);
}
.form .switch {
  cursor: pointer;
  position: absolute;
  top: 0;
  right: 0;
  background: #C83A66;
  width: 30px;
  height: 30px;
  color: #fff;
  font-size: 12px;
  line-height: 30px;
  text-align: center;
}
.form .switch .tooltip {
  position: absolute;
  top: 5px;
  right: -65px;
  display: block;
  width: auto;
  padding: 5px;
  background: #C83A66;
  color: white;
  font-size: 10px;
  font-weight: 600;
  line-height: 1;
  text-align: left;
  text-transform: uppercase;
}
.form .switch .tooltip:before {
  content: '';
  position: absolute;
  top: 5px;
  left: -5px;
  display: block;
  border-top: 5px solid transparent;
  border-bottom: 5px solid transparent;
  border-right: 5px solid #C83A66;
}
.form .register {
  display: none;
}
.form h2 {
  margin: 0 0 20px;
  line-height: 1;
  color: #C83A66;
  font-size: 28px;
  font-weight: 400;
}
.form .alert {
  position: relative;
  background: #C83A66;
  color: #666;
  font-size: 12px;
  margin-bottom: 20px;
  padding: 15px;
}
.form .alert .fa-times-circle {
  cursor: pointer;
  position: absolute;
  top: 50%;
  right: 10px;
  display: block;
  width: 16px;
  height: 16px;
  line-height: 16px;
  margin-top: -8px;
  float: right;
}
.form input {
  outline: none;
  display: block;
  width: 100%;
  margin: 0 0 20px;
  padding: 10px 15px;
  border: 1px solid #ccc;
  color: #ccc;
  font-family: "Roboto";
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  font-size: 20px;
  font-wieght: 400;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  -webkit-transition: 0.2s linear;
  -moz-transition: 0.2s linear;
  -ms-transition: 0.2s linear;
  -o-transition: 0.2s linear;
  transition: 0.2s linear;
}
.form input:focus {
  color: #333;
  border: 1px solid #33b5e5;
}
.form button {
  cursor: pointer;
  background: #C83A66;
  width: 100%;
  padding: 10px 15px;
  margin-bottom: 25px;
  border: 0;
  color: #fff;
  font-family: "Roboto";
  font-size: 14px;
  font-weight: 400;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  -webkit-transition: 0.2s linear;
  -moz-transition: 0.2s linear;
  -ms-transition: 0.2s linear;
  -o-transition: 0.2s linear;
  transition: 0.2s linear;
}
.form button:hover {
  background: #C83A66;
}


/* Blog*/

img.blog-image:hover {
background: rgb(34, 26, 26);
opacity: 0.7;
cursor: crosshair;
}
.blog h3{
background: rgba(158, 152, 152, 0.01);
padding: 10px 0;
text-align: center;
font-size: 14px;
}
button.button-info.read-more {
background: rgb(197, 239, 247);
padding: 10px;
color: black;
border: 1px solid rgb(78, 221, 232);
text-align: center;
}
button.button-info.read-more:hover {
background: white;
padding: 10px;
color: black;
border: 1px solid rgb(215, 194, 194);
}


  p.firstpara {
padding-top: 17px;
}

h2.blog-head {
  background: rgb(197, 239, 247);
  color: black;
  padding: 9px;
  text-align: center;
  font-size: 26px;
}

/*--------------------
Go Top =============*/
div.gotop {
  position: absolute;
  bottom: -35px;
  left: 50%;
  width: 7rem;
  height: 7rem;
  margin-left: -35px;
  background: #ffffff;
  border-radius: 50%;
  border: 3px solid #efefef;
  font-size: 2.2rem;
  line-height: 6.4rem;
  color: #BBBAC0;
  text-align: center;
  cursor: pointer;
}

.gotop:hover {
  color: black;
}



/*--------------------
Preloader ==========*/
#preloader {
  position: absolute;
    height: 100%;
    width: 100%;
    background: #efefef;
    z-index: 45;
}

#preloader.ready {
  display: none;
}


/* -------------- loader6 -------------- */

.preloader{
  position: relative;
  width: 12px;
  height: 12px;

  top: 46%;
  top: -webkit-calc(50% - 6px);
  top: calc(50% - 6px);
  left: 46%;
  left: -webkit-calc(50% - 6px);
  left: calc(50% - 6px);
  
  border-radius: 12px;
  -webkit-transform-origin:  50% 50%;
      transform-origin:  50% 50% ;
  -webkit-animation: preloader 1s ease-in-out infinite;
      animation: preloader 1s ease-in-out infinite;
}

.preloader:before{
  content: "";
  position: absolute;
  opacity: 0.5;
  top: 0px;
  left: -25px;
  height: 12px;
  width: 12px;
  border-radius: 12px;
}

.preloader:after{
  content: "";
  position: absolute;
  opacity: 0.5;
  top: 0px;
  left: 25px;
  height: 12px;
  width: 12px;
  border-radius: 12px;
}


@-webkit-keyframes preloader{
    0%{-webkit-transform:rotate(0deg);}
    50%{-webkit-transform:rotate(180deg);}
    100%{-webkit-transform:rotate(180deg);}
}

@-o-keyframes preloader{
    0%{-o-transform:rotate(0deg);}
    50%{-o-transform:rotate(180deg);}
    100%{-o-transform:rotate(180deg);}
}

@keyframes preloader{
    0%{transform:rotate(0deg);}
    50%{transform:rotate(180deg);}
    100%{transform:rotate(180deg);}
}


/* Footer
================================================== */
footer {
  width: 100%;
  background: #C5EFF7;
  color: #000;
}
a {
color: black;
}
.copyright {
    margin: 0;
    padding: 20px 0px;
    text-align: left;
}
.designed {
    margin: 0;
    padding: 20px 0px;
    text-align: right;
}
.designed a:hover {
    color: #e66f69;
}
#contact {
    color: #fff;
}

.mapWrap {
    position: relative;
    min-height: 600px;
}
#googleMap {
    position: absolute !important;
    top: 0;
    left: 0;
    height: 100%;
}
#contact-area {
    background: rgba(0, 0, 0, 1);
    width: 100%;
    position: relative;
    padding: 80px 0px 60px 0px;
}

.moreDetails {
    color: #fff;
}
h2.block_title {
  color: white;
}
button.btn.medium {
color: black;
padding: 10px;
font-weight: bold;
}
.con-title {
    font-weight: 300;
    font-size: 3em;
    margin: 0;
    padding-bottom: 30px;
    color: white;
}
.moreDetails p {
    font-size: 16px;
}
.address {
    list-style: none;
    margin: 0;
    padding: 10px 0px 0px 0px;
}
.address li {
    font-size: 1.1em;
    position: relative;
    margin-bottom: 3%;
}
.address li i {
    font-size: 20px;
    position: absolute;
    top: 1px;
}
.address li span {
    padding-bottom: 10px;
    position: relative;
    left: 30px;
}
.form-control {
    box-shadow: none;
    border: 1px solid #8E8E8E;
    border-radius: 0px;
    padding: 12px 12px;
    height: auto;
    background: rgba(255, 255, 255, 0.11);
}
.form-group input,.form-group textarea {
    color: #FFF;
}

/*Social media links*/
.mcontent{
  margin-top: -10px !important;
}
#social {
    background-color: rgba(0, 0, 0, 0.75) !important;
    padding: 30px 0px 30px 0px;
    position: relative;
}
.normal-txt {
    color: #fff;
    font-size: 3em;
    font-weight: 100;
    padding-bottom: 10px;
    max-width: 300px;
    margin: 0 auto;
    margin-bottom: 30px;
}
.scoialinks {
    list-style: none;
    text-align: center;
    padding: 0;
}
.social-icons {
    display: inline-block;
    padding: 0px 5px;
}
.social-icons a {
    display: block;
    width: 50px;
    height: 50px;
    background-size: 100% 200%;
}

.social-icons a:hover {
    background-position: 0px -50px;
}
.facebook{
  background-image: url(../images/facebook.png);
}
.twitter{
  background-image: url(../images/twitter.png);
}
.google-plus{
  background-image: url(../images/google-plus.png);
}
.linkedin{
  background-image: url(../images/linkedin.png);
}
.wordpress{
  background-image: url(../images/wordpress.png);
}


</style>
	</head>
	<body>
		<header id="header">
			<div id="menu" class="header-menu fixed">
				<div class="box">
					<div class="row">
						<nav role="navigation" class="col-sm-12">
							<div class="navbar-header">
								

								<!--== Logo ==-->
								<span class="navbar-brand logo">
									Eventz
								</span>

							</div>
							<div class="navbar-collapse collapse">

								<!--== Navigation Menu ==-->
								<ul class="nav navbar-nav">
									<li class="index.jsp"><a href="#header">Home</a></li>
									<li><a href="#about">About us</a></li>	
									<li><a href="#team">Our Team</a></li>
									<li><a href="enterParCode.jsp">Participant Code</a></li>
									<li><a href="createacc.jsp">Register</a></li>
									<li><a href="login.jsp">Login</a></li>
									<li><a href="#admin">Admin</a></li>
								</ul>
							</div>
						</nav>
						
						
					</div>
				</div>
			</div>

			<!--== Site Description ==-->
			<div class="header-cta">
				<div class="container">
					<div class="row">
						<div class="entry-content">
				            <p><span class="start-text"><b>Come and join with us</b></span></p>
				            <h4 class="entry-title"><a href="#">Organizing World class events</a></h4>
				            <h5><span><b>Best service</b></span></h5>
				            <form method="post" action="Events">
				
					<li>shedule an event now<input class="btn btn-success"  class="nav-link" type="submit" name="submit" value="events"></li>
				</form>
					    </div>
					</div>
				</div>
			</div>

			<div class="header-bg">
				<div id="preloader">
					<div class="preloader"></div>
				</div>
				<div class="main-slider" id="main-slider">

					<!--== Main Slider ==-->
					<ul class="slides">
						<li><img src="images/demo/bg-slide-01.jpg" alt="Slide Image"/></li>
						<li><img src="images/demo/bg-slide-02.jpg" alt="Slide Image 2"/></li>
					</ul>

				</div>
			</div>
		</header>

		<div class="content">
			<div class="container box">


				
			
				<h3>ABOUT US</h3>
				

				<p>Nullam enim nunc, sollicitudin eget rhoncus non, iaculis quis metus. Nunc urna diam, blandit nec ipsum eu, mollis convallis lectus. Vestibulum sapien mauris, auctor quis magna sed, pretium vestibulum est. Mauris vitae tristique urna. Nullam enim nunc, sollicitudin eget rhoncus non, iaculis quis metus. Nunc urna diam, blandit nec ipsum eu, mollis convallis lectus.

				Vestibulum sapien mauris, auctor quis magna sed, pretium vestibulum est. Mauris vitae tristique urna.</p>
			</div>
			<div class="col-md-4">

				<p> Design</p>
				<div class="progress">
				  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
				    60%
				  </div>
				</div>
				<br/>
				<p> Idea</p>
				<div class="progress">
				  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">
				    80%
				  </div>
				</div>
				<br/>
			</div>
			</div>
			</div>
		</section>
				
			
				
				<section id="prices" class="row">
				<div class="title-start events-menu col-md-4 col-md-offset-4">
				
				
				</div>

				<div class="col-md-12 visible-md visible-lg">
					<div class="wrap">
					
						<div class="pricing-table">
							<div class="plan">
								<h3 class="name">Silver</h3>
								<h4 class="price">$10,000<span>/Day</span></h4>

								<ul class="details">
									<li><strong>100</strong> Seats</li>
									<li><strong>3 Star</strong> Hotel</li>
									<li><strong>Gifts</strong></li>
								</ul>

								<h5 class="order"><a href="#">Order Now</a></h5>
							</div><!--.plan-->

							<div class="plan">
								<h3 class="name">Gold</h3>
								<h4 class="price">$20,000<span>/Day</span></h4>

								<ul class="details">
									<li><strong>300</strong> Seats</li>
									<li><strong>5 Star</strong> Hotel</li>
									<li><strong>Gifts</strong></li>
								</ul>

								<h5 class="order"><a href="#">Order Now</a></h5>
							</div><!--.plan-->

							<div class="plan">
								<h3 class="name">Platinum</h3>
								<h4 class="price">$30,000<span>/Day</span></h4>

								<ul class="details">
									<li><strong>500</strong> Seats</li>
									<li><strong>7 Star</strong> Hotel</li>
									<li><strong>Gifts</strong></li>
								</ul>

								<h5 class="order"><a href="#">Order Now</a></h5>
							</div><!--.plan-->
						</div><!--.pricing-table-->
					</div><!--.wrap-->
					</div>

						
						</div>	
				</section>
				
				
        		<div class="content mcontent">
				<div id="gotop" class="gotop fa fa-arrow-up"></div>
			</div>
		</div>
		
              
		<footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <p class="copyright">� Copyright 2020 <a href="http://wwww.technextit.com" target="_blank">EVENTZ</a></p>
                    </div>
                    <div class="col-sm-6">
                        <p class="designed">Cnotact us on <a href="http://themewagon.com" target="_blank">eventz@k.ev.lk</a></p>
                    </div>
                </div>
            </div>
        </footer>


		
		<script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
		

		
		</script>
	</body>
</html>