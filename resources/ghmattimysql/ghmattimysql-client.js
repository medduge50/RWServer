!function(e){var t={};function o(r){if(t[r])return t[r].exports;var n=t[r]={i:r,l:!1,exports:{}};return e[r].call(n.exports,n,n.exports,o),n.l=!0,n.exports}o.m=e,o.c=t,o.d=function(e,t,r){o.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:r})},o.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},o.t=function(e,t){if(1&t&&(e=o(e)),8&t)return e;if(4&t&&"object"==typeof e&&e&&e.__esModule)return e;var r=Object.create(null);if(o.r(r),Object.defineProperty(r,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var n in e)o.d(r,n,function(t){return e[t]}.bind(null,n));return r},o.n=function(e){var t=e&&e.__esModule?function(){return e.default}:function(){return e};return o.d(t,"a",t),t},o.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},o.p="",o(o.s=0)}([function(e,t){let o=!1;const r=window.GetCurrentResourceName();function n(e){window.SendNuiMessage(JSON.stringify(e))}function u(e=!0){e!==o&&(e&&window.emitNet(`${r}:request-data`),o=e,n({type:"onToggleShow"}),window.SetNuiFocus(e,e))}var a,i;window.RegisterCommand("mysql",()=>{u()},!0),a="close-explorer",i=()=>{u(!1)},window.RegisterNuiCallbackType(a),window.on(`__cfx_nui:${a}`,(e,t)=>{i(e),t("ok")}),window.setInterval(()=>{o&&window.emitNet(`${r}:request-data`)},3e5),window.onNet(`${r}:update-resource-data`,e=>{let t=[];const o=Object.keys(e);for(let r=0;r<o.length;r+=1)Object.prototype.hasOwnProperty.call(e,o[r])&&Object.prototype.hasOwnProperty.call(e[o[r]],"totalExecutionTime")&&t.push({resource:o[r],queryTime:e[o[r]].totalExecutionTime,count:e[o[r]].queryCount});if(t.length>0){t.sort((e,t)=>e.queryTime-t.queryTime);const e=t.length;t=t.filter((t,o)=>o>e-31),t.sort((e,t)=>{const o=e.resource.toLowerCase(),r=t.resource.toLowerCase();let n=0;return o<r?n=-1:o>r&&(n=1),n}),n({type:"onResourceLabels",resourceLabels:t.map(e=>e.resource)}),n({type:"onResourceData",resourceData:[{data:t.map(e=>e.queryTime)},{data:t.map(e=>e.count>0?e.queryTime/e.count:0)},{data:t.map(e=>e.count)}]})}}),window.onNet(`${r}:update-time-data`,e=>{let t=[];if(Array.isArray(e)){const o=e.length;t=e.filter((e,t)=>t>o-31)}t.length>0&&n({type:"onTimeData",timeData:[{data:t.map(e=>e.totalExecutionTime)},{data:t.map(e=>e.queryCount>0?e.totalExecutionTime/e.queryCount:0)},{data:t.map(e=>e.queryCount)}]})}),window.onNet(`${r}:update-slow-queries`,e=>{n({type:"onSlowQueryData",slowQueries:e.map(e=>{const t=e;return t.queryTime=Math.round(100*e.queryTime)/100,t})})})}]);