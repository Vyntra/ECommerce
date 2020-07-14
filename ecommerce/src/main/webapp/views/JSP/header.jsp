<!DOCTYPE html>
<html>
<head>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.nav {
  overflow: hidden;
  background-color: grey;
}

.nav a {
  float: left;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 20px;
  font-family:Georgia;
font-size:25px;
}
input[type=text] {
  float: left;
  padding: 6px;
  margin-top: 8px;
  margin-right: 16px;
  background-color: white;
  font-size: 17px;
}
.some
{
      margin-top:10px;
      width:200px;
      border:2px solid black;
      border-radius:8px;
      color:black;
      float:left;
}
.nav a:hover {
  background-color: orange;
  color: black;
}
$primary: #5628EE;
$primaryLight: #8C6FF0;

.search {
    background: #fff;
    padding: 12px 16px 12px 48px;
    position: relative;
    display: table;
    margin: auto;
    border-radius: 8px;
    box-shadow: 0 4px 16px -1px rgba(#121621, .3);
    transition: background .1s ease, transform .1s ease, padding .5s ease .1s;
    .bar {
        position: absolute;
        left: 16px;
        top: 15px;
        width: 32px;
        height: 32px;
        overflow: hidden;
        span {
            display: block;
            color: #fff;
            position: absolute;
            left: 12px;
            top: 0;
            line-height: 32px;
            font-weight: 500;
            font-size: 16px;
            opacity: 0;
            right: 16px;
            overflow: hidden;
            white-space: nowrap;
        }
        &:before {
            content: '';
            position: absolute;
            display: block;
            left: 0;
            top: 0;
            bottom: 0;
            right: 16px;
            border-radius: 16px 0 0 16px;
            background: $primary;
            opacity: 0;
        }
        .icon {
            flex: 0 0 32px;
            width: 32px;
            height: 32px;
            background: $primary;
            border-radius: 50%;
            position: absolute;
            z-index: 1;
            top: 0;
            right: 0;
            transform-style: preserve-3d;
            transform-origin: 0 0;
            transform: scale(.8);
            transition: transform .4s ease 0s, background .1s ease;
            &:before,
            &:after {
                content: '';
                display: block;
                position: absolute;
                backface-visibility: hidden;
                border-radius: 50%;
            }
            &:before {
                background: #fff;
                left: 4px;
                top: 4px;
                right: 4px;
                bottom: 4px;
                z-index: 2;
                transform: rotateY(0deg);
                transition: background .1s ease;
            }
            &:after {
                background: $primary;
                left: 0;
                top: 0;
                right: 0;
                bottom: 0;
                transform: rotateY(180deg);
                transition: background .1s ease;
            }
            i {
                left: 75%;
                top: 84%;
                position: absolute;
                display: block;
                transform: rotate(-45deg);
                transform-origin: 0 0;
                &:before {
                    content: '';
                    width: 4px;
                    height: 16px;
                    border-radius: 2px;
                    background: $primary;
                    display: block;
                    transform-origin: 50% 0;
                    transition: transform .4s ease 0s, background .1s ease;
                }
            }
        }
    }
    form {
        display: block;
        padding: 0;
        margin: 0;
        input,
        span {
            white-space: pre;
            font-size: 16px;
            font-family: inherit;
            padding: 8px 16px 8px 12px;
            display: block;
            line-height: 22px;
            font-weight: 500;
        }
        input {
            color: $primaryLight;
            caret-color: $primaryLight;
            border: 0;
            background: 0;
            outline: none;
            transition: color .1s ease;
        }
        span {
            display: none;
        }
    }
    .close {
        border-radius: 50%;
        position: absolute;
        right: 16px;
        width: 24px;
        height: 24px;
        background: #E4ECFA;
        top: 19px;
        cursor: pointer;
        opacity: 0;
        visibility: hidden;
        transform: translate(-8px, 0);
        transition: transform .3s ease 0s, opacity .3s ease 0s, visibility .3s ease 0s;
        &:before,
        &:after {
            content: '';
            position: absolute;
            width: 2px;
            border-radius: 1px;
            height: 10px;
            background: #6C7486;
            display: block;
            left: 50%;
            top: 50%;
            transition: background .3s ease;
        }
        &:before {
            transform: translate(-50%, -50%) rotate(45deg);
        }
        &:after {
            transform: translate(-50%, -50%) rotate(-45deg);
        }
    }
    ul {
        overflow: hidden;
        margin: 0;
        padding: 8px 0 24px 0;
        list-style: none;
        position: absolute;
        left: 16px;
        top: 62px;
        white-space: nowrap;
        &.show {
            li {
                opacity: 1;
                visibility: visible;
                transform: translate(0, 0);
                &:nth-child(1) {
                    transition-delay: 0s;
                }
                &:nth-child(2) {
                    transition-delay: .3s;
                }
            }
        }
        li {
            margin: 0 0 20px 0;
            opacity: 0;
            visibility: hidden;
            transition: all .3s ease;
            transform: translate(0, -6px);
            &:last-child {
                margin-bottom: 0;
            }
            a {
                display: block;
                font-size: 12px;
                text-decoration: none;
                padding-left: 36px;
                padding-right: 24px;
                position: relative;
                img {
                    display: block;
                    left: 0;
                    width: 20px;
                    top: 50%;
                    position: absolute;
                    transform: translate(0, -50%);
                    &.queble {
                        width: 24px;
                    }
                }
                h5 {
                    margin: 0;
                    color: #151924;
                    font-size: 12px;
                }
                p {
                    margin: 4px 0;
                    color: #6C7486;
                }
                span {
                    display: block;
                    font-size: 10px;
                    color: #6C7486;
                    opacity: .6;
                    font-style: italic;
                }
            }
            &:nth-child(1) {
                transition-delay: .3s;
            }
            &:nth-child(2) {
                transition-delay: 0s;
            }
            &:hover {
                transition: transform .3s ease 0s;
                transform: translate(0, -2px);
            }
        }
    }
    &.submit {
        background: $primary;
        transform: scale(.92);
        .bar {
            .icon {
                background: #fff;
                &:before {
                    background: $primary;
                }
                &:after {
                    background: #fff;
                }
                i {
                    &:before {
                        background: #fff;
                    }
                }
            }
        }
        form {
            input {
                color: #fff;
            }
        }
    }
    &.prepare {
        .bar {
            &:before {
                opacity: 1;
                transition: opacity 0s ease 1.25s;
            }
            .icon {
                transform: scale(1);
                transform-origin: 50% 50% 0;
                transition: transform .4s ease .85s, transform-origin 0s ease 1.25s, background .1s ease;
                i {
                    &:before {
                        transform: scaleY(0);
                        transition: transform .4s ease .4s, background .1s ease;
                    }
                }
            }
        }
    }
    &.animate {
        .bar {
            .icon {
                transform: rotateY(75deg);
                transition: transform .6s ease 0s;
            }
            span {
                opacity: 1;
            }
        }
    }
    &.done {
        padding-right: 56px;
        transition: padding .4s ease;
        .bar {
            .icon {
                transform: rotateY(180deg);
                transition: transform .7s ease 0s;
            }
        }
        .close {
            opacity: 1;
            visibility: visible;
            transform: translate(0, 0);
            transition: transform .4s ease .5s, opacity .4s ease .5s, visibility .4s ease .5s;
            &:hover {
                background: $primaryLight;
                transition: background .3s ease;
                &:before,
                &:after {
                    background: #fff;
                }
            }
        }
    }
    &.reset {
        .bar {
            &:before {
                opacity: 0;
                transition: opacity 0s ease .4s;
            }
            .icon {
                transform: rotateY(0deg);
                transition: transform .4s ease 0s;
            }
        }
    }
}

em {
    color: #6C7486;
    font-size: 12px;
    margin: 24px 0 0 0;
    display: block;
    text-align: center;
    font-style: italic;
    strong {
        font-weight: bold;
    }
}

html {
    box-sizing: border-box;
    -webkit-font-smoothing: antialiased;
}

* {
    box-sizing: inherit;
    &:before,
    &:after {
        box-sizing: inherit;
    }
}
.search {
  background: #fff;
  padding: 12px 16px 12px 48px;
  position: relative;
  display: table;
  margin: auto;
  border-radius: 8px;
  box-shadow: 0 4px 16px -1px rgba(18, 22, 33, 0.3);
  -webkit-transition: background .1s ease, padding .5s ease .1s, -webkit-transform .1s ease;
  transition: background .1s ease, padding .5s ease .1s, -webkit-transform .1s ease;
  transition: background .1s ease, transform .1s ease, padding .5s ease .1s;
  transition: background .1s ease, transform .1s ease, padding .5s ease .1s, -webkit-transform .1s ease;
}
.search .bar {
  position: absolute;
  left: 16px;
  top: 15px;
  width: 32px;
  height: 32px;
  overflow: hidden;
}
.search .bar span {
  display: block;
  color: #fff;
  position: absolute;
  left: 12px;
  top: 0;
  line-height: 32px;
  font-weight: 500;
  font-size: 16px;
  opacity: 0;
  right: 16px;
  overflow: hidden;
  white-space: nowrap;
}
.search .bar:before {
  content: '';
  position: absolute;
  display: block;
  left: 0;
  top: 0;
  bottom: 0;
  right: 16px;
  border-radius: 16px 0 0 16px;
  background: blue;
  opacity: 0;
}
.search .bar .icon {
  -webkit-box-flex: 0;
          flex: 0 0 32px;
  width: 32px;
  height: 32px;
  background: #5628EE;
  border-radius: 50%;
  position: absolute;
  z-index: 1;
  top: 0;
  right: 0;
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  -webkit-transform-origin: 0 0;
          transform-origin: 0 0;
  -webkit-transform: scale(0.8);
          transform: scale(0.8);
  -webkit-transition: background .1s ease, -webkit-transform .4s ease 0s;
  transition: background .1s ease, -webkit-transform .4s ease 0s;
  transition: transform .4s ease 0s, background .1s ease;
  transition: transform .4s ease 0s, background .1s ease, -webkit-transform .4s ease 0s;
}
.search .bar .icon:before, .search .bar .icon:after {
  content: '';
  display: block;
  position: absolute;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
  border-radius: 50%;
}
.search .bar .icon:before {
  background: white;
  left: 4px;
  top: 4px;
  right: 4px;
  bottom: 4px;
  z-index: 2;
  -webkit-transform: rotateY(0deg);
          transform: rotateY(0deg);
  -webkit-transition: background .1s ease;
  transition: background .1s ease;
}
.search .bar .icon:after {
  background: #5628EE;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
  -webkit-transition: background .1s ease;
  transition: background .1s ease;
}
.search .bar .icon i {
  left: 75%;
  top: 84%;
  position: absolute;
  display: block;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
  -webkit-transform-origin: 0 0;
          transform-origin: 0 0;
}
.search .bar .icon i:before {
  content: '';
  width: 4px;
  height: 16px;
  border-radius: 2px;
  background: #5628EE;
  display: block;
  -webkit-transform-origin: 50% 0;
          transform-origin: 50% 0;
  -webkit-transition: background .1s ease, -webkit-transform .4s ease 0s;
  transition: background .1s ease, -webkit-transform .4s ease 0s;
  transition: transform .4s ease 0s, background .1s ease;
  transition: transform .4s ease 0s, background .1s ease, -webkit-transform .4s ease 0s;
}
.search form {
  display: block;
  padding: 0;
  margin: 0;
}
.search form input,
.search form span {
  white-space: pre;
  font-size: 16px;
  font-family: inherit;
  padding: 8px 16px 8px 12px;
  display: block;
  line-height: 22px;
  font-weight: 500;
}
.search form input {
  color:grey;
  caret-color: #8C6FF0;
  border: 0;
  background: 0;
  outline: none;
  -webkit-transition: color .1s ease;
  transition: color .1s ease;
}
.search form span {
  display: none;
}
.search .close {
  border-radius: 50%;
  position: absolute;
  right: 16px;
  width: 24px;
  height: 24px;
  background: #E4ECFA;
  top: 19px;
  cursor: pointer;
  opacity: 0;
  visibility: hidden;
  -webkit-transform: translate(-8px, 0);
          transform: translate(-8px, 0);
  -webkit-transition: opacity .3s ease 0s, visibility .3s ease 0s, -webkit-transform .3s ease 0s;
  transition: opacity .3s ease 0s, visibility .3s ease 0s, -webkit-transform .3s ease 0s;
  transition: transform .3s ease 0s, opacity .3s ease 0s, visibility .3s ease 0s;
  transition: transform .3s ease 0s, opacity .3s ease 0s, visibility .3s ease 0s, -webkit-transform .3s ease 0s;
}
.search .close:before, .search .close:after {
  content: '';
  position: absolute;
  width: 2px;
  border-radius: 1px;
  height: 10px;
  background: #6C7486;
  display: block;
  left: 50%;
  top: 50%;
  -webkit-transition: background .3s ease;
  transition: background .3s ease;
}
.search .close:before {
  -webkit-transform: translate(-50%, -50%) rotate(45deg);
          transform: translate(-50%, -50%) rotate(45deg);
}
.search .close:after {
  -webkit-transform: translate(-50%, -50%) rotate(-45deg);
          transform: translate(-50%, -50%) rotate(-45deg);
}
.search ul {
  overflow: hidden;
  margin: 0;
  padding: 8px 0 24px 0;
  list-style: none;
  position: absolute;
  left: 16px;
  top: 62px;
  white-space: nowrap;
}
.search ul.show li {
  opacity: 1;
  visibility: visible;
  -webkit-transform: translate(0, 0);
          transform: translate(0, 0);
}
.search ul.show li:nth-child(1) {
  -webkit-transition-delay: 0s;
          transition-delay: 0s;
}
.search ul.show li:nth-child(2) {
  -webkit-transition-delay: .3s;
          transition-delay: .3s;
}
.search ul li {
  margin: 0 0 20px 0;
  opacity: 0;
  visibility: hidden;
  -webkit-transition: all .3s ease;
  transition: all .3s ease;
  -webkit-transform: translate(0, -6px);
          transform: translate(0, -6px);
}
.search ul li:last-child {
  margin-bottom: 0;
}

.search ul li a img.queble {
  width: 24px;
}
.search ul li a h5 {
  margin: 0;
  color: #151924;
  font-size: 12px;
}
.search ul li a p {
  margin: 4px 0;
  color: #6C7486;
}
.search ul li a span {
  display: block;
  font-size: 10px;
  color: #6C7486;
  opacity: .6;
  font-style: italic;
}
.search ul li:nth-child(1) {
  -webkit-transition-delay: .3s;
          transition-delay: .3s;
}
.search ul li:nth-child(2) {
  -webkit-transition-delay: 0s;
          transition-delay: 0s;
}
.search ul li:hover {
  -webkit-transition: -webkit-transform .3s ease 0s;
  transition: -webkit-transform .3s ease 0s;
  transition: transform .3s ease 0s;
  transition: transform .3s ease 0s, -webkit-transform .3s ease 0s;
  -webkit-transform: translate(0, -2px);
          transform: translate(0, -2px);
}
.search.submit {
  background: #5628EE;
  -webkit-transform: scale(0.92);
          transform: scale(0.92);
}
.search.submit .bar .icon {
  background: #fff;
}
.search.submit .bar .icon:before {
  background: #5628EE;
}
.search.submit .bar .icon:after {
  background: #fff;
}
.search.submit .bar .icon i:before {
  background: #fff;
}
.search.submit form input {
  color: #fff;
}
.search.prepare .bar:before {
  opacity: 1;
  -webkit-transition: opacity 0s ease 1.25s;
  transition: opacity 0s ease 1.25s;
}
.search.prepare .bar .icon {
  -webkit-transform: scale(1);
          transform: scale(1);
  -webkit-transform-origin: 50% 50% 0;
          transform-origin: 50% 50% 0;
  -webkit-transition: background .1s ease, -webkit-transform .4s ease .85s, -webkit-transform-origin 0s ease 1.25s;
  transition: background .1s ease, -webkit-transform .4s ease .85s, -webkit-transform-origin 0s ease 1.25s;
  transition: transform .4s ease .85s, transform-origin 0s ease 1.25s, background .1s ease;
  transition: transform .4s ease .85s, transform-origin 0s ease 1.25s, background .1s ease, -webkit-transform .4s ease .85s, -webkit-transform-origin 0s ease 1.25s;
}
.search.prepare .bar .icon i:before {
  -webkit-transform: scaleY(0);
          transform: scaleY(0);
  -webkit-transition: background .1s ease, -webkit-transform .4s ease .4s;
  transition: background .1s ease, -webkit-transform .4s ease .4s;
  transition: transform .4s ease .4s, background .1s ease;
  transition: transform .4s ease .4s, background .1s ease, -webkit-transform .4s ease .4s;
}
.search.animate .bar .icon {
  -webkit-transform: rotateY(75deg);
          transform: rotateY(75deg);
  -webkit-transition: -webkit-transform .6s ease 0s;
  transition: -webkit-transform .6s ease 0s;
  transition: transform .6s ease 0s;
  transition: transform .6s ease 0s, -webkit-transform .6s ease 0s;
}
.search.animate .bar span {
  opacity: 1;
}
.search.done {
  padding-right: 56px;
  -webkit-transition: padding .4s ease;
  transition: padding .4s ease;
}
.search.done .bar .icon {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
  -webkit-transition: -webkit-transform .7s ease 0s;
  transition: -webkit-transform .7s ease 0s;
  transition: transform .7s ease 0s;
  transition: transform .7s ease 0s, -webkit-transform .7s ease 0s;
}
.search.done .close {
  opacity: 1;
  visibility: visible;
  -webkit-transform: translate(0, 0);
          transform: translate(0, 0);
  -webkit-transition: opacity .4s ease .5s, visibility .4s ease .5s, -webkit-transform .4s ease .5s;
  transition: opacity .4s ease .5s, visibility .4s ease .5s, -webkit-transform .4s ease .5s;
  transition: transform .4s ease .5s, opacity .4s ease .5s, visibility .4s ease .5s;
  transition: transform .4s ease .5s, opacity .4s ease .5s, visibility .4s ease .5s, -webkit-transform .4s ease .5s;
}
.search.done .close:hover {
  background: #8C6FF0;
  -webkit-transition: background .3s ease;
  transition: background .3s ease;
}
.search.done .close:hover:before, .search.done .close:hover:after {
  background: #fff;
}
.search.reset .bar:before {
  opacity: 0;
  -webkit-transition: opacity 0s ease .4s;
  transition: opacity 0s ease .4s;
}
.search.reset .bar .icon {
  -webkit-transform: rotateY(0deg);
          transform: rotateY(0deg);
  -webkit-transition: -webkit-transform .4s ease 0s;
  transition: -webkit-transform .4s ease 0s;
  transition: transform .4s ease 0s;
  transition: transform .4s ease 0s, -webkit-transform .4s ease 0s;
}

em {
  color: #6C7486;
  font-size: 12px;
  margin: 24px 0 0 0;
  display: block;
  text-align: center;
  font-style: italic;
}
em strong {
  font-weight: bold;
}

html {
  box-sizing: border-box;
  -webkit-font-smoothing: antialiased;
}

* {
  box-sizing: inherit;
}
*:before, *:after {
  box-sizing: inherit;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script>
$(document).ready(function() {

    $('.search').each(function() {

        var self = $(this);
        var form = self.children('form');
        var input = form.children('input');
        var span = $('<span />').appendTo(form);
        var bar = self.children('.bar');
        var close = self.children('.close');
        var list = self.children('ul');

        input.keypress(function (e) {
            if(e.which && e.charCode) {
                resizeForText(input, span, $(this).val() + String.fromCharCode(e.keyCode | e.charCode));
            }
        });

        input.keyup(function(e) {
            if(e.keyCode === 8 || e.keyCode === 46) {
                resizeForText(input, span, $(this).val());
            }
        });

        resizeForText(input, span, self.val());

        form.submit(function(e) {
            e.preventDefault();
            if(!self.hasClass('prepare')) {
                input.blur();
                $('<span />').text(input.val()).appendTo(bar);
                self.addClass('prepare submit');
                setTimeout(function() {
                    self.removeClass('submit');
                }, 200);
                setTimeout(function() {
                    self.addClass('animate');
                    bar.animate({
                        width: (self.outerWidth() - 32)
                    }, 800, function() {
                        var searchW = ((list.outerWidth() + 32) > (72 + bar.outerWidth())) ? (list.outerWidth() + 32) : 72 + bar.outerWidth();
                        self.animate({
                            width: searchW
                        }, 400);
                        setTimeout(function() {
                            self.animate({
                                height: self.outerHeight() + list.outerHeight()
                            }, 500, function() {
                                list.addClass('show');
                            });
                        }, 200);
                    });
                    setTimeout(function() {
                        self.addClass('done');
                    }, 800);
                }, 1250);
            }
        });

        close.on('click', function(e) {
            self.removeClass('done');
            setTimeout(function() {
                input.val('');
                bar.animate({
                    width: 32
                }, 1000, function() {
                    self.addClass('reset');
                    bar.children('span').remove();
                    setTimeout(function() {
                        self.removeClass('animate reset prepare');
                        setTimeout(function() {
                            input.animate({
                                width: 32
                            }, 400, function() {
                                bar.removeAttr('style');
                            });
                        }, 200);
                    }, 400);
                });
                list.removeClass('show');
                setTimeout(function() {
                    self.animate({
                        height: 62
                    }, 400, function() {
                        self.animate({
                            width: 92
                        }, 400, function() {
                            self.removeAttr('style');
                        });
                    });
                }, 200);
            }, 500);
        });

    });

});

function resizeForText(input, span, text) {
    text = (!text) ? ' ' : text;
    span.text(text);
    input.width(span.width());
}
</script>

<link rel="stylesheet" href="CSS/style.css">
<script type="text/javascript" src="JS/jquery.min.js"></script>
<script type="text/javascript" src="JS/main.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <meta name="_csrf" content="${_csrf.token}"/>
    <meta name="_csrf_header" content="${_csrf.headerName}"/>

            <script>
           $(function () {
             var token = $("meta[name='_csrf']").attr("content");
             var header = $("meta[name='_csrf_header']").attr("content");
             $(document).ajaxSend(function(e, xhr, options) {
               xhr.setRequestHeader(header, token);
             });
           });
            </script>
</head>

<div class="nav">
  <a href="#home">Home</a>
  <a href="#men">Men</a>
  <a href="#women">Women</a>
  <a href="#kids">Kids</a>
  <a href="#about">About</a>
<div style="display:inline-block">
    <div class="search">
        <div class="bar">
            <div class="icon">
                <i></i>
            </div>
        </div>
        <form>
            <input type="text">
        </form>
        <div class="close"></div>
    </div>
</div>
</div>

<body>
</body>
<div class="footer">
</div>
</html>