(window.webpackJsonp=window.webpackJsonp||[]).push([[0],{21:function(e,n,t){e.exports=t.p+"static/media/dai-logo.64e003f0.png"},28:function(e,n,t){e.exports=t(38)},38:function(e,n,t){"use strict";t.r(n);var a=t(4),i=t.n(a),r=t(20),o=t.n(r),d=(t(33),t(9)),c=t(8),l=t(26),s=t(27),u=t(19),p=t(18),h=t.n(p),m=t(21),b=t.n(m);function w(){var e=Object(d.a)(['\n  query bundles {\n    bundles(where: { id: "1" }) {\n      ethPrice\n    }\n  }\n']);return w=function(){return e},e}function k(){var e=Object(d.a)(["\n  query tokens($tokenAddress: Bytes!) {\n    tokens(where: { id: $tokenAddress }) {\n      derivedETH\n      totalLiquidity\n    }\n  }\n"]);return k=function(){return e},e}var v=new c.a({link:new s.a({uri:"https://api.thegraph.com/subgraphs/name/uniswap/uniswap-v2"}),fetchOptions:{mode:"no-cors"},cache:new l.a}),f=h()(k()),g=h()(w());var E=function(){var e=Object(u.a)(g),n=e.loading,t=e.data,a=Object(u.a)(f,{variables:{tokenAddress:"0x6b175474e89094c44da98b954eedeac495271d0f"}}),r=a.loading,o=a.data,d=o&&o.tokens[0].derivedETH,c=o&&o.tokens[0].totalLiquidity,l=t&&t.bundles[0].ethPrice;return i.a.createElement("div",null,i.a.createElement("div",null,i.a.createElement("img",{src:b.a,width:"150",height:"150",className:"mb-4",alt:""}),i.a.createElement("h2",null,"Dai price:"," ",n||r?"Loading token data...":"$"+(parseFloat(d)*parseFloat(l)).toFixed(5)),i.a.createElement("h2",null,"Dai total liquidity:"," ",r?"Loading token data...":parseFloat(c).toFixed(2))))},y=t(3);o.a.render(i.a.createElement(y.a,{client:v},i.a.createElement(E,null)),document.getElementById("root"))}},[[28,2,1]]]);
//# sourceMappingURL=main.25e9266c.chunk.js.map