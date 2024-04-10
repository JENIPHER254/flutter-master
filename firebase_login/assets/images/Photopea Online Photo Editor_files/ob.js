(()=>{var t={234:(t,e,n)=>{function i(t,e,n){s(t,e),e.set(t,n)}function s(t,e){if(e.has(t))throw new TypeError("Cannot initialize the same private elements twice on an object")}function o(t,e){return t.get(r(t,e))}function a(t,e,n){return t.set(r(t,e),n),n}function r(t,e,n){if("function"==typeof t?t===e:t.has(e))return arguments.length<3?e:n;throw new TypeError("Private element is not present on this object")}const{Ajax:c}=n(59),l="https://lexicon.33across.com/v1/envelope",h=1e4,u="ima",d={GDPR:t=>{let{consentString:e}=t;return{gdpr_consent:e}},CCPA:t=>{let{consentString:e}=t;return{us_privacy:e}},GPP:t=>{let{consentString:e,applicableSections:n=[]}=t;return{gpp:e,gpp_sid:encodeURIComponent(n.join(","))}}},p="33acrossIdFp";var g=new WeakMap,v=new WeakMap,f=new WeakMap,w=new WeakMap,P=new WeakMap,m=new WeakMap,S=new WeakMap,C=new WeakMap,M=new WeakMap,D=new WeakSet;function b(t){const e=JSON.parse(t);return e.succeeded?{idEnvelope:e.data.envelope||"",fpId:e.data.fp||""}:{idEnvelope:"",fpId:""}}async function I(t){const{idEnvelope:e,fpId:n}=await r(D,this,y).call(this,t);return n?o(M,this).localStorage.setItem(p,n):o(M,this).localStorage.removeItem(p),e?(o(C,this).setId(e),r(D,this,j).call(this,e)):(o(C,this).clear(),[])}async function y(){let{consentData:t=o(m,this).consentData,excludeFp:e}=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{};try{const n=await o(f,this).call(this,{url:o(v,this),params:r(D,this,A).call(this,{allConsentData:await t,fp:e?"":o(M,this).localStorage.getItem(p)}),options:{withCredentials:!0,timeout:h}});return r(D,this,b).call(this,n)}catch(t){throw new Error("_33AcrossIdMappingsProvider: ".concat(t))}}function A(t){var e;let{allConsentData:n,fp:i}=t;return n.reduce(((t,e)=>{let{consentData:n={}}=e;const i=d[n.name];return n.consentString&&i&&Object.assign(t,i(n)),t}),{pid:o(g,this),src:o(S,this),ver:"1.9.0",...i&&{fp:o(M,this).decodeURIComponent(i)},...Number(null===(e=o(M,this)._33across)||void 0===e||null===(e=e.idMappingsConfig)||void 0===e||null===(e=e.regs)||void 0===e?void 0:e.coppa)&&{coppa:1}})}function j(t){const[e]=o(P,this),[n]=e.uids;return Object.assign(n,{id:t,atype:1}),a(w,this,o(P,this)),o(w,this)}t.exports=class{constructor(t){let{pid:e,apiUrl:n=l,src:o=u,win:r=window}=t,{ajax:h=c,consentDataHandler:d={consentData:Promise.resolve([])},localStorageId:p}=arguments.length>1&&void 0!==arguments[1]?arguments[1]:{};var b;s(this,b=D),b.add(this),i(this,g,void 0),i(this,v,void 0),i(this,f,void 0),i(this,w,[]),i(this,P,[]),i(this,m,void 0),i(this,S,void 0),i(this,C,void 0),i(this,M,void 0),a(g,this,e),a(v,this,n),a(f,this,h),a(m,this,d),a(S,this,o),a(C,this,p),a(M,this,r)}async fetch(){a(P,this,[{source:"33across.com",uids:[{}]}]),o(m,this).onChange((t=>{o(C,this).clear(),o(M,this).localStorage.removeItem(p),r(D,this,I).call(this,{consentData:t})}));const t=o(C,this).getId(),e=await o(m,this).hasChangedSinceStored();return o(C,this).hasExpired()||!t?r(D,this,I).call(this):e?r(D,this,I).call(this,{excludeFp:!0}):(o(C,this).isRefreshRequired()&&r(D,this,I).call(this),r(D,this,j).call(this,t))}getIds(){return o(w,this)}getLoadingIds(){return o(P,this)}getPid(){return o(g,this)}getSource(){return o(S,this)}}},277:(t,e,n)=>{const{loadConsentData:i,LocalStorageId:s}=n(59),o=n(234),a=i(),r="33acrossId";function c(t){let{expires:e,refreshInSeconds:n,...i}=t;const l="esp"===i.src?"".concat(i.src,"_").concat(r):r,h=new s({idKeyName:l,expires:e,refreshInSeconds:n}),u=new o(i,{consentDataHandler:a,localStorageId:h});return c.providers[u.getSource()]=u,u}c.providers={},t.exports=c},848:(t,e)=>{t.exports=function(t){var e,n,i;let s=arguments.length>1&&void 0!==arguments[1]?arguments[1]:window;null!==(e=s.googletag)&&void 0!==e||(s.googletag={}),null!==(i=(n=s.googletag).secureSignalProviders)&&void 0!==i||(n.secureSignalProviders=[]),s.googletag.secureSignalProviders.push({id:"33across.com",collectorFunction:()=>t.fetch().then((t=>{var e;return(null===(e=t[0])||void 0===e?void 0:e.uids[0].id)||null}))})}},572:(t,e)=>{function n(t){var e;return null===(e=t._33across)||void 0===e?void 0:e.idMappingsConfig.pid}t.exports=async function(){let t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:window;const e=n(t);return e?Promise.resolve(e):(function(t,e){!function(t,e,n){const i="_33across.idMappingsConfig.pid".split(".");i.reduce(((t,e,s)=>s===i.length-1?(t[e]=n,n):void 0===t[e]?(t[e]={},t[e]):t[e]),t)}(e,0,t)}(await function(t){return new Promise((e=>{t.setTimeout((async()=>{e(await function(t){return new Promise((e=>{t.pbjs&&t.pbjs.que?t.pbjs.que.push((()=>{var n;e(null===(n=t.pbjs)||void 0===n||null===(n=n.getConfig("userSync.userIds"))||void 0===n||null===(n=n.find((t=>{let{name:e}=t;return"33acrossId"===e})))||void 0===n?void 0:n.params.pid)})):e()}))}(t)||function(t){var e,n;const i=(null===(e=t._33AcrossIdMappingsProvider)||void 0===e?void 0:e.providers)||{},s=i.ima||(null===(n=t._33AcrossPpidMappingsProvider)||void 0===n?void 0:n.providers[0])||i.aps;return null==s?void 0:s.getPid()}(t))}),10)}))}(t),t),n(t))}},381:(t,e)=>{t.exports=function(t){return new Promise(((e,n)=>{const i=function(t){let{url:e,params:n={},win:i=window,options:s={}}=t;const o=new i.XMLHttpRequest("MSXML2.XMLHTTP.3.0"),a=new URLSearchParams(n);return o.open("GET","".concat(e,"?").concat(a),1),o.setRequestHeader("Content-type","application/x-www-form-urlencoded"),o.withCredentials=s.withCredentials||!0,o.timeout=s.timeout,o}(t);i.onreadystatechange=()=>{4===i.readyState&&(i.status>=200&&i.status<300?e(i.responseText):n("Ajax: Status code ".concat(i.status)))},i.onerror=()=>n("Ajax: Network error"),i.ontimeout=()=>n("Ajax: Timeout"),i.send()}))}},162:(t,e)=>{function n(t,e,n){i(t,e),e.set(t,n)}function i(t,e){if(e.has(t))throw new TypeError("Cannot initialize the same private elements twice on an object")}function s(t,e){return t.get(a(t,e))}function o(t,e,n){return t.set(a(t,e),n),n}function a(t,e,n){if("function"==typeof t?t===e:t.has(e))return arguments.length<3?e:n;throw new TypeError("Private element is not present on this object")}const r=!1,c={CCPA:"__uspapi",GDPR:"__tcfapi",GPP:"__gpp"},l={GDPR:"__tcfapiLocator",CCPA:"__uspapiLocator",GPP:"__gppLocator"},h={GDPR:["addEventListener"],CCPA:["getUSPData"],GPP:["ping","addEventListener"]},u="static",d={GDPR:2,CCPA:1},p={GDPR(t,e,n){t(e,d.GDPR,n)},CCPA(t,e,n){t(e,d.CCPA,n)},GPP(t,e,n,i){t(e,n,i)}};var g=new WeakMap,v=new WeakMap,f=new WeakMap,w=new WeakMap,P=new WeakMap,m=new WeakMap,S=new WeakMap,C=new WeakMap,M=new WeakSet;function D(t){let e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:s(w,this);try{if("function"==typeof e[s(v,this)])return{cmpApi:e[s(v,this)],win:e};if(e.frames[t])return{win:e}}catch(t){}return e===s(w,this).top?{}:a(M,this,D).call(this,t,e.parent)}function b(){let t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{};const e="boolean"==typeof t.gdprApplies?t.gdprApplies:r;return!e||(n=t.tcString)&&"string"==typeof n?{consentData:a(M,this,k).call(this,{consentString:t.tcString,consentObject:t,additionalFields:{applies:e,..."string"==typeof t.addtlConsent?{addtlConsent:t.addtlConsent}:{}},valuesToHash:[e,t.tcString]})}:a(M,this,y).call(this,t);var n}function I(t){return(e=null==t?void 0:t.uspString)&&"string"==typeof e?{consentData:a(M,this,k).call(this,{consentString:t.uspString,consentObject:t,valuesToHash:t.uspString})}:a(M,this,y).call(this,t);var e}function y(t){return a(M,this,A).call(this,"CMP returned unexpected value during lookup process.",{consentObject:t})}function A(t,e){return{errMsg:t,errArgs:e,consentData:a(M,this,k).call(this)}}function j(t){const e=t=>Array.isArray(t)&&t.length>0&&0!==t[0];return e(t.applicableSections)?t.applicableSections:e(t.applicableSection)?t.applicableSection:null}function x(){let t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{};const e=Object.assign({},t,t.pingData);if(!e.gppString||"string"!=typeof e.gppString)return a(M,this,y).call(this,e);const n=a(M,this,j).call(this,e);return n?{consentData:a(M,this,k).call(this,{consentString:e.gppString,apiVersion:e.gppVersion,consentObject:e,additionalFields:{applicableSections:n},valuesToHash:[n,e.gppString]})}:a(M,this,y).call(this,e)}function k(){let{consentString:t="",consentObject:e={},apiVersion:n=d[s(g,this)],additionalFields:i,valuesToHash:o=null}=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{};return{consentString:t,vendorData:e,apiVersion:n,name:s(g,this),hash:s(C,this).call(this,JSON.stringify(o)),...i}}function _(t,e){const n={GDPR:t=>a(M,this,b).call(this,t),CCPA:t=>a(M,this,I).call(this,t),GPP:t=>a(M,this,x).call(this,t)}[s(g,this)](t);var i;return e&&(null===(i=s(S,this))||void 0===i||i.call(this,n,s(g,this))),n}function T(t,e){switch(s(g,this)){case"GDPR":return[!1===t.gdprApplies||"tcloaded"===t.eventStatus||"useractioncomplete"===t.eventStatus];case"CCPA":return[!0];case"GPP":{if("sectionChange"===t.eventName)return[!0,!0];const n=t.pingData||t;return"loaded"===n.cmpStatus?n.gppString||t.hasOwnProperty("gppString")?[!0]:(a(M,this,W).call(this,"getGPPData").then(e),[!1]):"ready"===n.signalStatus?[!0]:"error"===n.cmpStatus?[!1,!1,"CMP returned with a cmpStatus:error response. Please check CMP setup."]:[!1]}default:return[!1]}}function E(t,e){if(arguments.length>2&&void 0!==arguments[2]&&!arguments[2])return void t(a(M,this,A).call(this,"CMP unable to register callback function.  Please check CMP setup."));const[n,i,s]=a(M,this,T).call(this,e,t);n?t(a(M,this,_).call(this,e,i)):s?t({errMsg:s}):o(f,this,e)}function G(t,e){var n,i,o;const a="".concat(s(v,this),"Return"),r=(null!==(n=t.data)&&void 0!==n&&null!==(i=n.includes)&&void 0!==i&&i.call(n,a)?JSON.parse(t.data):t.data)[a];null!=r&&r.callId&&(null===(o=e[r.callId])||void 0===o||o.call(e,r.returnValue,r.success),delete e[r.callId])}function O(t,e,n){const i={},o="".concat(s(v,this),"Call");s(w,this).addEventListener("message",(t=>a(M,this,G).call(this,t,i)),!1),function(t,n,s){let a=arguments.length>3&&void 0!==arguments[3]?arguments[3]:null;const r=Math.random().toString(),c={[o]:Object.assign({command:t,callId:r},n&&{version:n},a&&{parameter:a})};i[r]=s,e.postMessage(c,"*")}(t,d[s(g,this)],n)}function W(t){var e=this;return new Promise((n=>{const{cmpApi:i,win:o}=a(M,this,D).call(this,l[s(g,this)]);if(!o)return void n(a(M,this,A).call(this,"CMP not found, the CMP script needs to be loaded before the 33across script"));const r=function(){n.fnName=t;for(var i=arguments.length,s=new Array(i),o=0;o<i;o++)s[o]=arguments[o];a(M,e,E).call(e,n,...s)};i?p[s(g,this)](i,t,r):a(M,this,O).call(this,t,o,r)}))}function L(){return a(M,this,_).call(this,s(m,this))}t.exports=class{constructor(t){var e;let{name:a,win:r=window,config:l={},hashFn:h}=t;var u;i(this,u=M),u.add(this),n(this,g,void 0),n(this,v,void 0),n(this,f,void 0),n(this,w,void 0),n(this,P,void 0),n(this,m,void 0),n(this,S,void 0),n(this,C,void 0),o(g,this,a),o(v,this,c[a]),o(w,this,r),o(P,this,l.consentTimeout||1e4),o(m,this,null===(e=s(w,this)._33across)||void 0===e||null===(e=e.idMappingsConfig)||void 0===e||null===(e=e.regs)||void 0===e?void 0:e[s(g,this).toLowerCase()]),o(C,this,h)}onChange(t){o(S,this,t)}loadConsentData(){const t=s(m,this)?u:"iab",e={iab:()=>h[s(g,this)].map((t=>a(M,this,W).call(this,t))),[u]:()=>[a(M,this,L).call(this)]};let n=null;const i=new Promise((t=>{n=s(w,this).setTimeout((()=>{const{consentData:e,errMsg:n}=a(M,this,_).call(this,s(f,this));t(Object.assign(a(M,this,A).call(this,"CMP hasn't been loaded"),{consentData:n?a(M,this,k).call(this):e}))}),s(P,this))}));return Promise.race([...e[t](),i]).finally((()=>s(w,this).clearTimeout(n)))}}},297:(t,e)=>{const n="33acrossId_csti",i="COPPA",s=["GDPR","CCPA","GPP"],o=s.concat([i]);t.exports=function(t,e){var a;let r=arguments.length>2&&void 0!==arguments[2]?arguments[2]:window;const c={},l=s.reduce(((e,n)=>Object.assign(e,{[n]:t(n)})),{}),h=Number(!(null===(a=r._33across)||void 0===a||null===(a=a.idMappingsConfig)||void 0===a||null===(a=a.regs)||void 0===a||!a.coppa)),u=()=>s.map((t=>{var e;return null===(e=c[t])||void 0===e?void 0:e.consentData.hash})).concat(h).join(":"),d=(t,e)=>{c[t]=e,r.localStorage.setItem(n,u())},p=()=>{var t;return(null===(t=r.localStorage.getItem(n))||void 0===t?void 0:t.split(":"))||[]},g=p();let v;return{onChange(t){l.GPP.onChange((e=>{var n;const i=o.indexOf("GPP"),s=p()[i];(null===(n=e.consentData)||void 0===n?void 0:n.hash)!==s&&(d("GPP",e),t(Object.values(c)))}))},consentData:new Promise((t=>{const e=Object.entries(l).reduce(((t,e)=>{let[n,i]=e;return(t[n]=i.loadConsentData()).then((t=>d(n,t))),t}),{});Promise.all(Object.values(e)).then((()=>t(Object.values(c)))),e.GPP.then((e=>{var n;null!==(n=e.consentData)&&void 0!==n&&n.consentString&&t(Object.values(c))}))})),getChangedSinceStoredResult:()=>v,async hasChangedSinceStored(){const t=r.localStorage.getItem("33acrossId_cst");return!g&&!t||(void 0!==v||(await this.consentData,v=(!t||e(u())!==t)&&(()=>{const t=o.reduce(((t,e,n)=>Object.assign(t,{[e]:g[n]})),{});return!!Object.entries(c).find((e=>{let[n,{consentData:i}]=e;return(i.hash||"")!==t[n]}))||String(h)!==t[i]})()),v)}}}},895:(t,e)=>{t.exports=function(t){let e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:0;const n=function(t,e){if("function"==typeof Math.imul)return Math.imul(t,e);let n=(4194303&t)*(e|=0);return 4290772992&t&&(n+=(4290772992&t)*e|0),0|n};let i=3735928559^e,s=1103547991^e;for(let e,o=0;o<t.length;o++)e=t.charCodeAt(o),i=n(i^e,2654435761),s=n(s^e,1597334677);return i=n(i^i>>>16,2246822507)^n(s^s>>>13,3266489909),s=n(s^s>>>16,2246822507)^n(i^i>>>13,3266489909),(4294967296*(2097151&s)+(i>>>0)).toString()}},59:(t,e,n)=>{const i=n(162),s=n(297),o=n(381),a=n(206),r=n(895);function c(t){return function(t){const e=[];for(;t>0;)e.push(String.fromCharCode(255&t)),t>>>=8;return btoa(e.join())}(r(t))}const l=t=>new i({name:t,hashFn:r});t.exports={ConsentManagement:i,loadConsentData:()=>s(l,c),Ajax:o,LocalStorageId:a}},206:(t,e)=>{function n(t,e,n){i(t,e),e.set(t,n)}function i(t,e){if(e.has(t))throw new TypeError("Cannot initialize the same private elements twice on an object")}function s(t,e){return t.get(a(t,e))}function o(t,e,n){return t.set(a(t,e),n),n}function a(t,e,n){if("function"==typeof t?t===e:t.has(e))return arguments.length<3?e:n;throw new TypeError("Private element is not present on this object")}const r=28800,c=30;var l=new WeakMap,h=new WeakMap,u=new WeakMap,d=new WeakMap,p=new WeakSet;function g(t,e){return s(u,this).localStorage.setItem(t,e),this}function v(t){return s(u,this).localStorage.removeItem(t),this}function f(t){return s(u,this).localStorage.getItem(t)}t.exports=class{constructor(t){let{idKeyName:e,refreshInSeconds:s=r,expires:a=c,win:g=window}=t;var v;i(this,v=p),v.add(this),n(this,l,void 0),n(this,h,void 0),n(this,u,void 0),n(this,d,void 0),o(l,this,{VALUE:e,LAST:"".concat(e,"_last"),EXP:"".concat(e,"_exp")}),o(u,this,g),o(h,this,s),o(d,this,a)}hasExpired(){const t=a(p,this,f).call(this,s(l,this).EXP);return!!t&&new Date(t).getTime()-Date.now()<=0}isRefreshRequired(){const t=new Date(a(p,this,f).call(this,s(l,this).LAST));return Date.now()-t.getTime()>1e3*s(h,this)}setId(t){var e,n;const i=new Date(Date.now()+864e5*s(d,this));a(p,n=a(p,e=a(p,this,g).call(this,s(l,this).VALUE,t),g).call(e,s(l,this).EXP,i.toUTCString()),g).call(n,s(l,this).LAST,(new Date).toUTCString())}getId(){return s(u,this).decodeURIComponent(a(p,this,f).call(this,s(l,this).VALUE)||"")}clear(){var t,e;return a(p,e=a(p,t=a(p,this,v).call(this,s(l,this).VALUE),v).call(t,s(l,this).EXP),v).call(e,s(l,this).LAST),this}}}},e={};function n(i){var s=e[i];if(void 0!==s)return s.exports;var o=e[i]={exports:{}};return t[i](o,o.exports,n),o.exports}(()=>{const t=n(277),e=n(572),i=n(848);!async function(){const n=await e();if(!n)return void console.error("33Across Lexicon ID Mappings Provider: PID not found");const s=new t({src:"esp",pid:n});i(s)}()})()})();