google.maps.__gjsload__('stats', function(_){var AY=function(){this.b=new _.uk},BY=function(a){var b=0,c=0;a.b.forEach(function(a){b+=a.vo;c+=a.Sn});return c?b/c:0},CY=function(a,b,c){var d=[];_.nj(a,function(a,c){d.push(c+b+a)});return d.join(c)},DY=function(a){var b={};_.nj(a,function(a,d){b[(0,window.encodeURIComponent)(d)]=(0,window.encodeURIComponent)(a).replace(/%7C/g,"|")});return CY(b,":",",")},EY=function(){var a;_.zf[35]?a=_.Q(_.U(_.T),11):a=_.Lq;var b=window.document;this.l=_.hi;this.f=a+"/maps/gen_204";this.j=b},FY=function(a,b,
c,d){var e={};e.host=window.document.location&&window.document.location.host||window.location.host;e.v=a;e.r=Math.round(1/b);c&&(e.client=c);d&&(e.key=d);return e},GY=function(a,b,c,d){var e=_.P(_.T,0,1);this.m=a;this.B=b;this.l=e;this.f=c;this.j=d;this.b=new _.uk;this.A=_.Ra()},IY=function(a,b,c,d,e){var f=_.P(_.T,23,500);var g=_.P(_.T,22,2);this.D=a;this.G=b;this.H=f;this.l=g;this.B=c;this.m=d;this.A=e;this.f=new _.uk;this.b=0;this.j=_.Ra();HY(this)},HY=function(a){window.setTimeout(function(){JY(a);
HY(a)},Math.min(a.H*Math.pow(a.l,a.b),2147483647))},JY=function(a){var b=FY(a.G,a.B,a.m,a.A);b.t=a.b+"-"+(_.Ra()-a.j);a.f.forEach(function(a,d){a=a();0<a&&(b[d]=Number(a.toFixed(2))+(_.rl()?"-if":""))});a.D.b({ev:"api_snap"},b);++a.b},KY=function(a,b,c,d,e){this.A=a;this.B=b;this.m=c;this.j=d;this.l=e;this.f={};this.b=[]},LY=function(a,b,c){var d=_.$h;this.j=a;_.L.bind(this.j,"set_at",this,this.l);_.L.bind(this.j,"insert_at",this,this.l);this.A=b;this.B=d;this.m=c;this.f=0;this.b={};this.l()},MY=
function(){this.j=_.Q(_.T,6);this.B=_.jf();this.b=new EY;_.Zh&&new LY(_.Zh,(0,_.u)(this.b.b,this.b),!!this.j);var a=_.Q(new _.df(_.T.data[3]),1);this.D=a.split(".")[1]||a;this.G={};this.A={};this.m={};this.H={};this.V=_.P(_.T,0,1);_.gi&&(this.l=new IY(this.b,this.D,this.V,this.j,this.B))};AY.prototype.f=function(a,b,c){this.b.set(_.Jc(a),{vo:b,Sn:c})};
EY.prototype.b=function(a,b){b=b||{};var c=_.Bj().toString(36);b.src="apiv3";b.token=this.l;b.ts=c.substr(c.length-6);a.cad=DY(b);a=CY(a,"=","&");a=this.f+"?target=api&"+a;this.j.createElement("img").src=a;(b=_.C.__gm_captureCSI)&&b(a)};
GY.prototype.D=function(a,b){b=_.q(b)?b:1;this.b.isEmpty()&&window.setTimeout((0,_.u)(function(){var a=FY(this.B,this.l,this.f,this.j);a.t=_.Ra()-this.A;var b=this.b;_.vk(b);for(var e={},f=0;f<b.b.length;f++){var g=b.b[f];e[g]=b.f[g]}_.Ru(a,e);this.b.clear();this.m.b({ev:"api_maprft"},a)},this),500);b=this.b.get(a,0)+b;this.b.set(a,b)};IY.prototype.register=function(a,b){this.f.set(a,b)};KY.prototype.D=function(a){this.f[a]||(this.f[a]=!0,this.b.push(a),2>this.b.length&&_.nv(this,this.G,500))};
KY.prototype.G=function(){for(var a=FY(this.B,this.m,this.j,this.l),b=0,c;c=this.b[b];++b)a[c]="1";a.hybrid=+_.al();this.b.length=0;this.A.b({ev:"api_mapft"},a)};LY.prototype.l=function(){for(var a;a=this.j.removeAt(0);){var b=a.xn;a=a.timestamp-this.B;++this.f;this.b[b]||(this.b[b]=0);++this.b[b];if(20<=this.f&&!(this.f%5)){var c={};c.s=b;c.sr=this.b[b];c.tr=this.f;c.te=a;c.hc=this.m?"1":"0";this.A({ev:"api_services"},c)}}};MY.prototype.Yb=function(a){a=_.Jc(a);this.G[a]||(this.G[a]=new KY(this.b,this.D,this.V,this.j,this.B));return this.G[a]};MY.prototype.ja=function(a){a=_.Jc(a);this.A[a]||(this.A[a]=new GY(this.b,this.D,this.j,this.B));return this.A[a]};MY.prototype.f=function(a){if(this.l){this.m[a]||(this.m[a]=new _.mw,this.l.register(a,function(){return b.pb()}));var b=this.m[a];return b}};
MY.prototype.ma=function(a){if(this.l){this.H[a]||(this.H[a]=new AY,this.l.register(a,function(){return BY(b)}));var b=this.H[a];return b}};var NY=new MY;_.Wd("stats",NY);});