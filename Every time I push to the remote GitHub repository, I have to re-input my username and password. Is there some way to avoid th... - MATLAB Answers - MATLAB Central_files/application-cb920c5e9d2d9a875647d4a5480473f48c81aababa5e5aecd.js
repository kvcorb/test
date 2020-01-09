/*! jQuery UI - v1.10.3 - 2013-06-27
* http://jqueryui.com
* Includes: jquery.ui.core.js, jquery.ui.widget.js, jquery.ui.mouse.js, jquery.ui.position.js, jquery.ui.draggable.js, jquery.ui.resizable.js, jquery.ui.autocomplete.js, jquery.ui.button.js, jquery.ui.dialog.js, jquery.ui.menu.js
* Copyright 2013 jQuery Foundation and other contributors Licensed MIT */


(function(e,t){function i(t,i){var a,n,r,o=t.nodeName.toLowerCase();return"area"===o?(a=t.parentNode,n=a.name,t.href&&n&&"map"===a.nodeName.toLowerCase()?(r=e("img[usemap=#"+n+"]")[0],!!r&&s(r)):!1):(/input|select|textarea|button|object/.test(o)?!t.disabled:"a"===o?t.href||i:i)&&s(t)}function s(t){return e.expr.filters.visible(t)&&!e(t).parents().addBack().filter(function(){return"hidden"===e.css(this,"visibility")}).length}var a=0,n=/^ui-id-\d+$/;e.ui=e.ui||{},e.extend(e.ui,{version:"1.10.3",keyCode:{BACKSPACE:8,COMMA:188,DELETE:46,DOWN:40,END:35,ENTER:13,ESCAPE:27,HOME:36,LEFT:37,NUMPAD_ADD:107,NUMPAD_DECIMAL:110,NUMPAD_DIVIDE:111,NUMPAD_ENTER:108,NUMPAD_MULTIPLY:106,NUMPAD_SUBTRACT:109,PAGE_DOWN:34,PAGE_UP:33,PERIOD:190,RIGHT:39,SPACE:32,TAB:9,UP:38}}),e.fn.extend({focus:function(t){return function(i,s){return"number"==typeof i?this.each(function(){var t=this;setTimeout(function(){e(t).focus(),s&&s.call(t)},i)}):t.apply(this,arguments)}}(e.fn.focus),scrollParent:function(){var t;return t=e.ui.ie&&/(static|relative)/.test(this.css("position"))||/absolute/.test(this.css("position"))?this.parents().filter(function(){return/(relative|absolute|fixed)/.test(e.css(this,"position"))&&/(auto|scroll)/.test(e.css(this,"overflow")+e.css(this,"overflow-y")+e.css(this,"overflow-x"))}).eq(0):this.parents().filter(function(){return/(auto|scroll)/.test(e.css(this,"overflow")+e.css(this,"overflow-y")+e.css(this,"overflow-x"))}).eq(0),/fixed/.test(this.css("position"))||!t.length?e(document):t},zIndex:function(i){if(i!==t)return this.css("zIndex",i);if(this.length)for(var s,a,n=e(this[0]);n.length&&n[0]!==document;){if(s=n.css("position"),("absolute"===s||"relative"===s||"fixed"===s)&&(a=parseInt(n.css("zIndex"),10),!isNaN(a)&&0!==a))return a;n=n.parent()}return 0},uniqueId:function(){return this.each(function(){this.id||(this.id="ui-id-"+ ++a)})},removeUniqueId:function(){return this.each(function(){n.test(this.id)&&e(this).removeAttr("id")})}}),e.extend(e.expr[":"],{data:e.expr.createPseudo?e.expr.createPseudo(function(t){return function(i){return!!e.data(i,t)}}):function(t,i,s){return!!e.data(t,s[3])},focusable:function(t){return i(t,!isNaN(e.attr(t,"tabindex")))},tabbable:function(t){var s=e.attr(t,"tabindex"),a=isNaN(s);return(a||s>=0)&&i(t,!a)}}),e("<a>").outerWidth(1).jquery||e.each(["Width","Height"],function(i,s){function a(t,i,s,a){return e.each(n,function(){i-=parseFloat(e.css(t,"padding"+this))||0,s&&(i-=parseFloat(e.css(t,"border"+this+"Width"))||0),a&&(i-=parseFloat(e.css(t,"margin"+this))||0)}),i}var n="Width"===s?["Left","Right"]:["Top","Bottom"],r=s.toLowerCase(),o={innerWidth:e.fn.innerWidth,innerHeight:e.fn.innerHeight,outerWidth:e.fn.outerWidth,outerHeight:e.fn.outerHeight};e.fn["inner"+s]=function(i){return i===t?o["inner"+s].call(this):this.each(function(){e(this).css(r,a(this,i)+"px")})},e.fn["outer"+s]=function(t,i){return"number"!=typeof t?o["outer"+s].call(this,t):this.each(function(){e(this).css(r,a(this,t,!0,i)+"px")})}}),e.fn.addBack||(e.fn.addBack=function(e){return this.add(null==e?this.prevObject:this.prevObject.filter(e))}),e("<a>").data("a-b","a").removeData("a-b").data("a-b")&&(e.fn.removeData=function(t){return function(i){return arguments.length?t.call(this,e.camelCase(i)):t.call(this)}}(e.fn.removeData)),e.ui.ie=!!/msie [\w.]+/.exec(navigator.userAgent.toLowerCase()),e.support.selectstart="onselectstart"in document.createElement("div"),e.fn.extend({disableSelection:function(){return this.bind((e.support.selectstart?"selectstart":"mousedown")+".ui-disableSelection",function(e){e.preventDefault()})},enableSelection:function(){return this.unbind(".ui-disableSelection")}}),e.extend(e.ui,{plugin:{add:function(t,i,s){var a,n=e.ui[t].prototype;for(a in s)n.plugins[a]=n.plugins[a]||[],n.plugins[a].push([i,s[a]])},call:function(e,t,i){var s,a=e.plugins[t];if(a&&e.element[0].parentNode&&11!==e.element[0].parentNode.nodeType)for(s=0;a.length>s;s++)e.options[a[s][0]]&&a[s][1].apply(e.element,i)}},hasScroll:function(t,i){if("hidden"===e(t).css("overflow"))return!1;var s=i&&"left"===i?"scrollLeft":"scrollTop",a=!1;return t[s]>0?!0:(t[s]=1,a=t[s]>0,t[s]=0,a)}})})(jQuery);(function(e,t){var i=0,s=Array.prototype.slice,n=e.cleanData;e.cleanData=function(t){for(var i,s=0;null!=(i=t[s]);s++)try{e(i).triggerHandler("remove")}catch(a){}n(t)},e.widget=function(i,s,n){var a,r,o,h,l={},u=i.split(".")[0];i=i.split(".")[1],a=u+"-"+i,n||(n=s,s=e.Widget),e.expr[":"][a.toLowerCase()]=function(t){return!!e.data(t,a)},e[u]=e[u]||{},r=e[u][i],o=e[u][i]=function(e,i){return this._createWidget?(arguments.length&&this._createWidget(e,i),t):new o(e,i)},e.extend(o,r,{version:n.version,_proto:e.extend({},n),_childConstructors:[]}),h=new s,h.options=e.widget.extend({},h.options),e.each(n,function(i,n){return e.isFunction(n)?(l[i]=function(){var e=function(){return s.prototype[i].apply(this,arguments)},t=function(e){return s.prototype[i].apply(this,e)};return function(){var i,s=this._super,a=this._superApply;return this._super=e,this._superApply=t,i=n.apply(this,arguments),this._super=s,this._superApply=a,i}}(),t):(l[i]=n,t)}),o.prototype=e.widget.extend(h,{widgetEventPrefix:r?h.widgetEventPrefix:i},l,{constructor:o,namespace:u,widgetName:i,widgetFullName:a}),r?(e.each(r._childConstructors,function(t,i){var s=i.prototype;e.widget(s.namespace+"."+s.widgetName,o,i._proto)}),delete r._childConstructors):s._childConstructors.push(o),e.widget.bridge(i,o)},e.widget.extend=function(i){for(var n,a,r=s.call(arguments,1),o=0,h=r.length;h>o;o++)for(n in r[o])a=r[o][n],r[o].hasOwnProperty(n)&&a!==t&&(i[n]=e.isPlainObject(a)?e.isPlainObject(i[n])?e.widget.extend({},i[n],a):e.widget.extend({},a):a);return i},e.widget.bridge=function(i,n){var a=n.prototype.widgetFullName||i;e.fn[i]=function(r){var o="string"==typeof r,h=s.call(arguments,1),l=this;return r=!o&&h.length?e.widget.extend.apply(null,[r].concat(h)):r,o?this.each(function(){var s,n=e.data(this,a);return n?e.isFunction(n[r])&&"_"!==r.charAt(0)?(s=n[r].apply(n,h),s!==n&&s!==t?(l=s&&s.jquery?l.pushStack(s.get()):s,!1):t):e.error("no such method '"+r+"' for "+i+" widget instance"):e.error("cannot call methods on "+i+" prior to initialization; "+"attempted to call method '"+r+"'")}):this.each(function(){var t=e.data(this,a);t?t.option(r||{})._init():e.data(this,a,new n(r,this))}),l}},e.Widget=function(){},e.Widget._childConstructors=[],e.Widget.prototype={widgetName:"widget",widgetEventPrefix:"",defaultElement:"<div>",options:{disabled:!1,create:null},_createWidget:function(t,s){s=e(s||this.defaultElement||this)[0],this.element=e(s),this.uuid=i++,this.eventNamespace="."+this.widgetName+this.uuid,this.options=e.widget.extend({},this.options,this._getCreateOptions(),t),this.bindings=e(),this.hoverable=e(),this.focusable=e(),s!==this&&(e.data(s,this.widgetFullName,this),this._on(!0,this.element,{remove:function(e){e.target===s&&this.destroy()}}),this.document=e(s.style?s.ownerDocument:s.document||s),this.window=e(this.document[0].defaultView||this.document[0].parentWindow)),this._create(),this._trigger("create",null,this._getCreateEventData()),this._init()},_getCreateOptions:e.noop,_getCreateEventData:e.noop,_create:e.noop,_init:e.noop,destroy:function(){this._destroy(),this.element.unbind(this.eventNamespace).removeData(this.widgetName).removeData(this.widgetFullName).removeData(e.camelCase(this.widgetFullName)),this.widget().unbind(this.eventNamespace).removeAttr("aria-disabled").removeClass(this.widgetFullName+"-disabled "+"ui-state-disabled"),this.bindings.unbind(this.eventNamespace),this.hoverable.removeClass("ui-state-hover"),this.focusable.removeClass("ui-state-focus")},_destroy:e.noop,widget:function(){return this.element},option:function(i,s){var n,a,r,o=i;if(0===arguments.length)return e.widget.extend({},this.options);if("string"==typeof i)if(o={},n=i.split("."),i=n.shift(),n.length){for(a=o[i]=e.widget.extend({},this.options[i]),r=0;n.length-1>r;r++)a[n[r]]=a[n[r]]||{},a=a[n[r]];if(i=n.pop(),s===t)return a[i]===t?null:a[i];a[i]=s}else{if(s===t)return this.options[i]===t?null:this.options[i];o[i]=s}return this._setOptions(o),this},_setOptions:function(e){var t;for(t in e)this._setOption(t,e[t]);return this},_setOption:function(e,t){return this.options[e]=t,"disabled"===e&&(this.widget().toggleClass(this.widgetFullName+"-disabled ui-state-disabled",!!t).attr("aria-disabled",t),this.hoverable.removeClass("ui-state-hover"),this.focusable.removeClass("ui-state-focus")),this},enable:function(){return this._setOption("disabled",!1)},disable:function(){return this._setOption("disabled",!0)},_on:function(i,s,n){var a,r=this;"boolean"!=typeof i&&(n=s,s=i,i=!1),n?(s=a=e(s),this.bindings=this.bindings.add(s)):(n=s,s=this.element,a=this.widget()),e.each(n,function(n,o){function h(){return i||r.options.disabled!==!0&&!e(this).hasClass("ui-state-disabled")?("string"==typeof o?r[o]:o).apply(r,arguments):t}"string"!=typeof o&&(h.guid=o.guid=o.guid||h.guid||e.guid++);var l=n.match(/^(\w+)\s*(.*)$/),u=l[1]+r.eventNamespace,c=l[2];c?a.delegate(c,u,h):s.bind(u,h)})},_off:function(e,t){t=(t||"").split(" ").join(this.eventNamespace+" ")+this.eventNamespace,e.unbind(t).undelegate(t)},_delay:function(e,t){function i(){return("string"==typeof e?s[e]:e).apply(s,arguments)}var s=this;return setTimeout(i,t||0)},_hoverable:function(t){this.hoverable=this.hoverable.add(t),this._on(t,{mouseenter:function(t){e(t.currentTarget).addClass("ui-state-hover")},mouseleave:function(t){e(t.currentTarget).removeClass("ui-state-hover")}})},_focusable:function(t){this.focusable=this.focusable.add(t),this._on(t,{focusin:function(t){e(t.currentTarget).addClass("ui-state-focus")},focusout:function(t){e(t.currentTarget).removeClass("ui-state-focus")}})},_trigger:function(t,i,s){var n,a,r=this.options[t];if(s=s||{},i=e.Event(i),i.type=(t===this.widgetEventPrefix?t:this.widgetEventPrefix+t).toLowerCase(),i.target=this.element[0],a=i.originalEvent)for(n in a)n in i||(i[n]=a[n]);return this.element.trigger(i,s),!(e.isFunction(r)&&r.apply(this.element[0],[i].concat(s))===!1||i.isDefaultPrevented())}},e.each({show:"fadeIn",hide:"fadeOut"},function(t,i){e.Widget.prototype["_"+t]=function(s,n,a){"string"==typeof n&&(n={effect:n});var r,o=n?n===!0||"number"==typeof n?i:n.effect||i:t;n=n||{},"number"==typeof n&&(n={duration:n}),r=!e.isEmptyObject(n),n.complete=a,n.delay&&s.delay(n.delay),r&&e.effects&&e.effects.effect[o]?s[t](n):o!==t&&s[o]?s[o](n.duration,n.easing,a):s.queue(function(i){e(this)[t](),a&&a.call(s[0]),i()})}})})(jQuery);(function(e){var t=!1;e(document).mouseup(function(){t=!1}),e.widget("ui.mouse",{version:"1.10.3",options:{cancel:"input,textarea,button,select,option",distance:1,delay:0},_mouseInit:function(){var t=this;this.element.bind("mousedown."+this.widgetName,function(e){return t._mouseDown(e)}).bind("click."+this.widgetName,function(i){return!0===e.data(i.target,t.widgetName+".preventClickEvent")?(e.removeData(i.target,t.widgetName+".preventClickEvent"),i.stopImmediatePropagation(),!1):undefined}),this.started=!1},_mouseDestroy:function(){this.element.unbind("."+this.widgetName),this._mouseMoveDelegate&&e(document).unbind("mousemove."+this.widgetName,this._mouseMoveDelegate).unbind("mouseup."+this.widgetName,this._mouseUpDelegate)},_mouseDown:function(i){if(!t){this._mouseStarted&&this._mouseUp(i),this._mouseDownEvent=i;var s=this,n=1===i.which,a="string"==typeof this.options.cancel&&i.target.nodeName?e(i.target).closest(this.options.cancel).length:!1;return n&&!a&&this._mouseCapture(i)?(this.mouseDelayMet=!this.options.delay,this.mouseDelayMet||(this._mouseDelayTimer=setTimeout(function(){s.mouseDelayMet=!0},this.options.delay)),this._mouseDistanceMet(i)&&this._mouseDelayMet(i)&&(this._mouseStarted=this._mouseStart(i)!==!1,!this._mouseStarted)?(i.preventDefault(),!0):(!0===e.data(i.target,this.widgetName+".preventClickEvent")&&e.removeData(i.target,this.widgetName+".preventClickEvent"),this._mouseMoveDelegate=function(e){return s._mouseMove(e)},this._mouseUpDelegate=function(e){return s._mouseUp(e)},e(document).bind("mousemove."+this.widgetName,this._mouseMoveDelegate).bind("mouseup."+this.widgetName,this._mouseUpDelegate),i.preventDefault(),t=!0,!0)):!0}},_mouseMove:function(t){return e.ui.ie&&(!document.documentMode||9>document.documentMode)&&!t.button?this._mouseUp(t):this._mouseStarted?(this._mouseDrag(t),t.preventDefault()):(this._mouseDistanceMet(t)&&this._mouseDelayMet(t)&&(this._mouseStarted=this._mouseStart(this._mouseDownEvent,t)!==!1,this._mouseStarted?this._mouseDrag(t):this._mouseUp(t)),!this._mouseStarted)},_mouseUp:function(t){return e(document).unbind("mousemove."+this.widgetName,this._mouseMoveDelegate).unbind("mouseup."+this.widgetName,this._mouseUpDelegate),this._mouseStarted&&(this._mouseStarted=!1,t.target===this._mouseDownEvent.target&&e.data(t.target,this.widgetName+".preventClickEvent",!0),this._mouseStop(t)),!1},_mouseDistanceMet:function(e){return Math.max(Math.abs(this._mouseDownEvent.pageX-e.pageX),Math.abs(this._mouseDownEvent.pageY-e.pageY))>=this.options.distance},_mouseDelayMet:function(){return this.mouseDelayMet},_mouseStart:function(){},_mouseDrag:function(){},_mouseStop:function(){},_mouseCapture:function(){return!0}})})(jQuery);(function(t,e){function i(t,e,i){return[parseFloat(t[0])*(p.test(t[0])?e/100:1),parseFloat(t[1])*(p.test(t[1])?i/100:1)]}function s(e,i){return parseInt(t.css(e,i),10)||0}function n(e){var i=e[0];return 9===i.nodeType?{width:e.width(),height:e.height(),offset:{top:0,left:0}}:t.isWindow(i)?{width:e.width(),height:e.height(),offset:{top:e.scrollTop(),left:e.scrollLeft()}}:i.preventDefault?{width:0,height:0,offset:{top:i.pageY,left:i.pageX}}:{width:e.outerWidth(),height:e.outerHeight(),offset:e.offset()}}t.ui=t.ui||{};var a,o=Math.max,r=Math.abs,h=Math.round,l=/left|center|right/,c=/top|center|bottom/,u=/[\+\-]\d+(\.[\d]+)?%?/,d=/^\w+/,p=/%$/,f=t.fn.position;t.position={scrollbarWidth:function(){if(a!==e)return a;var i,s,n=t("<div style='display:block;width:50px;height:50px;overflow:hidden;'><div style='height:100px;width:auto;'></div></div>"),o=n.children()[0];return t("body").append(n),i=o.offsetWidth,n.css("overflow","scroll"),s=o.offsetWidth,i===s&&(s=n[0].clientWidth),n.remove(),a=i-s},getScrollInfo:function(e){var i=e.isWindow?"":e.element.css("overflow-x"),s=e.isWindow?"":e.element.css("overflow-y"),n="scroll"===i||"auto"===i&&e.width<e.element[0].scrollWidth,a="scroll"===s||"auto"===s&&e.height<e.element[0].scrollHeight;return{width:a?t.position.scrollbarWidth():0,height:n?t.position.scrollbarWidth():0}},getWithinInfo:function(e){var i=t(e||window),s=t.isWindow(i[0]);return{element:i,isWindow:s,offset:i.offset()||{left:0,top:0},scrollLeft:i.scrollLeft(),scrollTop:i.scrollTop(),width:s?i.width():i.outerWidth(),height:s?i.height():i.outerHeight()}}},t.fn.position=function(e){if(!e||!e.of)return f.apply(this,arguments);e=t.extend({},e);var a,p,m,g,v,b,_=t(e.of),y=t.position.getWithinInfo(e.within),w=t.position.getScrollInfo(y),x=(e.collision||"flip").split(" "),k={};return b=n(_),_[0].preventDefault&&(e.at="left top"),p=b.width,m=b.height,g=b.offset,v=t.extend({},g),t.each(["my","at"],function(){var t,i,s=(e[this]||"").split(" ");1===s.length&&(s=l.test(s[0])?s.concat(["center"]):c.test(s[0])?["center"].concat(s):["center","center"]),s[0]=l.test(s[0])?s[0]:"center",s[1]=c.test(s[1])?s[1]:"center",t=u.exec(s[0]),i=u.exec(s[1]),k[this]=[t?t[0]:0,i?i[0]:0],e[this]=[d.exec(s[0])[0],d.exec(s[1])[0]]}),1===x.length&&(x[1]=x[0]),"right"===e.at[0]?v.left+=p:"center"===e.at[0]&&(v.left+=p/2),"bottom"===e.at[1]?v.top+=m:"center"===e.at[1]&&(v.top+=m/2),a=i(k.at,p,m),v.left+=a[0],v.top+=a[1],this.each(function(){var n,l,c=t(this),u=c.outerWidth(),d=c.outerHeight(),f=s(this,"marginLeft"),b=s(this,"marginTop"),D=u+f+s(this,"marginRight")+w.width,T=d+b+s(this,"marginBottom")+w.height,C=t.extend({},v),M=i(k.my,c.outerWidth(),c.outerHeight());"right"===e.my[0]?C.left-=u:"center"===e.my[0]&&(C.left-=u/2),"bottom"===e.my[1]?C.top-=d:"center"===e.my[1]&&(C.top-=d/2),C.left+=M[0],C.top+=M[1],t.support.offsetFractions||(C.left=h(C.left),C.top=h(C.top)),n={marginLeft:f,marginTop:b},t.each(["left","top"],function(i,s){t.ui.position[x[i]]&&t.ui.position[x[i]][s](C,{targetWidth:p,targetHeight:m,elemWidth:u,elemHeight:d,collisionPosition:n,collisionWidth:D,collisionHeight:T,offset:[a[0]+M[0],a[1]+M[1]],my:e.my,at:e.at,within:y,elem:c})}),e.using&&(l=function(t){var i=g.left-C.left,s=i+p-u,n=g.top-C.top,a=n+m-d,h={target:{element:_,left:g.left,top:g.top,width:p,height:m},element:{element:c,left:C.left,top:C.top,width:u,height:d},horizontal:0>s?"left":i>0?"right":"center",vertical:0>a?"top":n>0?"bottom":"middle"};u>p&&p>r(i+s)&&(h.horizontal="center"),d>m&&m>r(n+a)&&(h.vertical="middle"),h.important=o(r(i),r(s))>o(r(n),r(a))?"horizontal":"vertical",e.using.call(this,t,h)}),c.offset(t.extend(C,{using:l}))})},t.ui.position={fit:{left:function(t,e){var i,s=e.within,n=s.isWindow?s.scrollLeft:s.offset.left,a=s.width,r=t.left-e.collisionPosition.marginLeft,h=n-r,l=r+e.collisionWidth-a-n;e.collisionWidth>a?h>0&&0>=l?(i=t.left+h+e.collisionWidth-a-n,t.left+=h-i):t.left=l>0&&0>=h?n:h>l?n+a-e.collisionWidth:n:h>0?t.left+=h:l>0?t.left-=l:t.left=o(t.left-r,t.left)},top:function(t,e){var i,s=e.within,n=s.isWindow?s.scrollTop:s.offset.top,a=e.within.height,r=t.top-e.collisionPosition.marginTop,h=n-r,l=r+e.collisionHeight-a-n;e.collisionHeight>a?h>0&&0>=l?(i=t.top+h+e.collisionHeight-a-n,t.top+=h-i):t.top=l>0&&0>=h?n:h>l?n+a-e.collisionHeight:n:h>0?t.top+=h:l>0?t.top-=l:t.top=o(t.top-r,t.top)}},flip:{left:function(t,e){var i,s,n=e.within,a=n.offset.left+n.scrollLeft,o=n.width,h=n.isWindow?n.scrollLeft:n.offset.left,l=t.left-e.collisionPosition.marginLeft,c=l-h,u=l+e.collisionWidth-o-h,d="left"===e.my[0]?-e.elemWidth:"right"===e.my[0]?e.elemWidth:0,p="left"===e.at[0]?e.targetWidth:"right"===e.at[0]?-e.targetWidth:0,f=-2*e.offset[0];0>c?(i=t.left+d+p+f+e.collisionWidth-o-a,(0>i||r(c)>i)&&(t.left+=d+p+f)):u>0&&(s=t.left-e.collisionPosition.marginLeft+d+p+f-h,(s>0||u>r(s))&&(t.left+=d+p+f))},top:function(t,e){var i,s,n=e.within,a=n.offset.top+n.scrollTop,o=n.height,h=n.isWindow?n.scrollTop:n.offset.top,l=t.top-e.collisionPosition.marginTop,c=l-h,u=l+e.collisionHeight-o-h,d="top"===e.my[1],p=d?-e.elemHeight:"bottom"===e.my[1]?e.elemHeight:0,f="top"===e.at[1]?e.targetHeight:"bottom"===e.at[1]?-e.targetHeight:0,m=-2*e.offset[1];0>c?(s=t.top+p+f+m+e.collisionHeight-o-a,t.top+p+f+m>c&&(0>s||r(c)>s)&&(t.top+=p+f+m)):u>0&&(i=t.top-e.collisionPosition.marginTop+p+f+m-h,t.top+p+f+m>u&&(i>0||u>r(i))&&(t.top+=p+f+m))}},flipfit:{left:function(){t.ui.position.flip.left.apply(this,arguments),t.ui.position.fit.left.apply(this,arguments)},top:function(){t.ui.position.flip.top.apply(this,arguments),t.ui.position.fit.top.apply(this,arguments)}}},function(){var e,i,s,n,a,o=document.getElementsByTagName("body")[0],r=document.createElement("div");e=document.createElement(o?"div":"body"),s={visibility:"hidden",width:0,height:0,border:0,margin:0,background:"none"},o&&t.extend(s,{position:"absolute",left:"-1000px",top:"-1000px"});for(a in s)e.style[a]=s[a];e.appendChild(r),i=o||document.documentElement,i.insertBefore(e,i.firstChild),r.style.cssText="position: absolute; left: 10.7432222px;",n=t(r).offset().left,t.support.offsetFractions=n>10&&11>n,e.innerHTML="",i.removeChild(e)}()})(jQuery);(function(e){e.widget("ui.draggable",e.ui.mouse,{version:"1.10.3",widgetEventPrefix:"drag",options:{addClasses:!0,appendTo:"parent",axis:!1,connectToSortable:!1,containment:!1,cursor:"auto",cursorAt:!1,grid:!1,handle:!1,helper:"original",iframeFix:!1,opacity:!1,refreshPositions:!1,revert:!1,revertDuration:500,scope:"default",scroll:!0,scrollSensitivity:20,scrollSpeed:20,snap:!1,snapMode:"both",snapTolerance:20,stack:!1,zIndex:!1,drag:null,start:null,stop:null},_create:function(){"original"!==this.options.helper||/^(?:r|a|f)/.test(this.element.css("position"))||(this.element[0].style.position="relative"),this.options.addClasses&&this.element.addClass("ui-draggable"),this.options.disabled&&this.element.addClass("ui-draggable-disabled"),this._mouseInit()},_destroy:function(){this.element.removeClass("ui-draggable ui-draggable-dragging ui-draggable-disabled"),this._mouseDestroy()},_mouseCapture:function(t){var i=this.options;return this.helper||i.disabled||e(t.target).closest(".ui-resizable-handle").length>0?!1:(this.handle=this._getHandle(t),this.handle?(e(i.iframeFix===!0?"iframe":i.iframeFix).each(function(){e("<div class='ui-draggable-iframeFix' style='background: #fff;'></div>").css({width:this.offsetWidth+"px",height:this.offsetHeight+"px",position:"absolute",opacity:"0.001",zIndex:1e3}).css(e(this).offset()).appendTo("body")}),!0):!1)},_mouseStart:function(t){var i=this.options;return this.helper=this._createHelper(t),this.helper.addClass("ui-draggable-dragging"),this._cacheHelperProportions(),e.ui.ddmanager&&(e.ui.ddmanager.current=this),this._cacheMargins(),this.cssPosition=this.helper.css("position"),this.scrollParent=this.helper.scrollParent(),this.offsetParent=this.helper.offsetParent(),this.offsetParentCssPosition=this.offsetParent.css("position"),this.offset=this.positionAbs=this.element.offset(),this.offset={top:this.offset.top-this.margins.top,left:this.offset.left-this.margins.left},this.offset.scroll=!1,e.extend(this.offset,{click:{left:t.pageX-this.offset.left,top:t.pageY-this.offset.top},parent:this._getParentOffset(),relative:this._getRelativeOffset()}),this.originalPosition=this.position=this._generatePosition(t),this.originalPageX=t.pageX,this.originalPageY=t.pageY,i.cursorAt&&this._adjustOffsetFromHelper(i.cursorAt),this._setContainment(),this._trigger("start",t)===!1?(this._clear(),!1):(this._cacheHelperProportions(),e.ui.ddmanager&&!i.dropBehaviour&&e.ui.ddmanager.prepareOffsets(this,t),this._mouseDrag(t,!0),e.ui.ddmanager&&e.ui.ddmanager.dragStart(this,t),!0)},_mouseDrag:function(t,i){if("fixed"===this.offsetParentCssPosition&&(this.offset.parent=this._getParentOffset()),this.position=this._generatePosition(t),this.positionAbs=this._convertPositionTo("absolute"),!i){var s=this._uiHash();if(this._trigger("drag",t,s)===!1)return this._mouseUp({}),!1;this.position=s.position}return this.options.axis&&"y"===this.options.axis||(this.helper[0].style.left=this.position.left+"px"),this.options.axis&&"x"===this.options.axis||(this.helper[0].style.top=this.position.top+"px"),e.ui.ddmanager&&e.ui.ddmanager.drag(this,t),!1},_mouseStop:function(t){var i=this,s=!1;return e.ui.ddmanager&&!this.options.dropBehaviour&&(s=e.ui.ddmanager.drop(this,t)),this.dropped&&(s=this.dropped,this.dropped=!1),"original"!==this.options.helper||e.contains(this.element[0].ownerDocument,this.element[0])?("invalid"===this.options.revert&&!s||"valid"===this.options.revert&&s||this.options.revert===!0||e.isFunction(this.options.revert)&&this.options.revert.call(this.element,s)?e(this.helper).animate(this.originalPosition,parseInt(this.options.revertDuration,10),function(){i._trigger("stop",t)!==!1&&i._clear()}):this._trigger("stop",t)!==!1&&this._clear(),!1):!1},_mouseUp:function(t){return e("div.ui-draggable-iframeFix").each(function(){this.parentNode.removeChild(this)}),e.ui.ddmanager&&e.ui.ddmanager.dragStop(this,t),e.ui.mouse.prototype._mouseUp.call(this,t)},cancel:function(){return this.helper.is(".ui-draggable-dragging")?this._mouseUp({}):this._clear(),this},_getHandle:function(t){return this.options.handle?!!e(t.target).closest(this.element.find(this.options.handle)).length:!0},_createHelper:function(t){var i=this.options,s=e.isFunction(i.helper)?e(i.helper.apply(this.element[0],[t])):"clone"===i.helper?this.element.clone().removeAttr("id"):this.element;return s.parents("body").length||s.appendTo("parent"===i.appendTo?this.element[0].parentNode:i.appendTo),s[0]===this.element[0]||/(fixed|absolute)/.test(s.css("position"))||s.css("position","absolute"),s},_adjustOffsetFromHelper:function(t){"string"==typeof t&&(t=t.split(" ")),e.isArray(t)&&(t={left:+t[0],top:+t[1]||0}),"left"in t&&(this.offset.click.left=t.left+this.margins.left),"right"in t&&(this.offset.click.left=this.helperProportions.width-t.right+this.margins.left),"top"in t&&(this.offset.click.top=t.top+this.margins.top),"bottom"in t&&(this.offset.click.top=this.helperProportions.height-t.bottom+this.margins.top)},_getParentOffset:function(){var t=this.offsetParent.offset();return"absolute"===this.cssPosition&&this.scrollParent[0]!==document&&e.contains(this.scrollParent[0],this.offsetParent[0])&&(t.left+=this.scrollParent.scrollLeft(),t.top+=this.scrollParent.scrollTop()),(this.offsetParent[0]===document.body||this.offsetParent[0].tagName&&"html"===this.offsetParent[0].tagName.toLowerCase()&&e.ui.ie)&&(t={top:0,left:0}),{top:t.top+(parseInt(this.offsetParent.css("borderTopWidth"),10)||0),left:t.left+(parseInt(this.offsetParent.css("borderLeftWidth"),10)||0)}},_getRelativeOffset:function(){if("relative"===this.cssPosition){var e=this.element.position();return{top:e.top-(parseInt(this.helper.css("top"),10)||0)+this.scrollParent.scrollTop(),left:e.left-(parseInt(this.helper.css("left"),10)||0)+this.scrollParent.scrollLeft()}}return{top:0,left:0}},_cacheMargins:function(){this.margins={left:parseInt(this.element.css("marginLeft"),10)||0,top:parseInt(this.element.css("marginTop"),10)||0,right:parseInt(this.element.css("marginRight"),10)||0,bottom:parseInt(this.element.css("marginBottom"),10)||0}},_cacheHelperProportions:function(){this.helperProportions={width:this.helper.outerWidth(),height:this.helper.outerHeight()}},_setContainment:function(){var t,i,s,n=this.options;return n.containment?"window"===n.containment?(this.containment=[e(window).scrollLeft()-this.offset.relative.left-this.offset.parent.left,e(window).scrollTop()-this.offset.relative.top-this.offset.parent.top,e(window).scrollLeft()+e(window).width()-this.helperProportions.width-this.margins.left,e(window).scrollTop()+(e(window).height()||document.body.parentNode.scrollHeight)-this.helperProportions.height-this.margins.top],undefined):"document"===n.containment?(this.containment=[0,0,e(document).width()-this.helperProportions.width-this.margins.left,(e(document).height()||document.body.parentNode.scrollHeight)-this.helperProportions.height-this.margins.top],undefined):n.containment.constructor===Array?(this.containment=n.containment,undefined):("parent"===n.containment&&(n.containment=this.helper[0].parentNode),i=e(n.containment),s=i[0],s&&(t="hidden"!==i.css("overflow"),this.containment=[(parseInt(i.css("borderLeftWidth"),10)||0)+(parseInt(i.css("paddingLeft"),10)||0),(parseInt(i.css("borderTopWidth"),10)||0)+(parseInt(i.css("paddingTop"),10)||0),(t?Math.max(s.scrollWidth,s.offsetWidth):s.offsetWidth)-(parseInt(i.css("borderRightWidth"),10)||0)-(parseInt(i.css("paddingRight"),10)||0)-this.helperProportions.width-this.margins.left-this.margins.right,(t?Math.max(s.scrollHeight,s.offsetHeight):s.offsetHeight)-(parseInt(i.css("borderBottomWidth"),10)||0)-(parseInt(i.css("paddingBottom"),10)||0)-this.helperProportions.height-this.margins.top-this.margins.bottom],this.relative_container=i),undefined):(this.containment=null,undefined)},_convertPositionTo:function(t,i){i||(i=this.position);var s="absolute"===t?1:-1,n="absolute"!==this.cssPosition||this.scrollParent[0]!==document&&e.contains(this.scrollParent[0],this.offsetParent[0])?this.scrollParent:this.offsetParent;return this.offset.scroll||(this.offset.scroll={top:n.scrollTop(),left:n.scrollLeft()}),{top:i.top+this.offset.relative.top*s+this.offset.parent.top*s-("fixed"===this.cssPosition?-this.scrollParent.scrollTop():this.offset.scroll.top)*s,left:i.left+this.offset.relative.left*s+this.offset.parent.left*s-("fixed"===this.cssPosition?-this.scrollParent.scrollLeft():this.offset.scroll.left)*s}},_generatePosition:function(t){var i,s,n,a,o=this.options,r="absolute"!==this.cssPosition||this.scrollParent[0]!==document&&e.contains(this.scrollParent[0],this.offsetParent[0])?this.scrollParent:this.offsetParent,h=t.pageX,l=t.pageY;return this.offset.scroll||(this.offset.scroll={top:r.scrollTop(),left:r.scrollLeft()}),this.originalPosition&&(this.containment&&(this.relative_container?(s=this.relative_container.offset(),i=[this.containment[0]+s.left,this.containment[1]+s.top,this.containment[2]+s.left,this.containment[3]+s.top]):i=this.containment,t.pageX-this.offset.click.left<i[0]&&(h=i[0]+this.offset.click.left),t.pageY-this.offset.click.top<i[1]&&(l=i[1]+this.offset.click.top),t.pageX-this.offset.click.left>i[2]&&(h=i[2]+this.offset.click.left),t.pageY-this.offset.click.top>i[3]&&(l=i[3]+this.offset.click.top)),o.grid&&(n=o.grid[1]?this.originalPageY+Math.round((l-this.originalPageY)/o.grid[1])*o.grid[1]:this.originalPageY,l=i?n-this.offset.click.top>=i[1]||n-this.offset.click.top>i[3]?n:n-this.offset.click.top>=i[1]?n-o.grid[1]:n+o.grid[1]:n,a=o.grid[0]?this.originalPageX+Math.round((h-this.originalPageX)/o.grid[0])*o.grid[0]:this.originalPageX,h=i?a-this.offset.click.left>=i[0]||a-this.offset.click.left>i[2]?a:a-this.offset.click.left>=i[0]?a-o.grid[0]:a+o.grid[0]:a)),{top:l-this.offset.click.top-this.offset.relative.top-this.offset.parent.top+("fixed"===this.cssPosition?-this.scrollParent.scrollTop():this.offset.scroll.top),left:h-this.offset.click.left-this.offset.relative.left-this.offset.parent.left+("fixed"===this.cssPosition?-this.scrollParent.scrollLeft():this.offset.scroll.left)}},_clear:function(){this.helper.removeClass("ui-draggable-dragging"),this.helper[0]===this.element[0]||this.cancelHelperRemoval||this.helper.remove(),this.helper=null,this.cancelHelperRemoval=!1},_trigger:function(t,i,s){return s=s||this._uiHash(),e.ui.plugin.call(this,t,[i,s]),"drag"===t&&(this.positionAbs=this._convertPositionTo("absolute")),e.Widget.prototype._trigger.call(this,t,i,s)},plugins:{},_uiHash:function(){return{helper:this.helper,position:this.position,originalPosition:this.originalPosition,offset:this.positionAbs}}}),e.ui.plugin.add("draggable","connectToSortable",{start:function(t,i){var s=e(this).data("ui-draggable"),n=s.options,a=e.extend({},i,{item:s.element});s.sortables=[],e(n.connectToSortable).each(function(){var i=e.data(this,"ui-sortable");i&&!i.options.disabled&&(s.sortables.push({instance:i,shouldRevert:i.options.revert}),i.refreshPositions(),i._trigger("activate",t,a))})},stop:function(t,i){var s=e(this).data("ui-draggable"),n=e.extend({},i,{item:s.element});e.each(s.sortables,function(){this.instance.isOver?(this.instance.isOver=0,s.cancelHelperRemoval=!0,this.instance.cancelHelperRemoval=!1,this.shouldRevert&&(this.instance.options.revert=this.shouldRevert),this.instance._mouseStop(t),this.instance.options.helper=this.instance.options._helper,"original"===s.options.helper&&this.instance.currentItem.css({top:"auto",left:"auto"})):(this.instance.cancelHelperRemoval=!1,this.instance._trigger("deactivate",t,n))})},drag:function(t,i){var s=e(this).data("ui-draggable"),n=this;e.each(s.sortables,function(){var a=!1,o=this;this.instance.positionAbs=s.positionAbs,this.instance.helperProportions=s.helperProportions,this.instance.offset.click=s.offset.click,this.instance._intersectsWith(this.instance.containerCache)&&(a=!0,e.each(s.sortables,function(){return this.instance.positionAbs=s.positionAbs,this.instance.helperProportions=s.helperProportions,this.instance.offset.click=s.offset.click,this!==o&&this.instance._intersectsWith(this.instance.containerCache)&&e.contains(o.instance.element[0],this.instance.element[0])&&(a=!1),a})),a?(this.instance.isOver||(this.instance.isOver=1,this.instance.currentItem=e(n).clone().removeAttr("id").appendTo(this.instance.element).data("ui-sortable-item",!0),this.instance.options._helper=this.instance.options.helper,this.instance.options.helper=function(){return i.helper[0]},t.target=this.instance.currentItem[0],this.instance._mouseCapture(t,!0),this.instance._mouseStart(t,!0,!0),this.instance.offset.click.top=s.offset.click.top,this.instance.offset.click.left=s.offset.click.left,this.instance.offset.parent.left-=s.offset.parent.left-this.instance.offset.parent.left,this.instance.offset.parent.top-=s.offset.parent.top-this.instance.offset.parent.top,s._trigger("toSortable",t),s.dropped=this.instance.element,s.currentItem=s.element,this.instance.fromOutside=s),this.instance.currentItem&&this.instance._mouseDrag(t)):this.instance.isOver&&(this.instance.isOver=0,this.instance.cancelHelperRemoval=!0,this.instance.options.revert=!1,this.instance._trigger("out",t,this.instance._uiHash(this.instance)),this.instance._mouseStop(t,!0),this.instance.options.helper=this.instance.options._helper,this.instance.currentItem.remove(),this.instance.placeholder&&this.instance.placeholder.remove(),s._trigger("fromSortable",t),s.dropped=!1)})}}),e.ui.plugin.add("draggable","cursor",{start:function(){var t=e("body"),i=e(this).data("ui-draggable").options;t.css("cursor")&&(i._cursor=t.css("cursor")),t.css("cursor",i.cursor)},stop:function(){var t=e(this).data("ui-draggable").options;t._cursor&&e("body").css("cursor",t._cursor)}}),e.ui.plugin.add("draggable","opacity",{start:function(t,i){var s=e(i.helper),n=e(this).data("ui-draggable").options;s.css("opacity")&&(n._opacity=s.css("opacity")),s.css("opacity",n.opacity)},stop:function(t,i){var s=e(this).data("ui-draggable").options;s._opacity&&e(i.helper).css("opacity",s._opacity)}}),e.ui.plugin.add("draggable","scroll",{start:function(){var t=e(this).data("ui-draggable");t.scrollParent[0]!==document&&"HTML"!==t.scrollParent[0].tagName&&(t.overflowOffset=t.scrollParent.offset())},drag:function(t){var i=e(this).data("ui-draggable"),s=i.options,n=!1;i.scrollParent[0]!==document&&"HTML"!==i.scrollParent[0].tagName?(s.axis&&"x"===s.axis||(i.overflowOffset.top+i.scrollParent[0].offsetHeight-t.pageY<s.scrollSensitivity?i.scrollParent[0].scrollTop=n=i.scrollParent[0].scrollTop+s.scrollSpeed:t.pageY-i.overflowOffset.top<s.scrollSensitivity&&(i.scrollParent[0].scrollTop=n=i.scrollParent[0].scrollTop-s.scrollSpeed)),s.axis&&"y"===s.axis||(i.overflowOffset.left+i.scrollParent[0].offsetWidth-t.pageX<s.scrollSensitivity?i.scrollParent[0].scrollLeft=n=i.scrollParent[0].scrollLeft+s.scrollSpeed:t.pageX-i.overflowOffset.left<s.scrollSensitivity&&(i.scrollParent[0].scrollLeft=n=i.scrollParent[0].scrollLeft-s.scrollSpeed))):(s.axis&&"x"===s.axis||(t.pageY-e(document).scrollTop()<s.scrollSensitivity?n=e(document).scrollTop(e(document).scrollTop()-s.scrollSpeed):e(window).height()-(t.pageY-e(document).scrollTop())<s.scrollSensitivity&&(n=e(document).scrollTop(e(document).scrollTop()+s.scrollSpeed))),s.axis&&"y"===s.axis||(t.pageX-e(document).scrollLeft()<s.scrollSensitivity?n=e(document).scrollLeft(e(document).scrollLeft()-s.scrollSpeed):e(window).width()-(t.pageX-e(document).scrollLeft())<s.scrollSensitivity&&(n=e(document).scrollLeft(e(document).scrollLeft()+s.scrollSpeed)))),n!==!1&&e.ui.ddmanager&&!s.dropBehaviour&&e.ui.ddmanager.prepareOffsets(i,t)}}),e.ui.plugin.add("draggable","snap",{start:function(){var t=e(this).data("ui-draggable"),i=t.options;t.snapElements=[],e(i.snap.constructor!==String?i.snap.items||":data(ui-draggable)":i.snap).each(function(){var i=e(this),s=i.offset();this!==t.element[0]&&t.snapElements.push({item:this,width:i.outerWidth(),height:i.outerHeight(),top:s.top,left:s.left})})},drag:function(t,i){var s,n,a,o,r,h,l,u,c,d,p=e(this).data("ui-draggable"),f=p.options,m=f.snapTolerance,g=i.offset.left,v=g+p.helperProportions.width,b=i.offset.top,y=b+p.helperProportions.height;for(c=p.snapElements.length-1;c>=0;c--)r=p.snapElements[c].left,h=r+p.snapElements[c].width,l=p.snapElements[c].top,u=l+p.snapElements[c].height,r-m>v||g>h+m||l-m>y||b>u+m||!e.contains(p.snapElements[c].item.ownerDocument,p.snapElements[c].item)?(p.snapElements[c].snapping&&p.options.snap.release&&p.options.snap.release.call(p.element,t,e.extend(p._uiHash(),{snapItem:p.snapElements[c].item})),p.snapElements[c].snapping=!1):("inner"!==f.snapMode&&(s=m>=Math.abs(l-y),n=m>=Math.abs(u-b),a=m>=Math.abs(r-v),o=m>=Math.abs(h-g),s&&(i.position.top=p._convertPositionTo("relative",{top:l-p.helperProportions.height,left:0}).top-p.margins.top),n&&(i.position.top=p._convertPositionTo("relative",{top:u,left:0}).top-p.margins.top),a&&(i.position.left=p._convertPositionTo("relative",{top:0,left:r-p.helperProportions.width}).left-p.margins.left),o&&(i.position.left=p._convertPositionTo("relative",{top:0,left:h}).left-p.margins.left)),d=s||n||a||o,"outer"!==f.snapMode&&(s=m>=Math.abs(l-b),n=m>=Math.abs(u-y),a=m>=Math.abs(r-g),o=m>=Math.abs(h-v),s&&(i.position.top=p._convertPositionTo("relative",{top:l,left:0}).top-p.margins.top),n&&(i.position.top=p._convertPositionTo("relative",{top:u-p.helperProportions.height,left:0}).top-p.margins.top),a&&(i.position.left=p._convertPositionTo("relative",{top:0,left:r}).left-p.margins.left),o&&(i.position.left=p._convertPositionTo("relative",{top:0,left:h-p.helperProportions.width}).left-p.margins.left)),!p.snapElements[c].snapping&&(s||n||a||o||d)&&p.options.snap.snap&&p.options.snap.snap.call(p.element,t,e.extend(p._uiHash(),{snapItem:p.snapElements[c].item})),p.snapElements[c].snapping=s||n||a||o||d)}}),e.ui.plugin.add("draggable","stack",{start:function(){var t,i=this.data("ui-draggable").options,s=e.makeArray(e(i.stack)).sort(function(t,i){return(parseInt(e(t).css("zIndex"),10)||0)-(parseInt(e(i).css("zIndex"),10)||0)});s.length&&(t=parseInt(e(s[0]).css("zIndex"),10)||0,e(s).each(function(i){e(this).css("zIndex",t+i)}),this.css("zIndex",t+s.length))}}),e.ui.plugin.add("draggable","zIndex",{start:function(t,i){var s=e(i.helper),n=e(this).data("ui-draggable").options;s.css("zIndex")&&(n._zIndex=s.css("zIndex")),s.css("zIndex",n.zIndex)},stop:function(t,i){var s=e(this).data("ui-draggable").options;s._zIndex&&e(i.helper).css("zIndex",s._zIndex)}})})(jQuery);(function(e){function t(e){return parseInt(e,10)||0}function i(e){return!isNaN(parseInt(e,10))}e.widget("ui.resizable",e.ui.mouse,{version:"1.10.3",widgetEventPrefix:"resize",options:{alsoResize:!1,animate:!1,animateDuration:"slow",animateEasing:"swing",aspectRatio:!1,autoHide:!1,containment:!1,ghost:!1,grid:!1,handles:"e,s,se",helper:!1,maxHeight:null,maxWidth:null,minHeight:10,minWidth:10,zIndex:90,resize:null,start:null,stop:null},_create:function(){var t,i,s,n,a,o=this,r=this.options;if(this.element.addClass("ui-resizable"),e.extend(this,{_aspectRatio:!!r.aspectRatio,aspectRatio:r.aspectRatio,originalElement:this.element,_proportionallyResizeElements:[],_helper:r.helper||r.ghost||r.animate?r.helper||"ui-resizable-helper":null}),this.element[0].nodeName.match(/canvas|textarea|input|select|button|img/i)&&(this.element.wrap(e("<div class='ui-wrapper' style='overflow: hidden;'></div>").css({position:this.element.css("position"),width:this.element.outerWidth(),height:this.element.outerHeight(),top:this.element.css("top"),left:this.element.css("left")})),this.element=this.element.parent().data("ui-resizable",this.element.data("ui-resizable")),this.elementIsWrapper=!0,this.element.css({marginLeft:this.originalElement.css("marginLeft"),marginTop:this.originalElement.css("marginTop"),marginRight:this.originalElement.css("marginRight"),marginBottom:this.originalElement.css("marginBottom")}),this.originalElement.css({marginLeft:0,marginTop:0,marginRight:0,marginBottom:0}),this.originalResizeStyle=this.originalElement.css("resize"),this.originalElement.css("resize","none"),this._proportionallyResizeElements.push(this.originalElement.css({position:"static",zoom:1,display:"block"})),this.originalElement.css({margin:this.originalElement.css("margin")}),this._proportionallyResize()),this.handles=r.handles||(e(".ui-resizable-handle",this.element).length?{n:".ui-resizable-n",e:".ui-resizable-e",s:".ui-resizable-s",w:".ui-resizable-w",se:".ui-resizable-se",sw:".ui-resizable-sw",ne:".ui-resizable-ne",nw:".ui-resizable-nw"}:"e,s,se"),this.handles.constructor===String)for("all"===this.handles&&(this.handles="n,e,s,w,se,sw,ne,nw"),t=this.handles.split(","),this.handles={},i=0;t.length>i;i++)s=e.trim(t[i]),a="ui-resizable-"+s,n=e("<div class='ui-resizable-handle "+a+"'></div>"),n.css({zIndex:r.zIndex}),"se"===s&&n.addClass("ui-icon ui-icon-gripsmall-diagonal-se"),this.handles[s]=".ui-resizable-"+s,this.element.append(n);this._renderAxis=function(t){var i,s,n,a;t=t||this.element;for(i in this.handles)this.handles[i].constructor===String&&(this.handles[i]=e(this.handles[i],this.element).show()),this.elementIsWrapper&&this.originalElement[0].nodeName.match(/textarea|input|select|button/i)&&(s=e(this.handles[i],this.element),a=/sw|ne|nw|se|n|s/.test(i)?s.outerHeight():s.outerWidth(),n=["padding",/ne|nw|n/.test(i)?"Top":/se|sw|s/.test(i)?"Bottom":/^e$/.test(i)?"Right":"Left"].join(""),t.css(n,a),this._proportionallyResize()),e(this.handles[i]).length},this._renderAxis(this.element),this._handles=e(".ui-resizable-handle",this.element).disableSelection(),this._handles.mouseover(function(){o.resizing||(this.className&&(n=this.className.match(/ui-resizable-(se|sw|ne|nw|n|e|s|w)/i)),o.axis=n&&n[1]?n[1]:"se")}),r.autoHide&&(this._handles.hide(),e(this.element).addClass("ui-resizable-autohide").mouseenter(function(){r.disabled||(e(this).removeClass("ui-resizable-autohide"),o._handles.show())}).mouseleave(function(){r.disabled||o.resizing||(e(this).addClass("ui-resizable-autohide"),o._handles.hide())})),this._mouseInit()},_destroy:function(){this._mouseDestroy();var t,i=function(t){e(t).removeClass("ui-resizable ui-resizable-disabled ui-resizable-resizing").removeData("resizable").removeData("ui-resizable").unbind(".resizable").find(".ui-resizable-handle").remove()};return this.elementIsWrapper&&(i(this.element),t=this.element,this.originalElement.css({position:t.css("position"),width:t.outerWidth(),height:t.outerHeight(),top:t.css("top"),left:t.css("left")}).insertAfter(t),t.remove()),this.originalElement.css("resize",this.originalResizeStyle),i(this.originalElement),this},_mouseCapture:function(t){var i,s,n=!1;for(i in this.handles)s=e(this.handles[i])[0],(s===t.target||e.contains(s,t.target))&&(n=!0);return!this.options.disabled&&n},_mouseStart:function(i){var s,n,a,o=this.options,r=this.element.position(),h=this.element;return this.resizing=!0,/absolute/.test(h.css("position"))?h.css({position:"absolute",top:h.css("top"),left:h.css("left")}):h.is(".ui-draggable")&&h.css({position:"absolute",top:r.top,left:r.left}),this._renderProxy(),s=t(this.helper.css("left")),n=t(this.helper.css("top")),o.containment&&(s+=e(o.containment).scrollLeft()||0,n+=e(o.containment).scrollTop()||0),this.offset=this.helper.offset(),this.position={left:s,top:n},this.size=this._helper?{width:h.outerWidth(),height:h.outerHeight()}:{width:h.width(),height:h.height()},this.originalSize=this._helper?{width:h.outerWidth(),height:h.outerHeight()}:{width:h.width(),height:h.height()},this.originalPosition={left:s,top:n},this.sizeDiff={width:h.outerWidth()-h.width(),height:h.outerHeight()-h.height()},this.originalMousePosition={left:i.pageX,top:i.pageY},this.aspectRatio="number"==typeof o.aspectRatio?o.aspectRatio:this.originalSize.width/this.originalSize.height||1,a=e(".ui-resizable-"+this.axis).css("cursor"),e("body").css("cursor","auto"===a?this.axis+"-resize":a),h.addClass("ui-resizable-resizing"),this._propagate("start",i),!0},_mouseDrag:function(t){var i,s=this.helper,n={},a=this.originalMousePosition,o=this.axis,r=this.position.top,h=this.position.left,l=this.size.width,u=this.size.height,c=t.pageX-a.left||0,d=t.pageY-a.top||0,p=this._change[o];return p?(i=p.apply(this,[t,c,d]),this._updateVirtualBoundaries(t.shiftKey),(this._aspectRatio||t.shiftKey)&&(i=this._updateRatio(i,t)),i=this._respectSize(i,t),this._updateCache(i),this._propagate("resize",t),this.position.top!==r&&(n.top=this.position.top+"px"),this.position.left!==h&&(n.left=this.position.left+"px"),this.size.width!==l&&(n.width=this.size.width+"px"),this.size.height!==u&&(n.height=this.size.height+"px"),s.css(n),!this._helper&&this._proportionallyResizeElements.length&&this._proportionallyResize(),e.isEmptyObject(n)||this._trigger("resize",t,this.ui()),!1):!1},_mouseStop:function(t){this.resizing=!1;var i,s,n,a,o,r,h,l=this.options,u=this;return this._helper&&(i=this._proportionallyResizeElements,s=i.length&&/textarea/i.test(i[0].nodeName),n=s&&e.ui.hasScroll(i[0],"left")?0:u.sizeDiff.height,a=s?0:u.sizeDiff.width,o={width:u.helper.width()-a,height:u.helper.height()-n},r=parseInt(u.element.css("left"),10)+(u.position.left-u.originalPosition.left)||null,h=parseInt(u.element.css("top"),10)+(u.position.top-u.originalPosition.top)||null,l.animate||this.element.css(e.extend(o,{top:h,left:r})),u.helper.height(u.size.height),u.helper.width(u.size.width),this._helper&&!l.animate&&this._proportionallyResize()),e("body").css("cursor","auto"),this.element.removeClass("ui-resizable-resizing"),this._propagate("stop",t),this._helper&&this.helper.remove(),!1},_updateVirtualBoundaries:function(e){var t,s,n,a,o,r=this.options;o={minWidth:i(r.minWidth)?r.minWidth:0,maxWidth:i(r.maxWidth)?r.maxWidth:1/0,minHeight:i(r.minHeight)?r.minHeight:0,maxHeight:i(r.maxHeight)?r.maxHeight:1/0},(this._aspectRatio||e)&&(t=o.minHeight*this.aspectRatio,n=o.minWidth/this.aspectRatio,s=o.maxHeight*this.aspectRatio,a=o.maxWidth/this.aspectRatio,t>o.minWidth&&(o.minWidth=t),n>o.minHeight&&(o.minHeight=n),o.maxWidth>s&&(o.maxWidth=s),o.maxHeight>a&&(o.maxHeight=a)),this._vBoundaries=o},_updateCache:function(e){this.offset=this.helper.offset(),i(e.left)&&(this.position.left=e.left),i(e.top)&&(this.position.top=e.top),i(e.height)&&(this.size.height=e.height),i(e.width)&&(this.size.width=e.width)},_updateRatio:function(e){var t=this.position,s=this.size,n=this.axis;return i(e.height)?e.width=e.height*this.aspectRatio:i(e.width)&&(e.height=e.width/this.aspectRatio),"sw"===n&&(e.left=t.left+(s.width-e.width),e.top=null),"nw"===n&&(e.top=t.top+(s.height-e.height),e.left=t.left+(s.width-e.width)),e},_respectSize:function(e){var t=this._vBoundaries,s=this.axis,n=i(e.width)&&t.maxWidth&&t.maxWidth<e.width,a=i(e.height)&&t.maxHeight&&t.maxHeight<e.height,o=i(e.width)&&t.minWidth&&t.minWidth>e.width,r=i(e.height)&&t.minHeight&&t.minHeight>e.height,h=this.originalPosition.left+this.originalSize.width,l=this.position.top+this.size.height,u=/sw|nw|w/.test(s),c=/nw|ne|n/.test(s);return o&&(e.width=t.minWidth),r&&(e.height=t.minHeight),n&&(e.width=t.maxWidth),a&&(e.height=t.maxHeight),o&&u&&(e.left=h-t.minWidth),n&&u&&(e.left=h-t.maxWidth),r&&c&&(e.top=l-t.minHeight),a&&c&&(e.top=l-t.maxHeight),e.width||e.height||e.left||!e.top?e.width||e.height||e.top||!e.left||(e.left=null):e.top=null,e},_proportionallyResize:function(){if(this._proportionallyResizeElements.length){var e,t,i,s,n,a=this.helper||this.element;for(e=0;this._proportionallyResizeElements.length>e;e++){if(n=this._proportionallyResizeElements[e],!this.borderDif)for(this.borderDif=[],i=[n.css("borderTopWidth"),n.css("borderRightWidth"),n.css("borderBottomWidth"),n.css("borderLeftWidth")],s=[n.css("paddingTop"),n.css("paddingRight"),n.css("paddingBottom"),n.css("paddingLeft")],t=0;i.length>t;t++)this.borderDif[t]=(parseInt(i[t],10)||0)+(parseInt(s[t],10)||0);n.css({height:a.height()-this.borderDif[0]-this.borderDif[2]||0,width:a.width()-this.borderDif[1]-this.borderDif[3]||0})}}},_renderProxy:function(){var t=this.element,i=this.options;this.elementOffset=t.offset(),this._helper?(this.helper=this.helper||e("<div style='overflow:hidden;'></div>"),this.helper.addClass(this._helper).css({width:this.element.outerWidth()-1,height:this.element.outerHeight()-1,position:"absolute",left:this.elementOffset.left+"px",top:this.elementOffset.top+"px",zIndex:++i.zIndex}),this.helper.appendTo("body").disableSelection()):this.helper=this.element},_change:{e:function(e,t){return{width:this.originalSize.width+t}},w:function(e,t){var i=this.originalSize,s=this.originalPosition;return{left:s.left+t,width:i.width-t}},n:function(e,t,i){var s=this.originalSize,n=this.originalPosition;return{top:n.top+i,height:s.height-i}},s:function(e,t,i){return{height:this.originalSize.height+i}},se:function(t,i,s){return e.extend(this._change.s.apply(this,arguments),this._change.e.apply(this,[t,i,s]))},sw:function(t,i,s){return e.extend(this._change.s.apply(this,arguments),this._change.w.apply(this,[t,i,s]))},ne:function(t,i,s){return e.extend(this._change.n.apply(this,arguments),this._change.e.apply(this,[t,i,s]))},nw:function(t,i,s){return e.extend(this._change.n.apply(this,arguments),this._change.w.apply(this,[t,i,s]))}},_propagate:function(t,i){e.ui.plugin.call(this,t,[i,this.ui()]),"resize"!==t&&this._trigger(t,i,this.ui())},plugins:{},ui:function(){return{originalElement:this.originalElement,element:this.element,helper:this.helper,position:this.position,size:this.size,originalSize:this.originalSize,originalPosition:this.originalPosition}}}),e.ui.plugin.add("resizable","animate",{stop:function(t){var i=e(this).data("ui-resizable"),s=i.options,n=i._proportionallyResizeElements,a=n.length&&/textarea/i.test(n[0].nodeName),o=a&&e.ui.hasScroll(n[0],"left")?0:i.sizeDiff.height,r=a?0:i.sizeDiff.width,h={width:i.size.width-r,height:i.size.height-o},l=parseInt(i.element.css("left"),10)+(i.position.left-i.originalPosition.left)||null,u=parseInt(i.element.css("top"),10)+(i.position.top-i.originalPosition.top)||null;i.element.animate(e.extend(h,u&&l?{top:u,left:l}:{}),{duration:s.animateDuration,easing:s.animateEasing,step:function(){var s={width:parseInt(i.element.css("width"),10),height:parseInt(i.element.css("height"),10),top:parseInt(i.element.css("top"),10),left:parseInt(i.element.css("left"),10)};n&&n.length&&e(n[0]).css({width:s.width,height:s.height}),i._updateCache(s),i._propagate("resize",t)}})}}),e.ui.plugin.add("resizable","containment",{start:function(){var i,s,n,a,o,r,h,l=e(this).data("ui-resizable"),u=l.options,c=l.element,d=u.containment,p=d instanceof e?d.get(0):/parent/.test(d)?c.parent().get(0):d;p&&(l.containerElement=e(p),/document/.test(d)||d===document?(l.containerOffset={left:0,top:0},l.containerPosition={left:0,top:0},l.parentData={element:e(document),left:0,top:0,width:e(document).width(),height:e(document).height()||document.body.parentNode.scrollHeight}):(i=e(p),s=[],e(["Top","Right","Left","Bottom"]).each(function(e,n){s[e]=t(i.css("padding"+n))}),l.containerOffset=i.offset(),l.containerPosition=i.position(),l.containerSize={height:i.innerHeight()-s[3],width:i.innerWidth()-s[1]},n=l.containerOffset,a=l.containerSize.height,o=l.containerSize.width,r=e.ui.hasScroll(p,"left")?p.scrollWidth:o,h=e.ui.hasScroll(p)?p.scrollHeight:a,l.parentData={element:p,left:n.left,top:n.top,width:r,height:h}))},resize:function(t){var i,s,n,a,o=e(this).data("ui-resizable"),r=o.options,h=o.containerOffset,l=o.position,u=o._aspectRatio||t.shiftKey,c={top:0,left:0},d=o.containerElement;d[0]!==document&&/static/.test(d.css("position"))&&(c=h),l.left<(o._helper?h.left:0)&&(o.size.width=o.size.width+(o._helper?o.position.left-h.left:o.position.left-c.left),u&&(o.size.height=o.size.width/o.aspectRatio),o.position.left=r.helper?h.left:0),l.top<(o._helper?h.top:0)&&(o.size.height=o.size.height+(o._helper?o.position.top-h.top:o.position.top),u&&(o.size.width=o.size.height*o.aspectRatio),o.position.top=o._helper?h.top:0),o.offset.left=o.parentData.left+o.position.left,o.offset.top=o.parentData.top+o.position.top,i=Math.abs((o._helper?o.offset.left-c.left:o.offset.left-c.left)+o.sizeDiff.width),s=Math.abs((o._helper?o.offset.top-c.top:o.offset.top-h.top)+o.sizeDiff.height),n=o.containerElement.get(0)===o.element.parent().get(0),a=/relative|absolute/.test(o.containerElement.css("position")),n&&a&&(i-=o.parentData.left),i+o.size.width>=o.parentData.width&&(o.size.width=o.parentData.width-i,u&&(o.size.height=o.size.width/o.aspectRatio)),s+o.size.height>=o.parentData.height&&(o.size.height=o.parentData.height-s,u&&(o.size.width=o.size.height*o.aspectRatio))},stop:function(){var t=e(this).data("ui-resizable"),i=t.options,s=t.containerOffset,n=t.containerPosition,a=t.containerElement,o=e(t.helper),r=o.offset(),h=o.outerWidth()-t.sizeDiff.width,l=o.outerHeight()-t.sizeDiff.height;t._helper&&!i.animate&&/relative/.test(a.css("position"))&&e(this).css({left:r.left-n.left-s.left,width:h,height:l}),t._helper&&!i.animate&&/static/.test(a.css("position"))&&e(this).css({left:r.left-n.left-s.left,width:h,height:l})}}),e.ui.plugin.add("resizable","alsoResize",{start:function(){var t=e(this).data("ui-resizable"),i=t.options,s=function(t){e(t).each(function(){var t=e(this);t.data("ui-resizable-alsoresize",{width:parseInt(t.width(),10),height:parseInt(t.height(),10),left:parseInt(t.css("left"),10),top:parseInt(t.css("top"),10)})})};"object"!=typeof i.alsoResize||i.alsoResize.parentNode?s(i.alsoResize):i.alsoResize.length?(i.alsoResize=i.alsoResize[0],s(i.alsoResize)):e.each(i.alsoResize,function(e){s(e)})},resize:function(t,i){var s=e(this).data("ui-resizable"),n=s.options,a=s.originalSize,o=s.originalPosition,r={height:s.size.height-a.height||0,width:s.size.width-a.width||0,top:s.position.top-o.top||0,left:s.position.left-o.left||0},h=function(t,s){e(t).each(function(){var t=e(this),n=e(this).data("ui-resizable-alsoresize"),a={},o=s&&s.length?s:t.parents(i.originalElement[0]).length?["width","height"]:["width","height","top","left"];e.each(o,function(e,t){var i=(n[t]||0)+(r[t]||0);i&&i>=0&&(a[t]=i||null)}),t.css(a)})};"object"!=typeof n.alsoResize||n.alsoResize.nodeType?h(n.alsoResize):e.each(n.alsoResize,function(e,t){h(e,t)})},stop:function(){e(this).removeData("resizable-alsoresize")}}),e.ui.plugin.add("resizable","ghost",{start:function(){var t=e(this).data("ui-resizable"),i=t.options,s=t.size;t.ghost=t.originalElement.clone(),t.ghost.css({opacity:.25,display:"block",position:"relative",height:s.height,width:s.width,margin:0,left:0,top:0}).addClass("ui-resizable-ghost").addClass("string"==typeof i.ghost?i.ghost:""),t.ghost.appendTo(t.helper)},resize:function(){var t=e(this).data("ui-resizable");t.ghost&&t.ghost.css({position:"relative",height:t.size.height,width:t.size.width})},stop:function(){var t=e(this).data("ui-resizable");t.ghost&&t.helper&&t.helper.get(0).removeChild(t.ghost.get(0))}}),e.ui.plugin.add("resizable","grid",{resize:function(){var t=e(this).data("ui-resizable"),i=t.options,s=t.size,n=t.originalSize,a=t.originalPosition,o=t.axis,r="number"==typeof i.grid?[i.grid,i.grid]:i.grid,h=r[0]||1,l=r[1]||1,u=Math.round((s.width-n.width)/h)*h,c=Math.round((s.height-n.height)/l)*l,d=n.width+u,p=n.height+c,f=i.maxWidth&&d>i.maxWidth,m=i.maxHeight&&p>i.maxHeight,g=i.minWidth&&i.minWidth>d,v=i.minHeight&&i.minHeight>p;i.grid=r,g&&(d+=h),v&&(p+=l),f&&(d-=h),m&&(p-=l),/^(se|s|e)$/.test(o)?(t.size.width=d,t.size.height=p):/^(ne)$/.test(o)?(t.size.width=d,t.size.height=p,t.position.top=a.top-c):/^(sw)$/.test(o)?(t.size.width=d,t.size.height=p,t.position.left=a.left-u):(t.size.width=d,t.size.height=p,t.position.top=a.top-c,t.position.left=a.left-u)}})})(jQuery);(function(t){var e=0;t.widget("ui.autocomplete",{version:"1.10.3",defaultElement:"<input>",options:{appendTo:null,autoFocus:!1,delay:300,minLength:1,position:{my:"left top",at:"left bottom",collision:"none"},source:null,change:null,close:null,focus:null,open:null,response:null,search:null,select:null},pending:0,_create:function(){var e,i,s,n=this.element[0].nodeName.toLowerCase(),a="textarea"===n,o="input"===n;this.isMultiLine=a?!0:o?!1:this.element.prop("isContentEditable"),this.valueMethod=this.element[a||o?"val":"text"],this.isNewMenu=!0,this.element.addClass("ui-autocomplete-input").attr("autocomplete","off"),this._on(this.element,{keydown:function(n){if(this.element.prop("readOnly"))return e=!0,s=!0,i=!0,undefined;e=!1,s=!1,i=!1;var a=t.ui.keyCode;switch(n.keyCode){case a.PAGE_UP:e=!0,this._move("previousPage",n);break;case a.PAGE_DOWN:e=!0,this._move("nextPage",n);break;case a.UP:e=!0,this._keyEvent("previous",n);break;case a.DOWN:e=!0,this._keyEvent("next",n);break;case a.ENTER:case a.NUMPAD_ENTER:this.menu.active&&(e=!0,n.preventDefault(),this.menu.select(n));break;case a.TAB:this.menu.active&&this.menu.select(n);break;case a.ESCAPE:this.menu.element.is(":visible")&&(this._value(this.term),this.close(n),n.preventDefault());break;default:i=!0,this._searchTimeout(n)}},keypress:function(s){if(e)return e=!1,(!this.isMultiLine||this.menu.element.is(":visible"))&&s.preventDefault(),undefined;if(!i){var n=t.ui.keyCode;switch(s.keyCode){case n.PAGE_UP:this._move("previousPage",s);break;case n.PAGE_DOWN:this._move("nextPage",s);break;case n.UP:this._keyEvent("previous",s);break;case n.DOWN:this._keyEvent("next",s)}}},input:function(t){return s?(s=!1,t.preventDefault(),undefined):(this._searchTimeout(t),undefined)},focus:function(){this.selectedItem=null,this.previous=this._value()},blur:function(t){return this.cancelBlur?(delete this.cancelBlur,undefined):(clearTimeout(this.searching),this.close(t),this._change(t),undefined)}}),this._initSource(),this.menu=t("<ul>").addClass("ui-autocomplete ui-front").appendTo(this._appendTo()).menu({role:null}).hide().data("ui-menu"),this._on(this.menu.element,{mousedown:function(e){e.preventDefault(),this.cancelBlur=!0,this._delay(function(){delete this.cancelBlur});var i=this.menu.element[0];t(e.target).closest(".ui-menu-item").length||this._delay(function(){var e=this;this.document.one("mousedown",function(s){s.target===e.element[0]||s.target===i||t.contains(i,s.target)||e.close()})})},menufocus:function(e,i){if(this.isNewMenu&&(this.isNewMenu=!1,e.originalEvent&&/^mouse/.test(e.originalEvent.type)))return this.menu.blur(),this.document.one("mousemove",function(){t(e.target).trigger(e.originalEvent)}),undefined;var s=i.item.data("ui-autocomplete-item");!1!==this._trigger("focus",e,{item:s})?e.originalEvent&&/^key/.test(e.originalEvent.type)&&this._value(s.value):this.liveRegion.text(s.value)},menuselect:function(t,e){var i=e.item.data("ui-autocomplete-item"),s=this.previous;this.element[0]!==this.document[0].activeElement&&(this.element.focus(),this.previous=s,this._delay(function(){this.previous=s,this.selectedItem=i})),!1!==this._trigger("select",t,{item:i})&&this._value(i.value),this.term=this._value(),this.close(t),this.selectedItem=i}}),this.liveRegion=t("<span>",{role:"status","aria-live":"polite"}).addClass("ui-helper-hidden-accessible").insertBefore(this.element),this._on(this.window,{beforeunload:function(){this.element.removeAttr("autocomplete")}})},_destroy:function(){clearTimeout(this.searching),this.element.removeClass("ui-autocomplete-input").removeAttr("autocomplete"),this.menu.element.remove(),this.liveRegion.remove()},_setOption:function(t,e){this._super(t,e),"source"===t&&this._initSource(),"appendTo"===t&&this.menu.element.appendTo(this._appendTo()),"disabled"===t&&e&&this.xhr&&this.xhr.abort()},_appendTo:function(){var e=this.options.appendTo;return e&&(e=e.jquery||e.nodeType?t(e):this.document.find(e).eq(0)),e||(e=this.element.closest(".ui-front")),e.length||(e=this.document[0].body),e},_initSource:function(){var e,i,s=this;t.isArray(this.options.source)?(e=this.options.source,this.source=function(i,s){s(t.ui.autocomplete.filter(e,i.term))}):"string"==typeof this.options.source?(i=this.options.source,this.source=function(e,n){s.xhr&&s.xhr.abort(),s.xhr=t.ajax({url:i,data:e,dataType:"json",success:function(t){n(t)},error:function(){n([])}})}):this.source=this.options.source},_searchTimeout:function(t){clearTimeout(this.searching),this.searching=this._delay(function(){this.term!==this._value()&&(this.selectedItem=null,this.search(null,t))},this.options.delay)},search:function(t,e){return t=null!=t?t:this._value(),this.term=this._value(),t.length<this.options.minLength?this.close(e):this._trigger("search",e)!==!1?this._search(t):undefined},_search:function(t){this.pending++,this.element.addClass("ui-autocomplete-loading"),this.cancelSearch=!1,this.source({term:t},this._response())},_response:function(){var t=this,i=++e;return function(s){i===e&&t.__response(s),t.pending--,t.pending||t.element.removeClass("ui-autocomplete-loading")}},__response:function(t){t&&(t=this._normalize(t)),this._trigger("response",null,{content:t}),!this.options.disabled&&t&&t.length&&!this.cancelSearch?(this._suggest(t),this._trigger("open")):this._close()},close:function(t){this.cancelSearch=!0,this._close(t)},_close:function(t){this.menu.element.is(":visible")&&(this.menu.element.hide(),this.menu.blur(),this.isNewMenu=!0,this._trigger("close",t))},_change:function(t){this.previous!==this._value()&&this._trigger("change",t,{item:this.selectedItem})},_normalize:function(e){return e.length&&e[0].label&&e[0].value?e:t.map(e,function(e){return"string"==typeof e?{label:e,value:e}:t.extend({label:e.label||e.value,value:e.value||e.label},e)})},_suggest:function(e){var i=this.menu.element.empty();this._renderMenu(i,e),this.isNewMenu=!0,this.menu.refresh(),i.show(),this._resizeMenu(),i.position(t.extend({of:this.element},this.options.position)),this.options.autoFocus&&this.menu.next()},_resizeMenu:function(){var t=this.menu.element;t.outerWidth(Math.max(t.width("").outerWidth()+1,this.element.outerWidth()))},_renderMenu:function(e,i){var s=this;t.each(i,function(t,i){s._renderItemData(e,i)})},_renderItemData:function(t,e){return this._renderItem(t,e).data("ui-autocomplete-item",e)},_renderItem:function(e,i){return t("<li>").append(t("<a>").text(i.label)).appendTo(e)},_move:function(t,e){return this.menu.element.is(":visible")?this.menu.isFirstItem()&&/^previous/.test(t)||this.menu.isLastItem()&&/^next/.test(t)?(this._value(this.term),this.menu.blur(),undefined):(this.menu[t](e),undefined):(this.search(null,e),undefined)},widget:function(){return this.menu.element},_value:function(){return this.valueMethod.apply(this.element,arguments)},_keyEvent:function(t,e){(!this.isMultiLine||this.menu.element.is(":visible"))&&(this._move(t,e),e.preventDefault())}}),t.extend(t.ui.autocomplete,{escapeRegex:function(t){return t.replace(/[\-\[\]{}()*+?.,\\\^$|#\s]/g,"\\$&")},filter:function(e,i){var s=RegExp(t.ui.autocomplete.escapeRegex(i),"i");return t.grep(e,function(t){return s.test(t.label||t.value||t)})}}),t.widget("ui.autocomplete",t.ui.autocomplete,{options:{messages:{noResults:"No search results.",results:function(t){return t+(t>1?" results are":" result is")+" available, use up and down arrow keys to navigate."}}},__response:function(t){var e;this._superApply(arguments),this.options.disabled||this.cancelSearch||(e=t&&t.length?this.options.messages.results(t.length):this.options.messages.noResults,this.liveRegion.text(e))}})})(jQuery);(function(t){var e,i,s,n,a="ui-button ui-widget ui-state-default ui-corner-all",o="ui-state-hover ui-state-active ",r="ui-button-icons-only ui-button-icon-only ui-button-text-icons ui-button-text-icon-primary ui-button-text-icon-secondary ui-button-text-only",h=function(){var e=t(this);setTimeout(function(){e.find(":ui-button").button("refresh")},1)},l=function(e){var i=e.name,s=e.form,n=t([]);return i&&(i=i.replace(/'/g,"\\'"),n=s?t(s).find("[name='"+i+"']"):t("[name='"+i+"']",e.ownerDocument).filter(function(){return!this.form})),n};t.widget("ui.button",{version:"1.10.3",defaultElement:"<button>",options:{disabled:null,text:!0,label:null,icons:{primary:null,secondary:null}},_create:function(){this.element.closest("form").unbind("reset"+this.eventNamespace).bind("reset"+this.eventNamespace,h),"boolean"!=typeof this.options.disabled?this.options.disabled=!!this.element.prop("disabled"):this.element.prop("disabled",this.options.disabled),this._determineButtonType(),this.hasTitle=!!this.buttonElement.attr("title");var o=this,r=this.options,c="checkbox"===this.type||"radio"===this.type,u=c?"":"ui-state-active",d="ui-state-focus";null===r.label&&(r.label="input"===this.type?this.buttonElement.val():this.buttonElement.html()),this._hoverable(this.buttonElement),this.buttonElement.addClass(a).attr("role","button").bind("mouseenter"+this.eventNamespace,function(){r.disabled||this===e&&t(this).addClass("ui-state-active")}).bind("mouseleave"+this.eventNamespace,function(){r.disabled||t(this).removeClass(u)}).bind("click"+this.eventNamespace,function(t){r.disabled&&(t.preventDefault(),t.stopImmediatePropagation())}),this.element.bind("focus"+this.eventNamespace,function(){o.buttonElement.addClass(d)}).bind("blur"+this.eventNamespace,function(){o.buttonElement.removeClass(d)}),c&&(this.element.bind("change"+this.eventNamespace,function(){n||o.refresh()}),this.buttonElement.bind("mousedown"+this.eventNamespace,function(t){r.disabled||(n=!1,i=t.pageX,s=t.pageY)}).bind("mouseup"+this.eventNamespace,function(t){r.disabled||(i!==t.pageX||s!==t.pageY)&&(n=!0)})),"checkbox"===this.type?this.buttonElement.bind("click"+this.eventNamespace,function(){return r.disabled||n?!1:undefined}):"radio"===this.type?this.buttonElement.bind("click"+this.eventNamespace,function(){if(r.disabled||n)return!1;t(this).addClass("ui-state-active"),o.buttonElement.attr("aria-pressed","true");var e=o.element[0];l(e).not(e).map(function(){return t(this).button("widget")[0]}).removeClass("ui-state-active").attr("aria-pressed","false")}):(this.buttonElement.bind("mousedown"+this.eventNamespace,function(){return r.disabled?!1:(t(this).addClass("ui-state-active"),e=this,o.document.one("mouseup",function(){e=null}),undefined)}).bind("mouseup"+this.eventNamespace,function(){return r.disabled?!1:(t(this).removeClass("ui-state-active"),undefined)}).bind("keydown"+this.eventNamespace,function(e){return r.disabled?!1:((e.keyCode===t.ui.keyCode.SPACE||e.keyCode===t.ui.keyCode.ENTER)&&t(this).addClass("ui-state-active"),undefined)}).bind("keyup"+this.eventNamespace+" blur"+this.eventNamespace,function(){t(this).removeClass("ui-state-active")}),this.buttonElement.is("a")&&this.buttonElement.keyup(function(e){e.keyCode===t.ui.keyCode.SPACE&&t(this).click()})),this._setOption("disabled",r.disabled),this._resetButton()},_determineButtonType:function(){var t,e,i;this.type=this.element.is("[type=checkbox]")?"checkbox":this.element.is("[type=radio]")?"radio":this.element.is("input")?"input":"button","checkbox"===this.type||"radio"===this.type?(t=this.element.parents().last(),e="label[for='"+this.element.attr("id")+"']",this.buttonElement=t.find(e),this.buttonElement.length||(t=t.length?t.siblings():this.element.siblings(),this.buttonElement=t.filter(e),this.buttonElement.length||(this.buttonElement=t.find(e))),this.element.addClass("ui-helper-hidden-accessible"),i=this.element.is(":checked"),i&&this.buttonElement.addClass("ui-state-active"),this.buttonElement.prop("aria-pressed",i)):this.buttonElement=this.element},widget:function(){return this.buttonElement},_destroy:function(){this.element.removeClass("ui-helper-hidden-accessible"),this.buttonElement.removeClass(a+" "+o+" "+r).removeAttr("role").removeAttr("aria-pressed").html(this.buttonElement.find(".ui-button-text").html()),this.hasTitle||this.buttonElement.removeAttr("title")},_setOption:function(t,e){return this._super(t,e),"disabled"===t?(e?this.element.prop("disabled",!0):this.element.prop("disabled",!1),undefined):(this._resetButton(),undefined)},refresh:function(){var e=this.element.is("input, button")?this.element.is(":disabled"):this.element.hasClass("ui-button-disabled");e!==this.options.disabled&&this._setOption("disabled",e),"radio"===this.type?l(this.element[0]).each(function(){t(this).is(":checked")?t(this).button("widget").addClass("ui-state-active").attr("aria-pressed","true"):t(this).button("widget").removeClass("ui-state-active").attr("aria-pressed","false")}):"checkbox"===this.type&&(this.element.is(":checked")?this.buttonElement.addClass("ui-state-active").attr("aria-pressed","true"):this.buttonElement.removeClass("ui-state-active").attr("aria-pressed","false"))},_resetButton:function(){if("input"===this.type)return this.options.label&&this.element.val(this.options.label),undefined;var e=this.buttonElement.removeClass(r),i=t("<span></span>",this.document[0]).addClass("ui-button-text").html(this.options.label).appendTo(e.empty()).text(),s=this.options.icons,n=s.primary&&s.secondary,a=[];s.primary||s.secondary?(this.options.text&&a.push("ui-button-text-icon"+(n?"s":s.primary?"-primary":"-secondary")),s.primary&&e.prepend("<span class='ui-button-icon-primary ui-icon "+s.primary+"'></span>"),s.secondary&&e.append("<span class='ui-button-icon-secondary ui-icon "+s.secondary+"'></span>"),this.options.text||(a.push(n?"ui-button-icons-only":"ui-button-icon-only"),this.hasTitle||e.attr("title",t.trim(i)))):a.push("ui-button-text-only"),e.addClass(a.join(" "))}}),t.widget("ui.buttonset",{version:"1.10.3",options:{items:"button, input[type=button], input[type=submit], input[type=reset], input[type=checkbox], input[type=radio], a, :data(ui-button)"},_create:function(){this.element.addClass("ui-buttonset")},_init:function(){this.refresh()},_setOption:function(t,e){"disabled"===t&&this.buttons.button("option",t,e),this._super(t,e)},refresh:function(){var e="rtl"===this.element.css("direction");this.buttons=this.element.find(this.options.items).filter(":ui-button").button("refresh").end().not(":ui-button").button().end().map(function(){return t(this).button("widget")[0]}).removeClass("ui-corner-all ui-corner-left ui-corner-right").filter(":first").addClass(e?"ui-corner-right":"ui-corner-left").end().filter(":last").addClass(e?"ui-corner-left":"ui-corner-right").end().end()},_destroy:function(){this.element.removeClass("ui-buttonset"),this.buttons.map(function(){return t(this).button("widget")[0]}).removeClass("ui-corner-left ui-corner-right").end().button("destroy")}})})(jQuery);(function(t){var e={buttons:!0,height:!0,maxHeight:!0,maxWidth:!0,minHeight:!0,minWidth:!0,width:!0},i={maxHeight:!0,maxWidth:!0,minHeight:!0,minWidth:!0};t.widget("ui.dialog",{version:"1.10.3",options:{appendTo:"body",autoOpen:!0,buttons:[],closeOnEscape:!0,closeText:"close",dialogClass:"",draggable:!0,hide:null,height:"auto",maxHeight:null,maxWidth:null,minHeight:150,minWidth:150,modal:!1,position:{my:"center",at:"center",of:window,collision:"fit",using:function(e){var i=t(this).css(e).offset().top;0>i&&t(this).css("top",e.top-i)}},resizable:!0,show:null,title:null,width:300,beforeClose:null,close:null,drag:null,dragStart:null,dragStop:null,focus:null,open:null,resize:null,resizeStart:null,resizeStop:null},_create:function(){this.originalCss={display:this.element[0].style.display,width:this.element[0].style.width,minHeight:this.element[0].style.minHeight,maxHeight:this.element[0].style.maxHeight,height:this.element[0].style.height},this.originalPosition={parent:this.element.parent(),index:this.element.parent().children().index(this.element)},this.originalTitle=this.element.attr("title"),this.options.title=this.options.title||this.originalTitle,this._createWrapper(),this.element.show().removeAttr("title").addClass("ui-dialog-content ui-widget-content").appendTo(this.uiDialog),this._createTitlebar(),this._createButtonPane(),this.options.draggable&&t.fn.draggable&&this._makeDraggable(),this.options.resizable&&t.fn.resizable&&this._makeResizable(),this._isOpen=!1},_init:function(){this.options.autoOpen&&this.open()},_appendTo:function(){var e=this.options.appendTo;return e&&(e.jquery||e.nodeType)?t(e):this.document.find(e||"body").eq(0)},_destroy:function(){var t,e=this.originalPosition;this._destroyOverlay(),this.element.removeUniqueId().removeClass("ui-dialog-content ui-widget-content").css(this.originalCss).detach(),this.uiDialog.stop(!0,!0).remove(),this.originalTitle&&this.element.attr("title",this.originalTitle),t=e.parent.children().eq(e.index),t.length&&t[0]!==this.element[0]?t.before(this.element):e.parent.append(this.element)},widget:function(){return this.uiDialog},disable:t.noop,enable:t.noop,close:function(e){var i=this;this._isOpen&&this._trigger("beforeClose",e)!==!1&&(this._isOpen=!1,this._destroyOverlay(),this.opener.filter(":focusable").focus().length||t(this.document[0].activeElement).blur(),this._hide(this.uiDialog,this.options.hide,function(){i._trigger("close",e)}))},isOpen:function(){return this._isOpen},moveToTop:function(){this._moveToTop()},_moveToTop:function(t,e){var i=!!this.uiDialog.nextAll(":visible").insertBefore(this.uiDialog).length;return i&&!e&&this._trigger("focus",t),i},open:function(){var e=this;return this._isOpen?(this._moveToTop()&&this._focusTabbable(),undefined):(this._isOpen=!0,this.opener=t(this.document[0].activeElement),this._size(),this._position(),this._createOverlay(),this._moveToTop(null,!0),this._show(this.uiDialog,this.options.show,function(){e._focusTabbable(),e._trigger("focus")}),this._trigger("open"),undefined)},_focusTabbable:function(){var t=this.element.find("[autofocus]");t.length||(t=this.element.find(":tabbable")),t.length||(t=this.uiDialogButtonPane.find(":tabbable")),t.length||(t=this.uiDialogTitlebarClose.filter(":tabbable")),t.length||(t=this.uiDialog),t.eq(0).focus()},_keepFocus:function(e){function i(){var e=this.document[0].activeElement,i=this.uiDialog[0]===e||t.contains(this.uiDialog[0],e);i||this._focusTabbable()}e.preventDefault(),i.call(this),this._delay(i)},_createWrapper:function(){this.uiDialog=t("<div>").addClass("ui-dialog ui-widget ui-widget-content ui-corner-all ui-front "+this.options.dialogClass).hide().attr({tabIndex:-1,role:"dialog"}).appendTo(this._appendTo()),this._on(this.uiDialog,{keydown:function(e){if(this.options.closeOnEscape&&!e.isDefaultPrevented()&&e.keyCode&&e.keyCode===t.ui.keyCode.ESCAPE)return e.preventDefault(),this.close(e),undefined;if(e.keyCode===t.ui.keyCode.TAB){var i=this.uiDialog.find(":tabbable"),s=i.filter(":first"),n=i.filter(":last");e.target!==n[0]&&e.target!==this.uiDialog[0]||e.shiftKey?e.target!==s[0]&&e.target!==this.uiDialog[0]||!e.shiftKey||(n.focus(1),e.preventDefault()):(s.focus(1),e.preventDefault())}},mousedown:function(t){this._moveToTop(t)&&this._focusTabbable()}}),this.element.find("[aria-describedby]").length||this.uiDialog.attr({"aria-describedby":this.element.uniqueId().attr("id")})},_createTitlebar:function(){var e;this.uiDialogTitlebar=t("<div>").addClass("ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix").prependTo(this.uiDialog),this._on(this.uiDialogTitlebar,{mousedown:function(e){t(e.target).closest(".ui-dialog-titlebar-close")||this.uiDialog.focus()}}),this.uiDialogTitlebarClose=t("<button></button>").button({label:this.options.closeText,icons:{primary:"ui-icon-closethick"},text:!1}).addClass("ui-dialog-titlebar-close icon-remove icon_16").appendTo(this.uiDialogTitlebar),this._on(this.uiDialogTitlebarClose,{click:function(t){t.preventDefault(),this.close(t)}}),e=t("<span>").uniqueId().addClass("ui-dialog-title").prependTo(this.uiDialogTitlebar),this._title(e),this.uiDialog.attr({"aria-labelledby":e.attr("id")})},_title:function(t){this.options.title||t.html("&#160;"),t.text(this.options.title)},_createButtonPane:function(){this.uiDialogButtonPane=t("<div>").addClass("ui-dialog-buttonpane ui-widget-content ui-helper-clearfix"),this.uiButtonSet=t("<div>").addClass("ui-dialog-buttonset").appendTo(this.uiDialogButtonPane),this._createButtons()},_createButtons:function(){var e=this,i=this.options.buttons;return this.uiDialogButtonPane.remove(),this.uiButtonSet.empty(),t.isEmptyObject(i)||t.isArray(i)&&!i.length?(this.uiDialog.removeClass("ui-dialog-buttons"),undefined):(t.each(i,function(i,s){var n,a;s=t.isFunction(s)?{click:s,text:i}:s,s=t.extend({type:"button"},s),n=s.click,s.click=function(){n.apply(e.element[0],arguments)},a={icons:s.icons,text:s.showText},delete s.icons,delete s.showText,t("<button></button>",s).button(a).appendTo(e.uiButtonSet)}),this.uiDialog.addClass("ui-dialog-buttons"),this.uiDialogButtonPane.appendTo(this.uiDialog),undefined)},_makeDraggable:function(){function e(t){return{position:t.position,offset:t.offset}}var i=this,s=this.options;this.uiDialog.draggable({cancel:".ui-dialog-content, .ui-dialog-titlebar-close",handle:".ui-dialog-titlebar",containment:"document",start:function(s,n){t(this).addClass("ui-dialog-dragging"),i._blockFrames(),i._trigger("dragStart",s,e(n))},drag:function(t,s){i._trigger("drag",t,e(s))},stop:function(n,a){s.position=[a.position.left-i.document.scrollLeft(),a.position.top-i.document.scrollTop()],t(this).removeClass("ui-dialog-dragging"),i._unblockFrames(),i._trigger("dragStop",n,e(a))}})},_makeResizable:function(){function e(t){return{originalPosition:t.originalPosition,originalSize:t.originalSize,position:t.position,size:t.size}}var i=this,s=this.options,n=s.resizable,a=this.uiDialog.css("position"),o="string"==typeof n?n:"n,e,s,w,se,sw,ne,nw";this.uiDialog.resizable({cancel:".ui-dialog-content",containment:"document",alsoResize:this.element,maxWidth:s.maxWidth,maxHeight:s.maxHeight,minWidth:s.minWidth,minHeight:this._minHeight(),handles:o,start:function(s,n){t(this).addClass("ui-dialog-resizing"),i._blockFrames(),i._trigger("resizeStart",s,e(n))},resize:function(t,s){i._trigger("resize",t,e(s))},stop:function(n,a){s.height=t(this).height(),s.width=t(this).width(),t(this).removeClass("ui-dialog-resizing"),i._unblockFrames(),i._trigger("resizeStop",n,e(a))}}).css("position",a)},_minHeight:function(){var t=this.options;return"auto"===t.height?t.minHeight:Math.min(t.minHeight,t.height)},_position:function(){var t=this.uiDialog.is(":visible");t||this.uiDialog.show(),this.uiDialog.position(this.options.position),t||this.uiDialog.hide()},_setOptions:function(s){var n=this,a=!1,o={};t.each(s,function(t,s){n._setOption(t,s),t in e&&(a=!0),t in i&&(o[t]=s)}),a&&(this._size(),this._position()),this.uiDialog.is(":data(ui-resizable)")&&this.uiDialog.resizable("option",o)},_setOption:function(t,e){var i,s,n=this.uiDialog;"dialogClass"===t&&n.removeClass(this.options.dialogClass).addClass(e),"disabled"!==t&&(this._super(t,e),"appendTo"===t&&this.uiDialog.appendTo(this._appendTo()),"buttons"===t&&this._createButtons(),"closeText"===t&&this.uiDialogTitlebarClose.button({label:""+e}),"draggable"===t&&(i=n.is(":data(ui-draggable)"),i&&!e&&n.draggable("destroy"),!i&&e&&this._makeDraggable()),"position"===t&&this._position(),"resizable"===t&&(s=n.is(":data(ui-resizable)"),s&&!e&&n.resizable("destroy"),s&&"string"==typeof e&&n.resizable("option","handles",e),s||e===!1||this._makeResizable()),"title"===t&&this._title(this.uiDialogTitlebar.find(".ui-dialog-title")))},_size:function(){var t,e,i,s=this.options;this.element.show().css({width:"auto",minHeight:0,maxHeight:"none",height:0}),s.minWidth>s.width&&(s.width=s.minWidth),t=this.uiDialog.css({height:"auto",width:s.width}).outerHeight(),e=Math.max(0,s.minHeight-t),i="number"==typeof s.maxHeight?Math.max(0,s.maxHeight-t):"none","auto"===s.height?this.element.css({minHeight:e,maxHeight:i,height:"auto"}):this.element.height(Math.max(0,s.height-t)),this.uiDialog.is(":data(ui-resizable)")&&this.uiDialog.resizable("option","minHeight",this._minHeight())},_blockFrames:function(){this.iframeBlocks=this.document.find("iframe").map(function(){var e=t(this);return t("<div>").css({position:"absolute",width:e.outerWidth(),height:e.outerHeight()}).appendTo(e.parent()).offset(e.offset())[0]})},_unblockFrames:function(){this.iframeBlocks&&(this.iframeBlocks.remove(),delete this.iframeBlocks)},_allowInteraction:function(e){return t(e.target).closest(".ui-dialog").length?!0:!!t(e.target).closest(".ui-datepicker").length},_createOverlay:function(){if(this.options.modal){var e=this,i=this.widgetFullName;t.ui.dialog.overlayInstances||this._delay(function(){t.ui.dialog.overlayInstances&&this.document.bind("focusin.dialog",function(s){e._allowInteraction(s)||(s.preventDefault(),t(".ui-dialog:visible:last .ui-dialog-content").data(i)._focusTabbable())})}),this.overlay=t("<div>").addClass("ui-widget-overlay ui-front").appendTo(this._appendTo()),this._on(this.overlay,{mousedown:"_keepFocus"}),t.ui.dialog.overlayInstances++}},_destroyOverlay:function(){this.options.modal&&this.overlay&&(t.ui.dialog.overlayInstances--,t.ui.dialog.overlayInstances||this.document.unbind("focusin.dialog"),this.overlay.remove(),this.overlay=null)}}),t.ui.dialog.overlayInstances=0,t.uiBackCompat!==!1&&t.widget("ui.dialog",t.ui.dialog,{_position:function(){var e,i=this.options.position,s=[],n=[0,0];i?(("string"==typeof i||"object"==typeof i&&"0"in i)&&(s=i.split?i.split(" "):[i[0],i[1]],1===s.length&&(s[1]=s[0]),t.each(["left","top"],function(t,e){+s[t]===s[t]&&(n[t]=s[t],s[t]=e)}),i={my:s[0]+(0>n[0]?n[0]:"+"+n[0])+" "+s[1]+(0>n[1]?n[1]:"+"+n[1]),at:s.join(" ")}),i=t.extend({},t.ui.dialog.prototype.options.position,i)):i=t.ui.dialog.prototype.options.position,e=this.uiDialog.is(":visible"),e||this.uiDialog.show(),this.uiDialog.position(i),e||this.uiDialog.hide()}})})(jQuery);(function(t){t.widget("ui.menu",{version:"1.10.3",defaultElement:"<ul>",delay:300,options:{icons:{submenu:"ui-icon-carat-1-e"},menus:"ul",position:{my:"left top",at:"right top"},role:"menu",blur:null,focus:null,select:null},_create:function(){this.activeMenu=this.element,this.mouseHandled=!1,this.element.uniqueId().addClass("ui-menu ui-widget ui-widget-content ui-corner-all").toggleClass("ui-menu-icons",!!this.element.find(".ui-icon").length).attr({role:this.options.role,tabIndex:0}).bind("click"+this.eventNamespace,t.proxy(function(t){this.options.disabled&&t.preventDefault()},this)),this.options.disabled&&this.element.addClass("ui-state-disabled").attr("aria-disabled","true"),this._on({"mousedown .ui-menu-item > a":function(t){t.preventDefault()},"click .ui-state-disabled > a":function(t){t.preventDefault()},"click .ui-menu-item:has(a)":function(e){var i=t(e.target).closest(".ui-menu-item");!this.mouseHandled&&i.not(".ui-state-disabled").length&&(this.mouseHandled=!0,this.select(e),i.has(".ui-menu").length?this.expand(e):this.element.is(":focus")||(this.element.trigger("focus",[!0]),this.active&&1===this.active.parents(".ui-menu").length&&clearTimeout(this.timer)))},"mouseenter .ui-menu-item":function(e){var i=t(e.currentTarget);i.siblings().children(".ui-state-active").removeClass("ui-state-active"),this.focus(e,i)},mouseleave:"collapseAll","mouseleave .ui-menu":"collapseAll",focus:function(t,e){var i=this.active||this.element.children(".ui-menu-item").eq(0);e||this.focus(t,i)},blur:function(e){this._delay(function(){t.contains(this.element[0],this.document[0].activeElement)||this.collapseAll(e)})},keydown:"_keydown"}),this.refresh(),this._on(this.document,{click:function(e){t(e.target).closest(".ui-menu").length||this.collapseAll(e),this.mouseHandled=!1}})},_destroy:function(){this.element.removeAttr("aria-activedescendant").find(".ui-menu").addBack().removeClass("ui-menu ui-widget ui-widget-content ui-corner-all ui-menu-icons").removeAttr("role").removeAttr("tabIndex").removeAttr("aria-labelledby").removeAttr("aria-expanded").removeAttr("aria-hidden").removeAttr("aria-disabled").removeUniqueId().show(),this.element.find(".ui-menu-item").removeClass("ui-menu-item").removeAttr("role").removeAttr("aria-disabled").children("a").removeUniqueId().removeClass("ui-corner-all ui-state-hover").removeAttr("tabIndex").removeAttr("role").removeAttr("aria-haspopup").children().each(function(){var e=t(this);e.data("ui-menu-submenu-carat")&&e.remove()}),this.element.find(".ui-menu-divider").removeClass("ui-menu-divider ui-widget-content")},_keydown:function(e){function i(t){return t.replace(/[\-\[\]{}()*+?.,\\\^$|#\s]/g,"\\$&")}var s,n,a,o,r,h=!0;switch(e.keyCode){case t.ui.keyCode.PAGE_UP:this.previousPage(e);break;case t.ui.keyCode.PAGE_DOWN:this.nextPage(e);break;case t.ui.keyCode.HOME:this._move("first","first",e);break;case t.ui.keyCode.END:this._move("last","last",e);break;case t.ui.keyCode.UP:this.previous(e);break;case t.ui.keyCode.DOWN:this.next(e);break;case t.ui.keyCode.LEFT:this.collapse(e);break;case t.ui.keyCode.RIGHT:this.active&&!this.active.is(".ui-state-disabled")&&this.expand(e);break;case t.ui.keyCode.ENTER:case t.ui.keyCode.SPACE:this._activate(e);break;case t.ui.keyCode.ESCAPE:this.collapse(e);break;default:h=!1,n=this.previousFilter||"",a=String.fromCharCode(e.keyCode),o=!1,clearTimeout(this.filterTimer),a===n?o=!0:a=n+a,r=RegExp("^"+i(a),"i"),s=this.activeMenu.children(".ui-menu-item").filter(function(){return r.test(t(this).children("a").text())}),s=o&&-1!==s.index(this.active.next())?this.active.nextAll(".ui-menu-item"):s,s.length||(a=String.fromCharCode(e.keyCode),r=RegExp("^"+i(a),"i"),s=this.activeMenu.children(".ui-menu-item").filter(function(){return r.test(t(this).children("a").text())})),s.length?(this.focus(e,s),s.length>1?(this.previousFilter=a,this.filterTimer=this._delay(function(){delete this.previousFilter},1e3)):delete this.previousFilter):delete this.previousFilter}h&&e.preventDefault()},_activate:function(t){this.active.is(".ui-state-disabled")||(this.active.children("a[aria-haspopup='true']").length?this.expand(t):this.select(t))},refresh:function(){var e,i=this.options.icons.submenu,s=this.element.find(this.options.menus);s.filter(":not(.ui-menu)").addClass("ui-menu ui-widget ui-widget-content ui-corner-all").hide().attr({role:this.options.role,"aria-hidden":"true","aria-expanded":"false"}).each(function(){var e=t(this),s=e.prev("a"),n=t("<span>").addClass("ui-menu-icon ui-icon "+i).data("ui-menu-submenu-carat",!0);s.attr("aria-haspopup","true").prepend(n),e.attr("aria-labelledby",s.attr("id"))}),e=s.add(this.element),e.children(":not(.ui-menu-item):has(a)").addClass("ui-menu-item").attr("role","presentation").children("a").uniqueId().addClass("ui-corner-all").attr({tabIndex:-1,role:this._itemRole()}),e.children(":not(.ui-menu-item)").each(function(){var e=t(this);/[^\-\u2014\u2013\s]/.test(e.text())||e.addClass("ui-widget-content ui-menu-divider")}),e.children(".ui-state-disabled").attr("aria-disabled","true"),this.active&&!t.contains(this.element[0],this.active[0])&&this.blur()},_itemRole:function(){return{menu:"menuitem",listbox:"option"}[this.options.role]},_setOption:function(t,e){"icons"===t&&this.element.find(".ui-menu-icon").removeClass(this.options.icons.submenu).addClass(e.submenu),this._super(t,e)},focus:function(t,e){var i,s;this.blur(t,t&&"focus"===t.type),this._scrollIntoView(e),this.active=e.first(),s=this.active.children("a").addClass("ui-state-focus"),this.options.role&&this.element.attr("aria-activedescendant",s.attr("id")),this.active.parent().closest(".ui-menu-item").children("a:first").addClass("ui-state-active"),t&&"keydown"===t.type?this._close():this.timer=this._delay(function(){this._close()},this.delay),i=e.children(".ui-menu"),i.length&&/^mouse/.test(t.type)&&this._startOpening(i),this.activeMenu=e.parent(),this._trigger("focus",t,{item:e})},_scrollIntoView:function(e){var i,s,n,a,o,r;this._hasScroll()&&(i=parseFloat(t.css(this.activeMenu[0],"borderTopWidth"))||0,s=parseFloat(t.css(this.activeMenu[0],"paddingTop"))||0,n=e.offset().top-this.activeMenu.offset().top-i-s,a=this.activeMenu.scrollTop(),o=this.activeMenu.height(),r=e.height(),0>n?this.activeMenu.scrollTop(a+n):n+r>o&&this.activeMenu.scrollTop(a+n-o+r))},blur:function(t,e){e||clearTimeout(this.timer),this.active&&(this.active.children("a").removeClass("ui-state-focus"),this.active=null,this._trigger("blur",t,{item:this.active}))},_startOpening:function(t){clearTimeout(this.timer),"true"===t.attr("aria-hidden")&&(this.timer=this._delay(function(){this._close(),this._open(t)},this.delay))},_open:function(e){var i=t.extend({of:this.active},this.options.position);clearTimeout(this.timer),this.element.find(".ui-menu").not(e.parents(".ui-menu")).hide().attr("aria-hidden","true"),e.show().removeAttr("aria-hidden").attr("aria-expanded","true").position(i)},collapseAll:function(e,i){clearTimeout(this.timer),this.timer=this._delay(function(){var s=i?this.element:t(e&&e.target).closest(this.element.find(".ui-menu"));s.length||(s=this.element),this._close(s),this.blur(e),this.activeMenu=s},this.delay)},_close:function(t){t||(t=this.active?this.active.parent():this.element),t.find(".ui-menu").hide().attr("aria-hidden","true").attr("aria-expanded","false").end().find("a.ui-state-active").removeClass("ui-state-active")},collapse:function(t){var e=this.active&&this.active.parent().closest(".ui-menu-item",this.element);e&&e.length&&(this._close(),this.focus(t,e))},expand:function(t){var e=this.active&&this.active.children(".ui-menu ").children(".ui-menu-item").first();e&&e.length&&(this._open(e.parent()),this._delay(function(){this.focus(t,e)}))},next:function(t){this._move("next","first",t)},previous:function(t){this._move("prev","last",t)},isFirstItem:function(){return this.active&&!this.active.prevAll(".ui-menu-item").length},isLastItem:function(){return this.active&&!this.active.nextAll(".ui-menu-item").length},_move:function(t,e,i){var s;this.active&&(s="first"===t||"last"===t?this.active["first"===t?"prevAll":"nextAll"](".ui-menu-item").eq(-1):this.active[t+"All"](".ui-menu-item").eq(0)),s&&s.length&&this.active||(s=this.activeMenu.children(".ui-menu-item")[e]()),this.focus(i,s)},nextPage:function(e){var i,s,n;return this.active?(this.isLastItem()||(this._hasScroll()?(s=this.active.offset().top,n=this.element.height(),this.active.nextAll(".ui-menu-item").each(function(){return i=t(this),0>i.offset().top-s-n}),this.focus(e,i)):this.focus(e,this.activeMenu.children(".ui-menu-item")[this.active?"last":"first"]())),undefined):(this.next(e),undefined)},previousPage:function(e){var i,s,n;return this.active?(this.isFirstItem()||(this._hasScroll()?(s=this.active.offset().top,n=this.element.height(),this.active.prevAll(".ui-menu-item").each(function(){return i=t(this),i.offset().top-s+n>0}),this.focus(e,i)):this.focus(e,this.activeMenu.children(".ui-menu-item").first())),undefined):(this.next(e),undefined)},_hasScroll:function(){return this.element.outerHeight()<this.element.prop("scrollHeight")},select:function(e){this.active=this.active||t(e.target).closest(".ui-menu-item");var i={item:this.active};this.active.has(".ui-menu").length||this.collapseAll(e,!0),this._trigger("select",e,i)}})})(jQuery);
(function(a,b){var c;a.rails=c={linkClickSelector:"a[data-confirm], a[data-method], a[data-remote], a[data-disable-with]",inputChangeSelector:"select[data-remote], input[data-remote], textarea[data-remote]",formSubmitSelector:"form",formInputClickSelector:"form input[type=submit], form input[type=image], form button[type=submit], form button:not(button[type])",disableSelector:"input[data-disable-with], button[data-disable-with], textarea[data-disable-with]",enableSelector:"input[data-disable-with]:disabled, button[data-disable-with]:disabled, textarea[data-disable-with]:disabled",requiredInputSelector:"input[name][required]:not([disabled]),textarea[name][required]:not([disabled])",fileInputSelector:"input:file",linkDisableSelector:"a[data-disable-with]",CSRFProtection:function(b){var c=a('meta[name="csrf-token"]').attr("content");c&&b.setRequestHeader("X-CSRF-Token",c)},fire:function(b,c,d){var e=a.Event(c);return b.trigger(e,d),e.result!==!1},confirm:function(a){return confirm(a)},ajax:function(b){return a.ajax(b)},handleRemote:function(d){var e,f,g,h=d.data("cross-domain")||null,i=d.data("type")||a.ajaxSettings&&a.ajaxSettings.dataType,j;if(c.fire(d,"ajax:before")){if(d.is("form")){e=d.attr("method"),f=d.attr("action"),g=d.serializeArray();var k=d.data("ujs:submit-button");k&&(g.push(k),d.data("ujs:submit-button",null))}else d.is(c.inputChangeSelector)?(e=d.data("method"),f=d.data("url"),g=d.serialize(),d.data("params")&&(g=g+"&"+d.data("params"))):(e=d.data("method"),f=d.attr("href"),g=d.data("params")||null);return j={type:e||"GET",data:g,dataType:i,crossDomain:h,beforeSend:function(a,e){return e.dataType===b&&a.setRequestHeader("accept","*/*;q=0.5, "+e.accepts.script),c.fire(d,"ajax:beforeSend",[a,e])},success:function(a,b,c){d.trigger("ajax:success",[a,b,c])},complete:function(a,b){d.trigger("ajax:complete",[a,b])},error:function(a,b,c){d.trigger("ajax:error",[a,b,c])}},f&&(j.url=f),c.ajax(j)}return!1},handleMethod:function(c){var d=c.attr("href"),e=c.data("method"),f=c.attr("target"),g=a("meta[name=csrf-token]").attr("content"),h=a("meta[name=csrf-param]").attr("content"),i=a('<form method="post" action="'+d+'"></form>'),j='<input name="_method" value="'+e+'" type="hidden" />';h!==b&&g!==b&&(j+='<input name="'+h+'" value="'+g+'" type="hidden" />'),f&&i.attr("target",f),i.hide().append(j).appendTo("body"),i.submit()},disableFormElements:function(b){b.find(c.disableSelector).each(function(){var b=a(this),c=b.is("button")?"html":"val";b.data("ujs:enable-with",b[c]()),b[c](b.data("disable-with")),b.prop("disabled",!0)})},enableFormElements:function(b){b.find(c.enableSelector).each(function(){var b=a(this),c=b.is("button")?"html":"val";b.data("ujs:enable-with")&&b[c](b.data("ujs:enable-with")),b.prop("disabled",!1)})},allowAction:function(a){var b=a.data("confirm"),d=!1,e;return b?(c.fire(a,"confirm")&&(d=c.confirm(b),e=c.fire(a,"confirm:complete",[d])),d&&e):!0},blankInputs:function(b,c,d){var e=a(),f,g=c||"input,textarea";return b.find(g).each(function(){f=a(this);if(d?f.val():!f.val())e=e.add(f)}),e.length?e:!1},nonBlankInputs:function(a,b){return c.blankInputs(a,b,!0)},stopEverything:function(b){return a(b.target).trigger("ujs:everythingStopped"),b.stopImmediatePropagation(),!1},callFormSubmitBindings:function(c,d){var e=c.data("events"),f=!0;return e!==b&&e.submit!==b&&a.each(e.submit,function(a,b){if(typeof b.handler=="function")return f=b.handler(d)}),f},disableElement:function(a){a.data("ujs:enable-with",a.html()),a.html(a.data("disable-with")),a.bind("click.railsDisable",function(a){return c.stopEverything(a)})},enableElement:function(a){a.data("ujs:enable-with")!==b&&(a.html(a.data("ujs:enable-with")),a.data("ujs:enable-with",!1)),a.unbind("click.railsDisable")}},a.ajaxPrefilter(function(a,b,d){a.crossDomain||c.CSRFProtection(d)}),a(document).delegate(c.linkDisableSelector,"ajax:complete",function(){c.enableElement(a(this))}),a(document).delegate(c.linkClickSelector,"click.rails",function(d){var e=a(this),f=e.data("method"),g=e.data("params");if(!c.allowAction(e))return c.stopEverything(d);e.is(c.linkDisableSelector)&&c.disableElement(e);if(e.data("remote")!==b)return(d.metaKey||d.ctrlKey)&&(!f||f==="GET")&&!g?!0:(c.handleRemote(e)===!1&&c.enableElement(e),!1);if(e.data("method"))return c.handleMethod(e),!1}),a(document).delegate(c.inputChangeSelector,"change.rails",function(b){var d=a(this);return c.allowAction(d)?(c.handleRemote(d),!1):c.stopEverything(b)}),a(document).delegate(c.formSubmitSelector,"submit.rails",function(d){var e=a(this),f=e.data("remote")!==b,g=c.blankInputs(e,c.requiredInputSelector),h=c.nonBlankInputs(e,c.fileInputSelector);if(!c.allowAction(e))return c.stopEverything(d);if(g&&e.attr("novalidate")==b&&c.fire(e,"ajax:aborted:required",[g]))return c.stopEverything(d);if(f)return h?c.fire(e,"ajax:aborted:file",[h]):!a.support.submitBubbles&&a().jquery<"1.7"&&c.callFormSubmitBindings(e,d)===!1?c.stopEverything(d):(c.handleRemote(e),!1);setTimeout(function(){c.disableFormElements(e)},13)}),a(document).delegate(c.formInputClickSelector,"click.rails",function(b){var d=a(this);if(!c.allowAction(d))return c.stopEverything(b);var e=d.attr("name"),f=e?{name:e,value:d.val()}:null;d.closest("form").data("ujs:submit-button",f)}),a(document).delegate(c.formSubmitSelector,"ajax:beforeSend.rails",function(b){this==b.target&&c.disableFormElements(a(this))}),a(document).delegate(c.formSubmitSelector,"ajax:complete.rails",function(b){this==b.target&&c.enableFormElements(a(this))})})(jQuery);
(function(e) {
    var renderer_locale = $('#user_locale').data('user-locale');
    var separator = renderer_locale == "ja-JP" ? "、" : ","
    var t = {
        COMMA: 188
    };
    e.multicomplete = {
        token: function(t, n) {
            var r, i;
            return !0 === n ? i = '<a href="#multicomplete-remove-token" class="multicomplete-remove-token"><span class="icon-remove icon_16 add_font_color_emphasize"></span></a>' : i = "", r = '<span class="multicomplete-token" data-term="' + t + '">' + "<span>" + t + "</span>" + i + "</span>", e(r)
        }
    }, e.fn.multicomplete = function() {
        e.each(this, function() {
            var n = e(this),
                r, i, s, o, u, a;
            o = {
                collection: [],
                add: function(t) {
                    var n;
                    return t = e.trim(t.replace(/[<>&;]/g, ' ')), n = e.inArray(t, this.collection), t !== "" && n === -1 ? (this.collection.push(t), t) : null
                },
                remove: function(t) {
                    var n;
                    return t = e.trim(t.replace(/[<>&;]/g, ' ')), n = e.inArray(t, this.collection), n > -1 && this.collection.splice(n, 1), t
                },
                toString: function() {
                    return this.collection.join(separator)
                }
            }, i = n.attr("name"), n.removeAttr("name"), u = e('<div class="multicomplete-wrapper"/>'), r = e('<input type="hidden"/>').attr("name", i), a = function(t) {
                var r = [],
                    i;
                n.trigger("multicomplete:before"), e.each(n.val().split(/[,、]/), function() {
                    i = e.Event("multicomplete:add"), i.term = this, i.removable = !0, u.trigger(i), i.isDefaultPrevented() && (t && (t.preventDefault(), t.stopImmediatePropagation()), r.push(this))
                }), r.push(""), n.val(r.join(separator))
            }, u.on("multicomplete:add", function(t) {
                var i = o.add(t.term),
                    s, u;
                if (i) {
                    s = e.Event("multicomplete:add"), s.term = i, n.trigger(s);
                    if (s.isDefaultPrevented()) {
                        o.remove(i), t.preventDefault();
                        return
                    }
                    u = e.multicomplete.token(i, t.removable), n.before(u)
                }
                r.val(o.toString()), n.trigger("multicomplete:updateSize")
            }), u.on("multicomplete:remove", function(t, i) {
                i = o.remove(i), e(this).find('[data-term="' + i + '"]').remove(), r.val(o.toString()), n.trigger("multicomplete:updateSize")
            }), n.on("multicomplete:updateSize", function() {
                var t = 0;
                if (e(this).is(":hidden")) return !1;
                u.find(".multicomplete-token").each(function() {
                    t += e(this).outerWidth(!0)
                }), t < 150 && (t = 150), n.width(u.width() - t)
            }), e(document).on("click.multicomplete", ".multicomplete-remove-token", function(t) {
                t.preventDefault();
                var r = e(this),
                    i = r.prev().text();
                r.closest(".multicomplete-wrapper").trigger("multicomplete:remove", i), n.trigger("focus")
            }), n.on("keyup.multicomplete", function(e) {
                e.which === t.COMMA && e.shiftKey === false && a(e)
            }), n.on("autocompleteselect.multicomplete", function(e, t) {
                e.preventDefault(), n.trigger("multicomplete:before"), u.trigger({
                    type: "multicomplete:add",
                    term: t.item.value,
                    removable: !0
                }), n.val("")
            }), n.closest("form").on("submit.multicomplete", a), n.after(r), n.before(u), u.append(n), s = n.data("multicomplete"), e(s).each(function() {
                var t = e(this);
                var tag_term = (function(){
                  if (t.prop("title") !== undefined) {
                    if (t.prop("title") === ""){
                      return t.text();
                    }
                    else {
                      return t.prop("title");
                    }
                  }
                  else {
                    return t.text();
                  }
                })();
                u.trigger({
                    type: "multicomplete:add",
                    term: tag_term,
                    removable: t.data("removable")
                })
            }), a(), e.ajax({
                url: n.data("autocompleteSource"),
                success: function(e) {
                    n.autocomplete({
                        minLength: 2,
                        source: e
                    })
                },
                error: function(e, t, n) {}
            })
        })
    }
})(jQuery);
(function(e){e.fn.maxlength=function(){e.each(this,function(){var t=e(this),n=t.data("maxlengthFor"),r=e(n),i=parseInt(r.attr("maxlength"),10),s,o;i>0&&(s=t.find("[data-maxlength-counter]"),s=s.length>0?s:t,o=function(){var e=i-r.val().length;e>10?t.removeClass("warn"):t.addClass("warn"),s.text(e)},r.on("focus.maxlength",function(){e(this).on("keyup.maxlength",o)}),r.on("blur.maxlength",function(){e(this).off("keyup.maxlength",o)}),o())})}})(jQuery);
function bindFormErrorHandling() {
  $(".show-modal-on-error").bind("ajax:error", function(xhr, status, error) {
    // do not show error modal if there is a validation error
  	if ((status.status >= 400) && (status.status != 422)) {
      let id = "div#" + $(xhr.target).attr('id');
      if ($(id).modal().is(':visible')) {
        $(id).modal('hide');
      }
	    $("#error_modal").modal("show");
	  }
  });
}

(function($){
  $( document ).ready(function() {
    bindFormErrorHandling();
  });
})(jQuery);
(function($){

  $( document ).ready(function() {

  	if ((window.location.href.match(/matlabcentral\/answers\/\d+(-[^\/]*)?/)) && (window.location.hash.match(/#comment_\d/))) {

  		comment = $(window.location.hash);
  		if (comment.hasClass('hidden')) {

  			// display hidden comments
  			var list = $(comment).closest('.comments');
      	var comments = list.find('.comment');
        comments.removeClass('hidden');
        //list.find('.toggle-comments > span').text('Hide');
        list.find(".toggle-comments > span:nth-of-type(1)").addClass('hidden');
        list.find(".toggle-comments > span:nth-of-type(2)").removeClass('hidden');
        list.data('state', 'open');

  			// scroll to previously hidden comment, adjusting for sticky header
  			offsetTop = $(window.location.hash).offset().top - $('.sticky_header_container').height() - 10;
  			$('html, body').animate({ scrollTop: offsetTop }, 250);
  		}
  	}
	});

})(jQuery);
function getMaxSelectedValue(selector, attribute) {
  var vals = $(selector).map(function() {
    return parseInt($(this).attr(attribute), 10);
  }).get();

  var max = Math.max.apply(Math, vals);
  return max
}

function loadPopoverEventHandlers(element, max_cp_val) {
  cp_link = element.find('a[data-cp-link-id]');
  cp_link.attr('data-cp-link-id', max_cp_val);

  cp_popup = element.find('div[data-cp-popup-id]');
  cp_popup.attr('data-cp-popup-id', max_cp_val);

  loadPopoverClickHandlers("a[data-cp-link-id='" + max_cp_val + "']");
  loadPopoverMouseleaveHandlers("div[data-cp-popup-id='" + max_cp_val + "']");
}
;
(function($){

  $( document ).ready(function() {
	  $(".random_callout").each(function() {
	    var panels = $(this).find(".panel");
	    panels.eq(Math.floor((Math.random()*panels.length))).show();
	  });
	});

})(jQuery);
var spellcheck_suggest = spellcheck_suggest || {};

spellcheck_suggest.init = function(searchParams, suggestions, resultsCount){
	new spellcheck_suggest(searchParams, suggestions, resultsCount);
}

function spellcheck_suggest(searchParams, suggestions, resultsCount){

	var options = {};
	options.targetElementId = 'spellcheck_suggestions';
	options.searchParams = searchParams;
	options.suggestions = suggestions;
	options.relativeUrl = '/matlabcentral/answers/?';
	options.resultsCount = resultsCount;
	options.spellcheckDisplayLimit = 20;
	mwSpellCheckLib.init(options);
};
function resize_eq_images() {
  $('.rtcContent img:not(.imageNode)').each(function(index, ele){
    $(ele).attr({
      style: "width:" + $(ele).attr('width') + "px; height:" + $(ele).attr('height') + "px; max-width:unset;"
    });
    $(ele).parent().css("vertical-align","0px");
  });
  $('.RTClistItem img').each(function(index, ele) {
    $(ele).wrap("<div class=\"paragraphNode\"></div>");
  });
}

function add_spinner_to(element, options) {
  if(options === undefined) options = {};
  if(options.placeholder_class === undefined) options.placeholder_class = "rtc_placeholder";
  var div = document.createElement("div"),
    spinner_outer_div = document.createElement("div"),
    spinner_inner_div = document.createElement("div");
  div.className = options.placeholder_class;
  spinner_inner_div.className = "progress_spinner_dial";
  spinner_outer_div.className = "progress_spinner progress_spinner_indeterminate";
  spinner_outer_div.appendChild(spinner_inner_div);
  div.appendChild(spinner_outer_div);
  $(div).appendTo(element);
}

// show warning messages above editor
var show_rtc_warnings = function(obj, msg) {
  var messages = obj.find('div.rtc_warning_msgs').first();
  if (messages.size() === 0) {
    messages = $("<div></div>", {
      "class": "rtc_warning_msgs alert alert-warning"
    });
    messages.append($("<span></span>", {
      "class": "alert_icon icon-alert-warning"
    }));
    messages.append($("<p></p>", {
      "class": "title"
    }).text(msg));
    if (obj.hasClass('question-form')) {
      var body = obj.find('.question-body');
      body.find('label').after($(messages));
    } else if (obj.hasClass('answer-form') && (!obj.hasClass("create-answer-form"))) {
      var body = obj.find('.answer-body');
      body.find('label').after($(messages));
    } else {
      obj.prepend(messages);
    }
  }
  messages.show();
};

// RTC context menu
function attach_context_menu(rtcObj) {
  var scrollbar_present = false;
  if (isWindows()) scrollbar_present = true;

  var menuDisplayed = false;
  var rtc_cursor = null;

  $("#rtc_editor_with_toolstrip .lti_editor")[0].addEventListener("contextmenu", function() {
    $('#copy_paste_help_modal').modal({ show: false})
    var left = arguments[0].clientX;
    var top = arguments[0].clientY;
    var menuBox = window.document.querySelector(".menu");
    menuBox.style.left = left + "px";
    menuBox.style.top = top + "px";
    menuBox.style.display = "block";
    arguments[0].preventDefault();
    menuDisplayed = true;

    // disable scroll
    $('body').css({'overflow':'hidden'});
    $(document).bind('scroll',function () {
      window.scrollTo(0,0);
    });

    if(scrollbar_present) reset_layout(false);

    menuBox.addEventListener("click", function() {
      rtc_cursor = rtcObj.rtcInstance.cursor.getPosition();
      if(menuDisplayed == true){
        $(document).unbind('scroll');           // undo disable of scroll
        $('body').css({'overflow':'visible'});  //
        menuBox.style.display = "none";
        $('#copy_paste_help_modal').modal('show');
        reset_layout();
      }
    }, true);
  }, false);

  $("#copy_paste_help_modal").on("hidden.bs.modal", function () {
    if(scrollbar_present) reset_layout();
    restore_rtc_cursor_and_focus();
  });

  window.addEventListener("click", function() {
    if($(".menu").css("display") != "none"){
      $(document).unbind('scroll');           // undo disable of scroll
      $('body').css({'overflow':'visible'});  //
      $(".menu").css("display","none");
      if(scrollbar_present) reset_layout();
      restore_rtc_cursor_and_focus();
    }
  }, true);

  function reset_layout(reset) {
    if(reset === undefined) reset = true;
    var padding = "0px";
    if (reset === false) padding = "17px";
    document.body.style.paddingRight = padding;
    $(".sticky_header_container.affix").css("padding-right",padding);
  }

  function isWindows() {
    return navigator.platform.indexOf('Win') > -1
  }

  function restore_rtc_cursor_and_focus() {
    if (rtc_cursor != null) {
      rtcObj.rtcInstance.cursor.setPosition(rtc_cursor);
      rtc_cursor = null;
    }
    rtcObj.rtcInstance.focus();
  }

}

function mm_toolbar_formatting() {
  remove_mm_toolbar_icons_margin();
  window.addEventListener('resize', function(event){
    remove_mm_toolbar_icons_margin();
  });
}

function remove_mm_toolbar_icons_margin() {
  if (screen.width < 476) {
    $("a.matlabmarkup-code").css("margin-left","0px");
    $("a.matlabmarkup-code").css("margin-right","4px");
    $("a.matlabmarkup-help").css("margin-left","0px");
  } else {
    $("a.matlabmarkup-code").css("margin-left","18px");
    $("a.matlabmarkup-code").css("margin-right","18px");
    $("a.matlabmarkup-help").css("margin-left","16px");
  }
}

function get_img_links_in_preview(ml_markup, opc_html){
  try {
    var image_id_name_matcher = /<img src\s?=\s?\"\/matlabcentral\/answers\/uploaded_files\/(\d+\/[^\"]*)\"/gm;
    image_matches = [];
    var match = image_id_name_matcher.exec(ml_markup);
    while (match != null) {
      image_matches.push(match[1]);
      match = image_id_name_matcher.exec(ml_markup);
    }
    var opc_html_dup = opc_html;
    var base64_img_matcher = /\"data:image\/[a-zA-Z]*;base64,[^\"]*\"/;
    for(i = 0; i < image_matches.length; i++) {
      var img_id_name = image_matches.shift();
      if (img_id_name == null) throw "Error in mapping images in preview: Missing images in mm editor";
      opc_html_dup = opc_html_dup.replace(base64_img_matcher, '"/matlabcentral/answers/uploaded_files/preview/'+img_id_name+'"');
    }
    if (image_matches.length != 0) throw "Error in mapping images in preview: Extra images in mm editor";
    opc_html = opc_html_dup;
  } catch(err) { }
  return opc_html;
}

;
// I18n.js
// =======
//
// This small library provides the Rails I18n API on the Javascript.
// You don't actually have to use Rails (or even Ruby) to use I18n.js.
// Just make sure you export all translations in an object like this:
//
//     I18n.translations.en = {
//       hello: "Hello World"
//     };
//
// See tests for specific formatting like numbers and dates.
//

// Using UMD pattern from
// https://github.com/umdjs/umd#regular-module
// `returnExports.js` version
;(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define("i18n", function(){ return factory(root);});
  } else if (typeof module === 'object' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(root);
  } else {
    // Browser globals (root is window)
    root.I18n = factory(root);
  }
}(this, function(global) {
  "use strict";

  // Use previously defined object if exists in current scope
  var I18n = global && global.I18n || {};

  // Just cache the Array#slice function.
  var slice = Array.prototype.slice;

  // Apply number padding.
  var padding = function(number) {
    return ("0" + number.toString()).substr(-2);
  };

  // Improved toFixed number rounding function with support for unprecise floating points
  // JavaScript's standard toFixed function does not round certain numbers correctly (for example 0.105 with precision 2).
  var toFixed = function(number, precision) {
    return decimalAdjust('round', number, -precision).toFixed(precision);
  };

  // Is a given variable an object?
  // Borrowed from Underscore.js
  var isObject = function(obj) {
    var type = typeof obj;
    return type === 'function' || type === 'object'
  };

  var isFunction = function(func) {
    var type = typeof func;
    return type === 'function'
  };

  // Check if value is different than undefined and null;
  var isSet = function(value) {
    return typeof(value) !== 'undefined' && value !== null;
  };

  // Is a given value an array?
  // Borrowed from Underscore.js
  var isArray = function(val) {
    if (Array.isArray) {
      return Array.isArray(val);
    }
    return Object.prototype.toString.call(val) === '[object Array]';
  };

  var isString = function(val) {
    return typeof val === 'string' || Object.prototype.toString.call(val) === '[object String]';
  };

  var isNumber = function(val) {
    return typeof val === 'number' || Object.prototype.toString.call(val) === '[object Number]';
  };

  var isBoolean = function(val) {
    return val === true || val === false;
  };

  var isNull = function(val) {
    return val === null;
  };

  var decimalAdjust = function(type, value, exp) {
    // If the exp is undefined or zero...
    if (typeof exp === 'undefined' || +exp === 0) {
      return Math[type](value);
    }
    value = +value;
    exp = +exp;
    // If the value is not a number or the exp is not an integer...
    if (isNaN(value) || !(typeof exp === 'number' && exp % 1 === 0)) {
      return NaN;
    }
    // Shift
    value = value.toString().split('e');
    value = Math[type](+(value[0] + 'e' + (value[1] ? (+value[1] - exp) : -exp)));
    // Shift back
    value = value.toString().split('e');
    return +(value[0] + 'e' + (value[1] ? (+value[1] + exp) : exp));
  };

  var lazyEvaluate = function(message, scope) {
    if (isFunction(message)) {
      return message(scope);
    } else {
      return message;
    }
  };

  var merge = function (dest, obj) {
    var key, value;
    for (key in obj) if (obj.hasOwnProperty(key)) {
      value = obj[key];
      if (isString(value) || isNumber(value) || isBoolean(value) || isArray(value) || isNull(value)) {
        dest[key] = value;
      } else {
        if (dest[key] == null) dest[key] = {};
        merge(dest[key], value);
      }
    }
    return dest;
  };

  // Set default days/months translations.
  var DATE = {
      day_names: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    , abbr_day_names: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
    , month_names: [null, "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    , abbr_month_names: [null, "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    , meridian: ["AM", "PM"]
  };

  // Set default number format.
  var NUMBER_FORMAT = {
      precision: 3
    , separator: "."
    , delimiter: ","
    , strip_insignificant_zeros: false
  };

  // Set default currency format.
  var CURRENCY_FORMAT = {
      unit: "$"
    , precision: 2
    , format: "%u%n"
    , sign_first: true
    , delimiter: ","
    , separator: "."
  };

  // Set default percentage format.
  var PERCENTAGE_FORMAT = {
      unit: "%"
    , precision: 3
    , format: "%n%u"
    , separator: "."
    , delimiter: ""
  };

  // Set default size units.
  var SIZE_UNITS = [null, "kb", "mb", "gb", "tb"];

  // Other default options
  var DEFAULT_OPTIONS = {
    // Set default locale. This locale will be used when fallback is enabled and
    // the translation doesn't exist in a particular locale.
      defaultLocale: "en"
    // Set the current locale to `en`.
    , locale: "en"
    // Set the translation key separator.
    , defaultSeparator: "."
    // Set the placeholder format. Accepts `{{placeholder}}` and `%{placeholder}`.
    , placeholder: /(?:\{\{|%\{)(.*?)(?:\}\}?)/gm
    // Set if engine should fallback to the default locale when a translation
    // is missing.
    , fallbacks: false
    // Set the default translation object.
    , translations: {}
    // Set missing translation behavior. 'message' will display a message
    // that the translation is missing, 'guess' will try to guess the string
    , missingBehaviour: 'message'
    // if you use missingBehaviour with 'message', but want to know that the
    // string is actually missing for testing purposes, you can prefix the
    // guessed string by setting the value here. By default, no prefix!
    , missingTranslationPrefix: ''
  };

  // Set default locale. This locale will be used when fallback is enabled and
  // the translation doesn't exist in a particular locale.
  I18n.reset = function() {
    var key;
    for (key in DEFAULT_OPTIONS) {
      this[key] = DEFAULT_OPTIONS[key];
    }
  };

  // Much like `reset`, but only assign options if not already assigned
  I18n.initializeOptions = function() {
    var key;
    for (key in DEFAULT_OPTIONS) if (!isSet(this[key])) {
      this[key] = DEFAULT_OPTIONS[key];
    }
  };
  I18n.initializeOptions();

  // Return a list of all locales that must be tried before returning the
  // missing translation message. By default, this will consider the inline option,
  // current locale and fallback locale.
  //
  //     I18n.locales.get("de-DE");
  //     // ["de-DE", "de", "en"]
  //
  // You can define custom rules for any locale. Just make sure you return a array
  // containing all locales.
  //
  //     // Default the Wookie locale to English.
  //     I18n.locales["wk"] = function(locale) {
  //       return ["en"];
  //     };
  //
  I18n.locales = {};

  // Retrieve locales based on inline locale, current locale or default to
  // I18n's detection.
  I18n.locales.get = function(locale) {
    var result = this[locale] || this[I18n.locale] || this["default"];

    if (isFunction(result)) {
      result = result(locale);
    }

    if (isArray(result) === false) {
      result = [result];
    }

    return result;
  };

  // The default locale list.
  I18n.locales["default"] = function(locale) {
    var locales = []
      , list = []
    ;

    // Handle the inline locale option that can be provided to
    // the `I18n.t` options.
    if (locale) {
      locales.push(locale);
    }

    // Add the current locale to the list.
    if (!locale && I18n.locale) {
      locales.push(I18n.locale);
    }

    // Add the default locale if fallback strategy is enabled.
    if (I18n.fallbacks && I18n.defaultLocale) {
      locales.push(I18n.defaultLocale);
    }

    // Locale code format 1:
    // According to RFC4646 (http://www.ietf.org/rfc/rfc4646.txt)
    // language codes for Traditional Chinese should be `zh-Hant`
    //
    // But due to backward compatibility
    // We use older version of IETF language tag
    // @see http://www.w3.org/TR/html401/struct/dirlang.html
    // @see http://en.wikipedia.org/wiki/IETF_language_tag
    //
    // Format: `language-code = primary-code ( "-" subcode )*`
    //
    // primary-code uses ISO639-1
    // @see http://en.wikipedia.org/wiki/List_of_ISO_639-1_codes
    // @see http://www.iso.org/iso/home/standards/language_codes.htm
    //
    // subcode uses ISO 3166-1 alpha-2
    // @see http://en.wikipedia.org/wiki/ISO_3166
    // @see http://www.iso.org/iso/country_codes.htm
    //
    // @note
    //   subcode can be in upper case or lower case
    //   defining it in upper case is a convention only


    // Locale code format 2:
    // Format: `code = primary-code ( "-" region-code )*`
    // primary-code uses ISO 639-1
    // script-code uses ISO 15924
    // region-code uses ISO 3166-1 alpha-2
    // Example: zh-Hant-TW, en-HK, zh-Hant-CN
    //
    // It is similar to RFC4646 (or actually the same),
    // but seems to be limited to language, script, region

    // Compute each locale with its country code.
    // So this will return an array containing
    // `de-DE` and `de`
    // or
    // `zh-hans-tw`, `zh-hans`, `zh`
    // locales.
    locales.forEach(function(locale) {
      var localeParts = locale.split("-");
      var firstFallback = null;
      var secondFallback = null;
      if (localeParts.length === 3) {
        firstFallback = [
          localeParts[0],
          localeParts[1]
        ].join("-");
        secondFallback = localeParts[0];
      }
      else if (localeParts.length === 2) {
        firstFallback = localeParts[0];
      }

      if (list.indexOf(locale) === -1) {
        list.push(locale);
      }

      if (! I18n.fallbacks) {
        return;
      }

      [
        firstFallback,
        secondFallback
      ].forEach(function(nullableFallbackLocale) {
        // We don't want null values
        if (typeof nullableFallbackLocale === "undefined") { return; }
        if (nullableFallbackLocale === null) { return; }
        // We don't want duplicate values
        //
        // Comparing with `locale` first is faster than
        // checking whether value's presence in the list
        if (nullableFallbackLocale === locale) { return; }
        if (list.indexOf(nullableFallbackLocale) !== -1) { return; }

        list.push(nullableFallbackLocale);
      });
    });

    // No locales set? English it is.
    if (!locales.length) {
      locales.push("en");
    }

    return list;
  };

  // Hold pluralization rules.
  I18n.pluralization = {};

  // Return the pluralizer for a specific locale.
  // If no specify locale is found, then I18n's default will be used.
  I18n.pluralization.get = function(locale) {
    return this[locale] || this[I18n.locale] || this["default"];
  };

  // The default pluralizer rule.
  // It detects the `zero`, `one`, and `other` scopes.
  I18n.pluralization["default"] = function(count) {
    switch (count) {
      case 0: return ["zero", "other"];
      case 1: return ["one"];
      default: return ["other"];
    }
  };

  // Return current locale. If no locale has been set, then
  // the current locale will be the default locale.
  I18n.currentLocale = function() {
    return this.locale || this.defaultLocale;
  };

  // Check if value is different than undefined and null;
  I18n.isSet = isSet;

  // Find and process the translation using the provided scope and options.
  // This is used internally by some functions and should not be used as an
  // public API.
  I18n.lookup = function(scope, options) {
    options = options || {};

    var locales = this.locales.get(options.locale).slice()
      , locale
      , scopes
      , fullScope
      , translations
    ;

    fullScope = this.getFullScope(scope, options);

    while (locales.length) {
      locale = locales.shift();
      scopes = fullScope.split(this.defaultSeparator);
      translations = this.translations[locale];

      if (!translations) {
        continue;
      }
      while (scopes.length) {
        translations = translations[scopes.shift()];

        if (translations === undefined || translations === null) {
          break;
        }
      }

      if (translations !== undefined && translations !== null) {
        return translations;
      }
    }

    if (isSet(options.defaultValue)) {
      return lazyEvaluate(options.defaultValue, scope);
    }
  };

  // lookup pluralization rule key into translations
  I18n.pluralizationLookupWithoutFallback = function(count, locale, translations) {
    var pluralizer = this.pluralization.get(locale)
      , pluralizerKeys = pluralizer(count)
      , pluralizerKey
      , message;

    if (isObject(translations)) {
      while (pluralizerKeys.length) {
        pluralizerKey = pluralizerKeys.shift();
        if (isSet(translations[pluralizerKey])) {
          message = translations[pluralizerKey];
          break;
        }
      }
    }

    return message;
  };

  // Lookup dedicated to pluralization
  I18n.pluralizationLookup = function(count, scope, options) {
    options = options || {};
    var locales = this.locales.get(options.locale).slice()
      , locale
      , scopes
      , translations
      , message
    ;
    scope = this.getFullScope(scope, options);

    while (locales.length) {
      locale = locales.shift();
      scopes = scope.split(this.defaultSeparator);
      translations = this.translations[locale];

      if (!translations) {
        continue;
      }

      while (scopes.length) {
        translations = translations[scopes.shift()];
        if (!isObject(translations)) {
          break;
        }
        if (scopes.length === 0) {
          message = this.pluralizationLookupWithoutFallback(count, locale, translations);
        }
      }
      if (typeof message !== "undefined" && message !== null) {
        break;
      }
    }

    if (typeof message === "undefined" || message === null) {
      if (isSet(options.defaultValue)) {
        if (isObject(options.defaultValue)) {
          message = this.pluralizationLookupWithoutFallback(count, options.locale, options.defaultValue);
        } else {
          message = options.defaultValue;
        }
        translations = options.defaultValue;
      }
    }

    return { message: message, translations: translations };
  };

  // Rails changed the way the meridian is stored.
  // It started with `date.meridian` returning an array,
  // then it switched to `time.am` and `time.pm`.
  // This function abstracts this difference and returns
  // the correct meridian or the default value when none is provided.
  I18n.meridian = function() {
    var time = this.lookup("time");
    var date = this.lookup("date");

    if (time && time.am && time.pm) {
      return [time.am, time.pm];
    } else if (date && date.meridian) {
      return date.meridian;
    } else {
      return DATE.meridian;
    }
  };

  // Merge serveral hash options, checking if value is set before
  // overwriting any value. The precedence is from left to right.
  //
  //     I18n.prepareOptions({name: "John Doe"}, {name: "Mary Doe", role: "user"});
  //     #=> {name: "John Doe", role: "user"}
  //
  I18n.prepareOptions = function() {
    var args = slice.call(arguments)
      , options = {}
      , subject
    ;

    while (args.length) {
      subject = args.shift();

      if (typeof(subject) != "object") {
        continue;
      }

      for (var attr in subject) {
        if (!subject.hasOwnProperty(attr)) {
          continue;
        }

        if (isSet(options[attr])) {
          continue;
        }

        options[attr] = subject[attr];
      }
    }

    return options;
  };

  // Generate a list of translation options for default fallbacks.
  // `defaultValue` is also deleted from options as it is returned as part of
  // the translationOptions array.
  I18n.createTranslationOptions = function(scope, options) {
    var translationOptions = [{scope: scope}];

    // Defaults should be an array of hashes containing either
    // fallback scopes or messages
    if (isSet(options.defaults)) {
      translationOptions = translationOptions.concat(options.defaults);
    }

    // Maintain support for defaultValue. Since it is always a message
    // insert it in to the translation options as such.
    if (isSet(options.defaultValue)) {
      translationOptions.push({ message: options.defaultValue });
    }

    return translationOptions;
  };

  // Translate the given scope with the provided options.
  I18n.translate = function(scope, options) {
    options = options || {};

    var translationOptions = this.createTranslationOptions(scope, options);

    var translation;
    var usedScope = scope;

    var optionsWithoutDefault = this.prepareOptions(options)
    delete optionsWithoutDefault.defaultValue

    // Iterate through the translation options until a translation
    // or message is found.
    var translationFound =
      translationOptions.some(function(translationOption) {
        if (isSet(translationOption.scope)) {
          usedScope = translationOption.scope;
          translation = this.lookup(usedScope, optionsWithoutDefault);
        } else if (isSet(translationOption.message)) {
          translation = lazyEvaluate(translationOption.message, scope);
        }

        if (translation !== undefined && translation !== null) {
          return true;
        }
      }, this);

    if (!translationFound) {
      return this.missingTranslation(scope, options);
    }

    if (typeof(translation) === "string") {
      translation = this.interpolate(translation, options);
    } else if (isArray(translation)) {
      translation = translation.map(function(t) {
        return (typeof(t) === "string" ? this.interpolate(t, options) : t);
      }, this);
    } else if (isObject(translation) && isSet(options.count)) {
      translation = this.pluralize(options.count, usedScope, options);
    }

    return translation;
  };

  // This function interpolates the all variables in the given message.
  I18n.interpolate = function(message, options) {
    if (message === null) {
      return message;
    }

    options = options || {};
    var matches = message.match(this.placeholder)
      , placeholder
      , value
      , name
      , regex
    ;

    if (!matches) {
      return message;
    }

    while (matches.length) {
      placeholder = matches.shift();
      name = placeholder.replace(this.placeholder, "$1");

      if (isSet(options[name])) {
        value = options[name].toString().replace(/\$/gm, "_#$#_");
      } else if (name in options) {
        value = this.nullPlaceholder(placeholder, message, options);
      } else {
        value = this.missingPlaceholder(placeholder, message, options);
      }

      regex = new RegExp(placeholder.replace(/{/gm, "\\{").replace(/}/gm, "\\}"));
      message = message.replace(regex, value);
    }

    return message.replace(/_#\$#_/g, "$");
  };

  // Pluralize the given scope using the `count` value.
  // The pluralized translation may have other placeholders,
  // which will be retrieved from `options`.
  I18n.pluralize = function(count, scope, options) {
    options = this.prepareOptions({count: String(count)}, options)
    var pluralizer, result;

    result = this.pluralizationLookup(count, scope, options);
    if (typeof result.translations === "undefined" || result.translations == null) {
      return this.missingTranslation(scope, options);
    }

    if (typeof result.message !== "undefined" && result.message != null) {
      return this.interpolate(result.message, options);
    }
    else {
      pluralizer = this.pluralization.get(options.locale);
      return this.missingTranslation(scope + '.' + pluralizer(count)[0], options);
    }
  };

  // Return a missing translation message for the given parameters.
  I18n.missingTranslation = function(scope, options) {
    //guess intended string
    if(this.missingBehaviour === 'guess'){
      //get only the last portion of the scope
      var s = scope.split('.').slice(-1)[0];
      //replace underscore with space && camelcase with space and lowercase letter
      return (this.missingTranslationPrefix.length > 0 ? this.missingTranslationPrefix : '') +
          s.replace('_',' ').replace(/([a-z])([A-Z])/g,
          function(match, p1, p2) {return p1 + ' ' + p2.toLowerCase()} );
    }

    var localeForTranslation = (options != null && options.locale != null) ? options.locale : this.currentLocale();
    var fullScope           = this.getFullScope(scope, options);
    var fullScopeWithLocale = [localeForTranslation, fullScope].join(this.defaultSeparator);

    return '[missing "' + fullScopeWithLocale + '" translation]';
  };

  // Return a missing placeholder message for given parameters
  I18n.missingPlaceholder = function(placeholder, message, options) {
    return "[missing " + placeholder + " value]";
  };

  I18n.nullPlaceholder = function() {
    return I18n.missingPlaceholder.apply(I18n, arguments);
  };

  // Format number using localization rules.
  // The options will be retrieved from the `number.format` scope.
  // If this isn't present, then the following options will be used:
  //
  // - `precision`: `3`
  // - `separator`: `"."`
  // - `delimiter`: `","`
  // - `strip_insignificant_zeros`: `false`
  //
  // You can also override these options by providing the `options` argument.
  //
  I18n.toNumber = function(number, options) {
    options = this.prepareOptions(
        options
      , this.lookup("number.format")
      , NUMBER_FORMAT
    );

    var negative = number < 0
      , string = toFixed(Math.abs(number), options.precision).toString()
      , parts = string.split(".")
      , precision
      , buffer = []
      , formattedNumber
      , format = options.format || "%n"
      , sign = negative ? "-" : ""
    ;

    number = parts[0];
    precision = parts[1];

    while (number.length > 0) {
      buffer.unshift(number.substr(Math.max(0, number.length - 3), 3));
      number = number.substr(0, number.length -3);
    }

    formattedNumber = buffer.join(options.delimiter);

    if (options.strip_insignificant_zeros && precision) {
      precision = precision.replace(/0+$/, "");
    }

    if (options.precision > 0 && precision) {
      formattedNumber += options.separator + precision;
    }

    if (options.sign_first) {
      format = "%s" + format;
    }
    else {
      format = format.replace("%n", "%s%n");
    }

    formattedNumber = format
      .replace("%u", options.unit)
      .replace("%n", formattedNumber)
      .replace("%s", sign)
    ;

    return formattedNumber;
  };

  // Format currency with localization rules.
  // The options will be retrieved from the `number.currency.format` and
  // `number.format` scopes, in that order.
  //
  // Any missing option will be retrieved from the `I18n.toNumber` defaults and
  // the following options:
  //
  // - `unit`: `"$"`
  // - `precision`: `2`
  // - `format`: `"%u%n"`
  // - `delimiter`: `","`
  // - `separator`: `"."`
  //
  // You can also override these options by providing the `options` argument.
  //
  I18n.toCurrency = function(number, options) {
    options = this.prepareOptions(
        options
      , this.lookup("number.currency.format")
      , this.lookup("number.format")
      , CURRENCY_FORMAT
    );

    return this.toNumber(number, options);
  };

  // Localize several values.
  // You can provide the following scopes: `currency`, `number`, or `percentage`.
  // If you provide a scope that matches the `/^(date|time)/` regular expression
  // then the `value` will be converted by using the `I18n.toTime` function.
  //
  // It will default to the value's `toString` function.
  //
  I18n.localize = function(scope, value, options) {
    options || (options = {});

    switch (scope) {
      case "currency":
        return this.toCurrency(value);
      case "number":
        scope = this.lookup("number.format");
        return this.toNumber(value, scope);
      case "percentage":
        return this.toPercentage(value);
      default:
        var localizedValue;

        if (scope.match(/^(date|time)/)) {
          localizedValue = this.toTime(scope, value);
        } else {
          localizedValue = value.toString();
        }

        return this.interpolate(localizedValue, options);
    }
  };

  // Parse a given `date` string into a JavaScript Date object.
  // This function is time zone aware.
  //
  // The following string formats are recognized:
  //
  //    yyyy-mm-dd
  //    yyyy-mm-dd[ T]hh:mm::ss
  //    yyyy-mm-dd[ T]hh:mm::ss
  //    yyyy-mm-dd[ T]hh:mm::ssZ
  //    yyyy-mm-dd[ T]hh:mm::ss+0000
  //    yyyy-mm-dd[ T]hh:mm::ss+00:00
  //    yyyy-mm-dd[ T]hh:mm::ss.123Z
  //
  I18n.parseDate = function(date) {
    var matches, convertedDate, fraction;
    // we have a date, so just return it.
    if (typeof(date) == "object") {
      return date;
    }

    matches = date.toString().match(/(\d{4})-(\d{2})-(\d{2})(?:[ T](\d{2}):(\d{2}):(\d{2})([\.,]\d{1,3})?)?(Z|\+00:?00)?/);

    if (matches) {
      for (var i = 1; i <= 6; i++) {
        matches[i] = parseInt(matches[i], 10) || 0;
      }

      // month starts on 0
      matches[2] -= 1;

      fraction = matches[7] ? 1000 * ("0" + matches[7]) : null;

      if (matches[8]) {
        convertedDate = new Date(Date.UTC(matches[1], matches[2], matches[3], matches[4], matches[5], matches[6], fraction));
      } else {
        convertedDate = new Date(matches[1], matches[2], matches[3], matches[4], matches[5], matches[6], fraction);
      }
    } else if (typeof(date) == "number") {
      // UNIX timestamp
      convertedDate = new Date();
      convertedDate.setTime(date);
    } else if (date.match(/([A-Z][a-z]{2}) ([A-Z][a-z]{2}) (\d+) (\d+:\d+:\d+) ([+-]\d+) (\d+)/)) {
      // This format `Wed Jul 20 13:03:39 +0000 2011` is parsed by
      // webkit/firefox, but not by IE, so we must parse it manually.
      convertedDate = new Date();
      convertedDate.setTime(Date.parse([
        RegExp.$1, RegExp.$2, RegExp.$3, RegExp.$6, RegExp.$4, RegExp.$5
      ].join(" ")));
    } else if (date.match(/\d+ \d+:\d+:\d+ [+-]\d+ \d+/)) {
      // a valid javascript format with timezone info
      convertedDate = new Date();
      convertedDate.setTime(Date.parse(date));
    } else {
      // an arbitrary javascript string
      convertedDate = new Date();
      convertedDate.setTime(Date.parse(date));
    }

    return convertedDate;
  };

  // Formats time according to the directives in the given format string.
  // The directives begins with a percent (%) character. Any text not listed as a
  // directive will be passed through to the output string.
  //
  // The accepted formats are:
  //
  //     %a  - The abbreviated weekday name (Sun)
  //     %A  - The full weekday name (Sunday)
  //     %b  - The abbreviated month name (Jan)
  //     %B  - The full month name (January)
  //     %c  - The preferred local date and time representation
  //     %d  - Day of the month (01..31)
  //     %-d - Day of the month (1..31)
  //     %H  - Hour of the day, 24-hour clock (00..23)
  //     %-H - Hour of the day, 24-hour clock (0..23)
  //     %I  - Hour of the day, 12-hour clock (01..12)
  //     %-I - Hour of the day, 12-hour clock (1..12)
  //     %m  - Month of the year (01..12)
  //     %-m - Month of the year (1..12)
  //     %M  - Minute of the hour (00..59)
  //     %-M - Minute of the hour (0..59)
  //     %p  - Meridian indicator (AM  or  PM)
  //     %S  - Second of the minute (00..60)
  //     %-S - Second of the minute (0..60)
  //     %w  - Day of the week (Sunday is 0, 0..6)
  //     %y  - Year without a century (00..99)
  //     %-y - Year without a century (0..99)
  //     %Y  - Year with century
  //     %z  - Timezone offset (+0545)
  //
  I18n.strftime = function(date, format) {
    var options = this.lookup("date")
      , meridianOptions = I18n.meridian()
    ;

    if (!options) {
      options = {};
    }

    options = this.prepareOptions(options, DATE);

    if (isNaN(date.getTime())) {
      throw new Error('I18n.strftime() requires a valid date object, but received an invalid date.');
    }

    var weekDay = date.getDay()
      , day = date.getDate()
      , year = date.getFullYear()
      , month = date.getMonth() + 1
      , hour = date.getHours()
      , hour12 = hour
      , meridian = hour > 11 ? 1 : 0
      , secs = date.getSeconds()
      , mins = date.getMinutes()
      , offset = date.getTimezoneOffset()
      , absOffsetHours = Math.floor(Math.abs(offset / 60))
      , absOffsetMinutes = Math.abs(offset) - (absOffsetHours * 60)
      , timezoneoffset = (offset > 0 ? "-" : "+") +
          (absOffsetHours.toString().length < 2 ? "0" + absOffsetHours : absOffsetHours) +
          (absOffsetMinutes.toString().length < 2 ? "0" + absOffsetMinutes : absOffsetMinutes)
    ;

    if (hour12 > 12) {
      hour12 = hour12 - 12;
    } else if (hour12 === 0) {
      hour12 = 12;
    }

    format = format.replace("%a", options.abbr_day_names[weekDay]);
    format = format.replace("%A", options.day_names[weekDay]);
    format = format.replace("%b", options.abbr_month_names[month]);
    format = format.replace("%B", options.month_names[month]);
    format = format.replace("%d", padding(day));
    format = format.replace("%e", day);
    format = format.replace("%-d", day);
    format = format.replace("%H", padding(hour));
    format = format.replace("%-H", hour);
    format = format.replace("%I", padding(hour12));
    format = format.replace("%-I", hour12);
    format = format.replace("%m", padding(month));
    format = format.replace("%-m", month);
    format = format.replace("%M", padding(mins));
    format = format.replace("%-M", mins);
    format = format.replace("%p", meridianOptions[meridian]);
    format = format.replace("%S", padding(secs));
    format = format.replace("%-S", secs);
    format = format.replace("%w", weekDay);
    format = format.replace("%y", padding(year));
    format = format.replace("%-y", padding(year).replace(/^0+/, ""));
    format = format.replace("%Y", year);
    format = format.replace("%z", timezoneoffset);

    return format;
  };

  // Convert the given dateString into a formatted date.
  I18n.toTime = function(scope, dateString) {
    var date = this.parseDate(dateString)
      , format = this.lookup(scope)
    ;

    if (date.toString().match(/invalid/i)) {
      return date.toString();
    }

    if (!format) {
      return date.toString();
    }

    return this.strftime(date, format);
  };

  // Convert a number into a formatted percentage value.
  I18n.toPercentage = function(number, options) {
    options = this.prepareOptions(
        options
      , this.lookup("number.percentage.format")
      , this.lookup("number.format")
      , PERCENTAGE_FORMAT
    );

    return this.toNumber(number, options);
  };

  // Convert a number into a readable size representation.
  I18n.toHumanSize = function(number, options) {
    var kb = 1024
      , size = number
      , iterations = 0
      , unit
      , precision
    ;

    while (size >= kb && iterations < 4) {
      size = size / kb;
      iterations += 1;
    }

    if (iterations === 0) {
      unit = this.t("number.human.storage_units.units.byte", {count: size});
      precision = 0;
    } else {
      unit = this.t("number.human.storage_units.units." + SIZE_UNITS[iterations]);
      precision = (size - Math.floor(size) === 0) ? 0 : 1;
    }

    options = this.prepareOptions(
        options
      , {unit: unit, precision: precision, format: "%n%u", delimiter: ""}
    );

    return this.toNumber(size, options);
  };

  I18n.getFullScope = function(scope, options) {
    options = options || {};

    // Deal with the scope as an array.
    if (isArray(scope)) {
      scope = scope.join(this.defaultSeparator);
    }

    // Deal with the scope option provided through the second argument.
    //
    //    I18n.t('hello', {scope: 'greetings'});
    //
    if (options.scope) {
      scope = [options.scope, scope].join(this.defaultSeparator);
    }

    return scope;
  };
  /**
   * Merge obj1 with obj2 (shallow merge), without modifying inputs
   * @param {Object} obj1
   * @param {Object} obj2
   * @returns {Object} Merged values of obj1 and obj2
   *
   * In order to support ES3, `Object.prototype.hasOwnProperty.call` is used
   * Idea is from:
   * https://stackoverflow.com/questions/8157700/object-has-no-hasownproperty-method-i-e-its-undefined-ie8
   */
  I18n.extend = function ( obj1, obj2 ) {
    if (typeof(obj1) === "undefined" && typeof(obj2) === "undefined") {
      return {};
    }
    return merge(obj1, obj2);
  };

  // Set aliases, so we can save some typing.
  I18n.t = I18n.translate;
  I18n.l = I18n.localize;
  I18n.p = I18n.pluralize;

  return I18n;
}));
// https://developer.mozilla.org/en-US/docs/JavaScript/Reference/Global_Objects/Array/indexOf
if (!Array.prototype.indexOf) {
    Array.prototype.indexOf = function (searchElement /*, fromIndex */ ) {
        "use strict";
        if (this == null) {
            throw new TypeError();
        }
        var t = Object(this);
        var len = t.length >>> 0;
        if (len === 0) {
            return -1;
        }
        var n = 0;
        if (arguments.length > 1) {
            n = Number(arguments[1]);
            if (n != n) { // shortcut for verifying if it's NaN
                n = 0;
            } else if (n != 0 && n != Infinity && n != -Infinity) {
                n = (n > 0 || -1) * Math.floor(Math.abs(n));
            }
        }
        if (n >= len) {
            return -1;
        }
        var k = n >= 0 ? n : Math.max(len - Math.abs(n), 0);
        for (; k < len; k++) {
            if (k in t && t[k] === searchElement) {
                return k;
            }
        }
        return -1;
    }
}

// Production steps of ECMA-262, Edition 5, 15.4.4.18
// Reference: http://es5.github.com/#x15.4.4.18
// https://developer.mozilla.org/en-US/docs/JavaScript/Reference/Global_Objects/Array/forEach
if ( !Array.prototype.forEach ) {

  Array.prototype.forEach = function forEach( callback, thisArg ) {

    var T, k;

    if ( this == null ) {
      throw new TypeError( "this is null or not defined" );
    }

    // 1. Let O be the result of calling ToObject passing the |this| value as the argument.
    var O = Object(this);

    // 2. Let lenValue be the result of calling the Get internal method of O with the argument "length".
    // 3. Let len be ToUint32(lenValue).
    var len = O.length >>> 0; // Hack to convert O.length to a UInt32

    // 4. If IsCallable(callback) is false, throw a TypeError exception.
    // See: http://es5.github.com/#x9.11
    if ( {}.toString.call(callback) !== "[object Function]" ) {
      throw new TypeError( callback + " is not a function" );
    }

    // 5. If thisArg was supplied, let T be thisArg; else let T be undefined.
    if ( thisArg ) {
      T = thisArg;
    }

    // 6. Let k be 0
    k = 0;

    // 7. Repeat, while k < len
    while( k < len ) {

      var kValue;

      // a. Let Pk be ToString(k).
      //   This is implicit for LHS operands of the in operator
      // b. Let kPresent be the result of calling the HasProperty internal method of O with argument Pk.
      //   This step can be combined with c
      // c. If kPresent is true, then
      if ( Object.prototype.hasOwnProperty.call(O, k) ) {

        // i. Let kValue be the result of calling the Get internal method of O with argument Pk.
        kValue = O[ k ];

        // ii. Call the Call internal method of callback with T as the this value and
        // argument list containing kValue, k, and O.
        callback.call( T, kValue, k, O );
      }
      // d. Increase k by 1.
      k++;
    }
    // 8. return undefined
  };
}

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some
if (!Array.prototype.some)
{
  Array.prototype.some = function(fun /*, thisArg */)
  {
    'use strict';

    if (this === void 0 || this === null)
      throw new TypeError();

    var t = Object(this);
    var len = t.length >>> 0;
    if (typeof fun !== 'function')
      throw new TypeError();

    var thisArg = arguments.length >= 2 ? arguments[1] : void 0;
    for (var i = 0; i < len; i++)
    {
      if (i in t && fun.call(thisArg, t[i], i, t))
        return true;
    }

    return false;
  };
}

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map
if (!Array.prototype.map) {

  Array.prototype.map = function(callback/*, thisArg*/) {

    var T, A, k;

    if (this == null) {
      throw new TypeError('this is null or not defined');
    }

    // 1. Let O be the result of calling ToObject passing the |this| 
    //    value as the argument.
    var O = Object(this);

    // 2. Let lenValue be the result of calling the Get internal 
    //    method of O with the argument "length".
    // 3. Let len be ToUint32(lenValue).
    var len = O.length >>> 0;

    // 4. If IsCallable(callback) is false, throw a TypeError exception.
    // See: http://es5.github.com/#x9.11
    if (typeof callback !== 'function') {
      throw new TypeError(callback + ' is not a function');
    }

    // 5. If thisArg was supplied, let T be thisArg; else let T be undefined.
    if (arguments.length > 1) {
      T = arguments[1];
    }

    // 6. Let A be a new array created as if by the expression new Array(len) 
    //    where Array is the standard built-in constructor with that name and 
    //    len is the value of len.
    A = new Array(len);

    // 7. Let k be 0
    k = 0;

    // 8. Repeat, while k < len
    while (k < len) {

      var kValue, mappedValue;

      // a. Let Pk be ToString(k).
      //   This is implicit for LHS operands of the in operator
      // b. Let kPresent be the result of calling the HasProperty internal 
      //    method of O with argument Pk.
      //   This step can be combined with c
      // c. If kPresent is true, then
      if (k in O) {

        // i. Let kValue be the result of calling the Get internal 
        //    method of O with argument Pk.
        kValue = O[k];

        // ii. Let mappedValue be the result of calling the Call internal 
        //     method of callback with T as the this value and argument 
        //     list containing kValue, k, and O.
        mappedValue = callback.call(T, kValue, k, O);

        // iii. Call the DefineOwnProperty internal method of A with arguments
        // Pk, Property Descriptor
        // { Value: mappedValue,
        //   Writable: true,
        //   Enumerable: true,
        //   Configurable: true },
        // and false.

        // In browsers that support Object.defineProperty, use the following:
        // Object.defineProperty(A, k, {
        //   value: mappedValue,
        //   writable: true,
        //   enumerable: true,
        //   configurable: true
        // });

        // For best browser support, use the following:
        A[k] = mappedValue;
      }
      // d. Increase k by 1.
      k++;
    }

    // 9. return A
    return A;
  };
}
;

// Using UMD pattern from
// https://github.com/umdjs/umd#regular-module
// `returnExports.js` version
;(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(["i18n"], factory);
  } else if (typeof module === 'object' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    factory(require("i18n"));
  } else {
    // Browser globals (root is window)
    factory(root.I18n);
  }
}(this, function(I18n) {
  "use strict";

  I18n.translations = {"af":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"ar":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"az":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"be":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"bg":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"bn":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"bs":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"ca":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"cs":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"cy":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"da":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"de":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"de-AT":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"de-CH":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"de-DE":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"el":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"el-CY":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"en":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"en-AU":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"en-CA":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"en-CY":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"en-GB":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"en-IE":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"en-IN":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"en-NZ":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"en-US":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"en-ZA":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"eo":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"es":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"es-419":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"es-AR":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"es-CL":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"es-CO":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"es-CR":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"es-EC":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"es-ES":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"es-MX":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"es-NI":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"es-PA":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"es-PE":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"es-US":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"es-VE":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"et":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"eu":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"fa":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"fi":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"fr":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"fr-CA":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"fr-CH":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"fr-FR":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"gl":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"he":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"hi":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"hi-IN":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"hr":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"hu":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"id":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"is":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"it":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"it-CH":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"ja":{"js":{"copy_code":{"button_label":"コピー","button_title":"コードをクリップボードにコピー","copied":"コピーされました!","unable_to_copy":"コピーできません"},"file_upload_errors":{"error_label":"次の理由でこのファイルを添付できません:","file_size_error":{"multiple":"ファイル:%{files} サイズが 5 MB を超えています。イメージ ファイルをアーカイブ形式で圧縮してみてください (例: zip ファイル)。","single":"ファイル:%{file} サイズが 5 MB を超えています。イメージ ファイルをアーカイブ形式で圧縮してみてください (例: zip ファイル)。"},"unsupported_format":{"multiple":"次のファイルのファイル形式はサポートされていません:%{files}。次のいずれかの形式を使用してください:%{accepted_formats}","single":"次のファイルのファイル形式はサポートされていません:%{file}。次のいずれかの形式を使用してください:%{accepted_formats}"}},"mm_editor":{"no_text_message":"ここでプレビューを表示するには、[Draft] にテキストを入力します。","preview_error":"プレビューの読み込みでエラーが発生しました。\u003cbr/\u003e[Draft] に戻り、再度お試しください。"},"rtc":{"tagline":"\u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB ライブ エディター\u003c/a\u003eを使用して、コード、出力および書式設定されたテキストをまとめるスクリプトを作成します","warnings":{"lost_formatting":"コンテンツの編集処理中にエラーが発生しました。書式が失われた可能性があります。"}}}},"ka":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"km":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"kn":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"ko":{"js":{"copy_code":{"button_label":"복사","button_title":"클립보드에 코드 복사","copied":"복사 완료!","unable_to_copy":"복사할 수 없음"},"file_upload_errors":{"error_label":"다음과 같은 이유로 이 파일을 첨부할 수 없음:","file_size_error":{"multiple":"파일 %{files} 크기가 5MB를 초과합니다. 아카이브 형식(예: zip 파일)으로 이미지 파일을 압축해 보십시오.","single":"파일 %{file} 크기가 5MB를 초과합니다. 아카이브 형식(예: zip 파일)으로 이미지 파일을 압축해 보십시오."},"unsupported_format":{"multiple":"파일 %{files}에서 지원되지 않는 파일 형식입니다. 다음 형식 중 하나를 사용해야 함:%{accepted_formats}","single":"파일 %{file}에서 지원되지 않는 파일 형식입니다. 다음 형식 중 하나를 사용해야 함:%{accepted_formats}"}},"mm_editor":{"no_text_message":"여기서 미리 볼 텍스트를 초안으로 입력하십시오.","preview_error":"미리보기를 불러오는 중 오류가 발생했습니다.\u003cbr/\u003e초안으로 돌아가 다시 시도하십시오."},"rtc":{"tagline":"이 \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB 라이브 편집기\u003c/a\u003e를 사용하여 코드, 출력 및 서식 지정된 텍스트가 결합된 형태의 스크립트를 작성합니다.","warnings":{"lost_formatting":"편집할 게시물을 처리하는 중 오류가 발생했습니다. 서식 지정이 손실되었을 수 있습니다."}}}},"lb":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"lo":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"lt":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"lv":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"mk":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"ml":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"mn":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"mr-IN":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"ms":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"nb":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"ne":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"nl":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"nn":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"oc":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"or":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"pa":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"pl":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"pt":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"pt-BR":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"rm":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"ro":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"ru":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"sk":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"sl":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"sq":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"sr":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"sv":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"sv-SE":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"sw":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"ta":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"th":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"tl":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"tr":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"tt":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"ug":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"uk":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"ur":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"uz":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"vi":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"wo":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"zh":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"zh-CN":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"zh-HK":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"zh-TW":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}},"zh-YUE":{"js":{"copy_code":{"button_label":"Copy","button_title":"Copy code to clipboard","copied":"Copied!","unable_to_copy":"Unable to copy"},"file_upload_errors":{"error_label":"Cannot attach this file because:","file_size_error":{"multiple":"Files:%{files} size exceed 5 MB. Try compressing the image files in an archive format; for example, a zip file.","single":"File:%{file} size exceeds 5 MB. Try compressing the image file in an archive format; for example, a zip file."},"unsupported_format":{"multiple":"File format is unsupported for files:%{files}. Use any of these formats:%{accepted_formats}","single":"File format is unsupported for file:%{file}. Use any of these formats:%{accepted_formats}"}},"mm_editor":{"no_text_message":"Enter text in Draft to preview here.","preview_error":"Error loading preview.\u003cbr/\u003eReturn to Draft and try again."},"rtc":{"tagline":"Create scripts that combine code, output, and formatted text using the \u003ca href=\"/products/matlab/live-editor.html\" target=\"_blank\"\u003eMATLAB Live Editor\u003c/a\u003e","warnings":{"lost_formatting":"There was an error processing the content for editing. The formatting may have been lost."}}}}};
}));



// Copy code to clipboard
function copy_to_clipboard(text, n) {
  if (window.clipboardData){   // For IE
    text = text.replace(/(\r\n)+/g, "\r\n")
    var res = window.clipboardData.setData('Text', text);
    return res;
  } else {
    var textArea = document.createElement("textarea");
    textArea.value = text;

    // For Edge to not shift focus away
    textArea.setAttribute("readonly", "");
    textArea.style.top = n + "px";
    textArea.style.margin = "0";
    textArea.style.padding = "0";
    textArea.style.position = "absolute";

    document.body.appendChild(textArea);
    textArea.select();

    try {
      var res = document.execCommand('copy');
      document.body.removeChild(textArea);
      return res;
    } catch (err) {
      document.body.removeChild(textArea);
      return false;
    }
  }
}

function show_copy_code(options) {
  if (is_mobile_device() || is_iPad()) return;
  if(options === undefined) options = {};
  if(options.tracking_id === undefined) options.tracking_id = "default";
  if(options.selector === undefined) options.selector = ".rtcContent .CodeBlock";
  if(options.tracking_url === undefined) options.tracking_url = '/matlabcentral/answers/rtc/copied_code';

  var div = document.createElement("div");
  div.className = "clipboard";
  var btn = document.createElement("button");
  var span = document.createElement('span')
  btn.setAttribute('title', I18n.t("js.copy_code.button_title"));
  span.setAttribute("data-pseudo-content", I18n.t("js.copy_code.button_label"))
  btn.appendChild(span);
  btn.className = "btn-clipboard";
  div.appendChild(btn);
  $(div).insertBefore(options.selector);

  $('.btn-clipboard').on('click', function(e){
    var res = copy_to_clipboard(this.parentNode.nextElementSibling.innerText.replace(/\n$/,""), this.getBoundingClientRect().top + window.scrollY );
   	var title = res ? I18n.t("js.copy_code.copied") : I18n.t("js.copy_code.unable_to_copy");
    $(this).attr('title',title);
    $(this).attr('data-toggle',"tooltip");
    $(this).tooltip({trigger : 'hover'});
    $(this).tooltip('show');
    $(this).parent().next().addClass('highlight');
    $(this).mouseleave(function(evt){
      $(this).tooltip('destroy');
    });
    var that = this;
    setTimeout(function() { $(that).parent().next().removeClass('highlight') }, 751);
    if(!$(this).attr('data-copied')) {
      $(this).attr('data-copied',true);
      set_copied_code(options.tracking_url, options.tracking_id);
    }
  })
}

function set_copied_code(url, id) {
  $.ajax({
    method:'POST',
    url: url,
    contentType: 'application/json; charset=utf-8',
    data: '{"copied_code":"'+ id +'"}'
  });
}

function is_mobile_device() {
  return /Android|webOS|iPhone|iPod|BlackBerry|BB|PlayBook|IEMobile|Windows Phone|Kindle|Silk|Opera Mini/i.test(navigator.userAgent);
}
function is_iPad() {
  return /iPad/i.test(navigator.userAgent);
}
;














var Application;

(function($, undefined) {

  Application = $({});

  Application.on('dialog:initialize', function(event, selector) {
    // Don't initialize the dialog until the first time it's shown

    $(selector).one('toggle:before', function() {
      var element = $(this);
      var options = {
        autoOpen:  false,
        resizable: false
      };

      if (element.data('dialog') === 'compact') {
        options.dialogClass = 'ui-dialog-compact';
        options.draggable   = false;
      }

      element.dialog(options);
    });

    Application.trigger('hovertips:initialize', selector + ' .hover');
  });

  Application.on('tooltips:initialize', function(event, selector) {
    $(selector).tooltip({container: "body"});
  });

//New function to get an element's bounding rect to identify if any part of the element
//is outside the current viewport. Added as a part of g2057005
  var isOutOfViewport = function (elem) {
  // Get element's bounding
  var bounding = elem.getBoundingClientRect();
  // Check if it's out of the viewport on each side
  var out = {};
  out.top = bounding.top < 0;
  out.left = bounding.left < 0;
  out.bottom = bounding.bottom > (window.innerHeight || document.documentElement.clientHeight);
  out.right = bounding.right > (window.innerWidth || document.documentElement.clientWidth);
  out.any = out.top || out.left || out.bottom || out.right;
  out.all = out.top && out.left && out.bottom && out.right;
  return out;
};

  Application.on('hovertips:initialize', function(event, selector) {
    $(selector).on('mouseenter mouseleave', function() {
      $(this).find('div').toggleClass('visually-hidden').trigger('hovertipsClassChanged');
    });
    $(selector).on('hovertipsClassChanged', function(event){
      var element = event.target;
      if ($(element).hasClass("visually-hidden") === false) {
      var isOut = isOutOfViewport(element);
      if (isOut.any === true) {
        var left = (window.innerWidth || document.documentElement.clientWidth) - event.target.getBoundingClientRect().right + "px";
        element.style.left = left;
        }
      }
    });
  });

  Application.on('toggle:initialize', function(event, selector) {
    var callback = function() {
      var element = $(this);

      // jQuery UI dialogs will have data('dialog') and use their own open/close methods
      if (element.data('dialog')) {
        if (element.dialog('isOpen')) {
          element.dialog('close');
        } else {
          $('[data-dialog=compact]').not('.hidden').dialog('close');
          element.removeClass('hidden');
          element.dialog('open');
        }
      } else {
        element.toggleClass('hidden');
      }
    };

    $(selector).on('click.toggle', function(click) {
      click.preventDefault();

      var target = $(this).data('toggle');

      $(target)
        .trigger('toggle:before')
        .each(callback)
        .trigger('toggle:after');
    });
  });

  Application.on('matlabmarkup:initialize', function(event, selector) {
    var form = $(selector).closest("form");

    var listener = {
      fileUploadComplete: function(fileData) {} };

    var callback = function() {
      $(this).matlabmarkup({
        guidelinesPath: "/matlabcentral/termsofuse.html#content",
        helpPath:       "/matlabcentral/answers/help/markup/",
        remotePath:     "/matlabcentral/answers/matlabmarkup",
        uploadPath:     "/matlabcentral/answers/uploaded_files",
        uploadListener: listener
      });
    };

    // Don't initialize the editor unless it's visible
    $(selector).filter(':visible').each(callback);

    $(selector).filter(':hidden').closest('.matlabmarkup').one('toggle:after', function() {
      $(this).find('[data-matlab-markup]').each(callback);
    });

    // move uploaded file name spans to their correct location
    var preview = form.find('.matlabmarkup-preview').first();
    preview.before($('.pending-uploads'));

    $('[data-file-id]').click(
      function() {
        var fileId = $(this).data("file-id");
        $('input[type="hidden"][data-assoc-file-id="' + fileId + '"]').remove();

        var pendingUploads = $(this).closest('.pending-uploads');
        if ($(pendingUploads).find('li').length <= 1) {
          $(pendingUploads).remove();
        }
        else {
          $(this).parent().remove();
        }
      });
  });

  Application.on('maxlength:initialize', function(event, selector) {
    $(selector).maxlength();
  });

  Application.on('multicomplete:initialize', function(event, selector) {
    $(selector).multicomplete();
  });

  Application.on('commentlist:initialize', function(event, selector) {
    $(selector).on('click.toggle', function(click) {
      click.preventDefault();

      var list     = $(this).closest('.comments');
      var comments = list.find('.comment');

      if (list.data('state') === 'closed') {
        comments.removeClass('hidden');

        list.find(".toggle-comments > span:nth-of-type(1)").addClass('hidden');
        list.find(".toggle-comments > span:nth-of-type(2)").removeClass('hidden');

        list.data('state', 'open');
      } else {
        comments.slice(0, -3).addClass('hidden');

        list.find(".toggle-comments > span:nth-of-type(1)").removeClass('hidden');
        list.find(".toggle-comments > span:nth-of-type(2)").addClass('hidden');

        list.data('state', 'closed');
      }
    });
  });

  Application.on('trackchanges:initialize', function(event, selector) {
    var track = function(selector) {
      $(selector).one('change', function() {
        var element = $(this);
        var form    = element.closest('form[data-confirm-close]');

        form.addClass('changes-pending');

        form.on('ajax:success', function() {
          $(this).removeClass('changes-pending');
          track(element);
        });

        form.find('.cancel').on('click', function(event) {
          event.preventDefault();
          form.removeClass('changes-pending');
          track(element);
        });
      });
    };

    track(selector);
  });

  Application.on('clipboardbuttons:initialize', function(event, selector) {
    // copy permalink to clipboard on click
    $(selector).on('click', function(click) {
      click.preventDefault();

      id = $(this).attr('id').replace('copy', 'anchor');
      var anchor = document.getElementById(id);
      var selection = window.getSelection();
      var range = document.createRange();

      range.selectNodeContents(anchor);
      selection.removeAllRanges();
      selection.addRange(range);

      try {
        var successful = document.execCommand('copy');
      } catch (err) {
        console.log('Unable to copy');
      }

      id = $(this).attr('id').replace('copy_', '');
      $('#'+id).modal('hide');
    });
  });

  // Fire an alert box if you try to leave the page before saving changes
  $(window).on('beforeunload', function() {
    if ($('form[data-confirm-close].changes-pending').length > 0) {
      return $('meta[name="confirm-close"]').attr('content');
    }
  });

  $(window).resize(function() {
    $(".ui-autocomplete").css('display', 'none');
  });

  $(window).scroll(function() {
    $(".ui-autocomplete").css('display', 'none');
  });

  $(document).on('click', '#compact_view_button', function() {
    $("#compact_view").val("true");
    $("#compact_view_form").submit();
  });
  $(document).on('click', '#expand_view_button', function() {
    $("#compact_view").val("false");
    $("#compact_view_form").submit();
  });

  // prevent bubbling up of autocomplete scroll to window scroll when scroll reaches top or bottom
  $(document).on('DOMMouseScroll mousewheel', '.ui-autocomplete', function(event) {
    scrollTop = this.scrollTop;
    scrollHeight = this.scrollHeight;
    height = $(this).height();
    delta = (event.type == 'DOMMouseScroll' ? (event.originalEvent.detail * -40) : event.originalEvent.wheelDelta);
    up = delta > 0;

    var prevent = function() {
      event.stopPropagation();
      event.preventDefault();
      event.returnValue = false;
      return false;
    }

    if (!up && (-delta > (scrollHeight - height - scrollTop))) {
      // prevent when scrolling down past the bottom
      $(this).scrollTop(scrollHeight);
      return prevent();
    }
    else if (up && (delta > scrollTop)) {
      // prevent when scrolling up past the top
      $(this).scrollTop(0);
      return prevent();
    }
  });

  // Document ready
  // TODO: Move JavaScript to the end of the body and remove the document ready handler
  $(function() {

    Application
      .trigger('toggle:initialize', '[data-toggle]')
      .trigger('dialog:initialize', '[data-dialog]')
      .trigger('dialog:initialize', '.modal-body')
      .trigger('modal:initialize', '[modal-dialog]')
      .trigger('matlabmarkup:initialize', '[data-matlab-markup]')
      .trigger('multicomplete:initialize', '[data-multicomplete]')
      .trigger('maxlength:initialize', '.create-question-form [data-maxlength-for]')
      .trigger('commentlist:initialize', '.toggle-comments a')
      .trigger('tooltips:initialize', '[data-toggle="tooltip"]')
      .trigger('hovertips:initialize', '.question-content-flag-icon')
      .trigger('hovertips:initialize', '.support-answer-icon')
      .trigger('clipboardbuttons:initialize', '.copy_permalink')
      .trigger(
        'trackchanges:initialize',
        'form[data-confirm-close] input[type=text], form[data-confirm-close] select, form[data-confirm-close] textarea'
      );

    // Change the label on the flagging list toggle
    $(document).on('click.toggle', '.toggle-flaggings a', function(click) {
      click.preventDefault();

      var elementShow = $(this).parent().find("span:nth-of-type(1)");
      var elementHide = $(this).parent().find("span:nth-of-type(2)");

      if (elementShow.hasClass('hidden'))
        elementShow.removeClass('hidden');
      else
        elementShow.addClass('hidden');

      if (elementHide.hasClass('hidden'))
        elementHide.removeClass('hidden');
      else
        elementHide.addClass('hidden');
    });

    // Auto-focus tag and product inputs when a form is shown
    $(document).on('toggle:after', '.tags form, .products form', function() {
      $(this).filter(':visible').find('input[type=text]').focus();
    });

    // Auto-focus comment and answer textareas when the form is shown
    $(document).on('toggle:after', '.answer-form, .comment-form', function() {
      $(this).filter(':visible').find('textarea').focus();
    });

    // Enable maxlength when editing a question
    $(document).on('toggle:after', '.question-form', function() {
      $(this).find('[data-maxlength-for]').maxlength();
    });

    $(document).on('multicomplete:add','#product_autocomplete', function(event,obj){
      check_valid_product($(this), event);
    });

    // put focus in the tags input when tags form becomes visible
    $(document).on('click', '#tag_list_toggle, #tag_list_toggle_m', function (event) {
      event.preventDefault();

      var toggle_selector = $(this).data('toggle');
      var toggle_prefix = "#edit_tags_question_";
      var question_id = toggle_selector.substring(toggle_prefix.length, toggle_selector.indexOf(','))
      var tag_input = $("#question_" + question_id + "_tags").first();

      var form = tag_input.closest('form');
      if (!$(form).hasClass('hidden')) {
        tag_input.focus();
      }
    });

    // put focus in the product input when product form becomes visible
    $(document).on('click', '#product_list_toggle, #product_list_toggle_m', function (event) {
      event.preventDefault();

      var toggle_selector = $(this).data('toggle');
      var toggle_prefix = "#edit_products_question_";
      var question_id = toggle_selector.substring(toggle_prefix.length, toggle_selector.indexOf(','))
      var product_input = $("#question_" + question_id + "_products").first();

      var form = product_input.closest('form');
      if (!$(form).hasClass('hidden')) {
        product_input.focus();
      }
    });


    // open the correct tab when clicking on the getting started modal
    $(document).on('click', '.getting_started_modal_link', function (event) {
      event.preventDefault();

      // collapse all tabs in the getting started modal
      $(".accordion .panel-title").attr("aria-expanded", "false").addClass("collapsed");
      $("[id^='getting_started_accordion_']").removeClass("in").attr("aria-expanded", "false").height("0px");

      // expand the indicated getting started modal tab
      var tab_id = $(this).data('tab');
      var title_panel_selector = '[href="' + $(this).data('tab') + '"]';
      $(title_panel_selector).attr("aria-expanded", "true").removeClass("collapsed");
      $(tab_id).addClass("in").attr("aria-expanded", "true").height("");
      var tab = $(tab_id);
    });

    // Clear the new answer/comment forms on cancel
    $(document).on('click', '.create-answer-form .submit .cancel, .create-comment-form .submit .cancel', function(event) {
      event.preventDefault();

      $(this).closest('form').find('textarea').val('').trigger('matlabmarkup:refresh');
    });

    // Clear error messages from edit question/answer/comment forms on cancel
    $(document).on('click', '.answer-form .cancel, .comment-form .cancel', function(event) {
      event.preventDefault();

      $(this).closest('form').find('.error').remove();
    });

    // If the user clicks cancel, and the product field is blank, clear any error messages
    $('.product-list .cancel').on('click', function(event) {
      event.preventDefault();

      var form = $(this).closest('form');

      if (form.find('input.multicomplete-products').val() === '') {
        form.find('.multicomplete-error').remove();
      }
    });

    // Add links that open images in question/answer/comment bodies in a new tab/window
    $(".answer-body img, .comment-body img, .question-body img").each(function() {
      $(this).wrap($("<a>", { href: this.src, target: "_blank" }));
    });


    navigator.browserInfo = (function(){
        var ua= navigator.userAgent, tem,
        M= ua.match(/(opera|chrome|safari|firefox|msie|trident(?=\/))\/?\s*(\d+)/i) || [];
        if(/trident/i.test(M[1])){
            tem=  /\brv[ :]+(\d+)/g.exec(ua) || [];
            return 'IE '+(tem[1] || '');
        }
        if(M[1]=== 'Chrome'){
            tem= ua.match(/\b(OPR|Edge)\/(\d+)/);
            if(tem!= null) return tem.slice(1).join(' ').replace('OPR', 'Opera');
        }
        M= M[2]? [M[1], M[2]]: [navigator.appName, navigator.appVersion, '-?'];
        if((tem= ua.match(/version\/(\d+)/i))!= null) M.splice(1, 1, tem[1]);
        return { 'browser': M[0], 'version': M[1] };
    })();

  });
})(jQuery);
