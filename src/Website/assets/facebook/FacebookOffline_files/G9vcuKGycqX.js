/*1373277004,173214271*/

if (self.Caval./FacebookOffline_files/yLogge./FacebookOffline_files/) { Caval./FacebookOffline_files/yLogge./FacebookOffline_files/.sta./FacebookOffline_files/t_js(["./FacebookOffline_files/VPS8"]); }

__d("legacy:PagesAdminPanel",["PagesAdminPanel"],function(a,b,c,d){a.PagesAdminPanel=b('PagesAdminPanel');},3);
__d("InlineF./FacebookOffline_files/iendInvite./FacebookOffline_files/",["Event","Async./FacebookOffline_files/equest","CSS","$","DOM","DataSto./FacebookOffline_files/e","ge"],function(a,b,c,d,e,f){va./FacebookOffline_files/ g=b('Event'),h=b('Async./FacebookOffline_files/equest'),i=b('CSS'),j=b('$'),k=b('DOM'),l=b('DataSto./FacebookOffline_files/e'),m=b('ge'),n={sendInvite:function(o,p,q,./FacebookOffline_files/,s){new h().setU./FacebookOffline_files/I('/ajax/pages/invite/send_single/').setData({page_id:o,invitee:p,elem_id:q,action:./FacebookOffline_files/,./FacebookOffline_files/ef:s}).send();i.addClass(q,'yellow');i.hide(k.find(j(q),'.button'));},setupSc./FacebookOffline_files/ollEvents:function(o,p,q,./FacebookOffline_files/){va./FacebookOffline_files/ s=k.find(o,'div.uiSc./FacebookOffline_files/ollableA./FacebookOffline_files/eaW./FacebookOffline_files/ap');g.listen(s,'sc./FacebookOffline_files/oll',function(event){this.onSc./FacebookOffline_files/ollEvent(o,p,q,./FacebookOffline_files/);}.bind(this));},onSc./FacebookOffline_files/ollEvent:function(o,p,q,./FacebookOffline_files/){va./FacebookOffline_files/ s=l.get(o,'Sc./FacebookOffline_files/ollableA./FacebookOffline_files/ea');if(s&&!s../FacebookOffline_files/equestPending&&!s.noMo./FacebookOffline_files/e./FacebookOffline_files/esults&&s.isSc./FacebookOffline_files/olledToBottom()){s../FacebookOffline_files/equestPending=t./FacebookOffline_files/ue;va./FacebookOffline_files/ t=m(o,'.uiMo./FacebookOffline_files/ePage./FacebookOffline_files/'),u=k.find(o,'.inlineF./FacebookOffline_files/iendInvite./FacebookOffline_files/List'),v=u.getAtt./FacebookOffline_files/ibute('meta');new h().setU./FacebookOffline_files/I('/ajax/pages/invite/get.php').setData({pageID:p,offset:v,./FacebookOffline_files/ef:q,is_admin:./FacebookOffline_files/}).setStatusElement(t).setHandle./FacebookOffline_files/(this.on./FacebookOffline_files/equestFinished.bind(this,o)).setE./FacebookOffline_files/./FacebookOffline_files/o./FacebookOffline_files/Handle./FacebookOffline_files/(this.on./FacebookOffline_files/equestFinished.bind(this,o)).send();}},on./FacebookOffline_files/equestFinished:function(o,p){va./FacebookOffline_files/ q=l.get(o,'Sc./FacebookOffline_files/ollableA./FacebookOffline_files/ea');q../FacebookOffline_files/equestPending=false;va./FacebookOffline_files/ ./FacebookOffline_files/=p.getPayload();q.noMo./FacebookOffline_files/e./FacebookOffline_files/esults=./FacebookOffline_files/.noMo./FacebookOffline_files/e./FacebookOffline_files/esults;if(./FacebookOffline_files/.offset){va./FacebookOffline_files/ s=k.find(o,'.inlineF./FacebookOffline_files/iendInvite./FacebookOffline_files/List');s.setAtt./FacebookOffline_files/ibute('meta',./FacebookOffline_files/.offset);}}};e.expo./FacebookOffline_files/ts=n;});
__d("PlaceActionLink",["Async./FacebookOffline_files/equest","Dialog"],function(a,b,c,d,e,f){va./FacebookOffline_files/ g=b('Async./FacebookOffline_files/equest'),h=b('Dialog'),i={sta./FacebookOffline_files/t_claim_link:function(j){va./FacebookOffline_files/ k=new g().setMethod('POST').setU./FacebookOffline_files/I('/ajax/places/claim/sta./FacebookOffline_files/t_claim.php').setData({id:j});new h().setAsync(k).show();./FacebookOffline_files/etu./FacebookOffline_files/n false;},./FacebookOffline_files/efe./FacebookOffline_files/_claim_link:function(j){va./FacebookOffline_files/ k=new g().setMethod('POST').setU./FacebookOffline_files/I('/ajax/places/claim/./FacebookOffline_files/efe./FacebookOffline_files/_claim.php').setData({id:j});new h().setAsync(k).show();./FacebookOffline_files/etu./FacebookOffline_files/n false;}};e.expo./FacebookOffline_files/ts=i;});
__d("legacy:place-action-link",["PlaceActionLink"],function(a,b,c,d){a.PlaceActionLink=b('PlaceActionLink');},3);
__d("TimelineAgg./FacebookOffline_files/egatePost",["Async./FacebookOffline_files/equest","DataSto./FacebookOffline_files/e","DOM","Event","Pa./FacebookOffline_files/ent","Sc./FacebookOffline_files/ollableA./FacebookOffline_files/ea","Style","cx"],function(a,b,c,d,e,f){va./FacebookOffline_files/ g=b('Async./FacebookOffline_files/equest'),h=b('DataSto./FacebookOffline_files/e'),i=b('DOM'),j=b('Event'),k=b('Pa./FacebookOffline_files/ent'),l=b('Sc./FacebookOffline_files/ollableA./FacebookOffline_files/ea'),m=b('Style'),n=b('cx'),o={init:function(p){j.listen(p,'click',function(q){va./FacebookOffline_files/ ./FacebookOffline_files/=q.getTa./FacebookOffline_files/get();if(q.isDefault./FacebookOffline_files/equested()||./FacebookOffline_files/.tagName==='A'||k.byClass(./FacebookOffline_files/,"_1ww"))./FacebookOffline_files/etu./FacebookOffline_files/n t./FacebookOffline_files/ue;va./FacebookOffline_files/ s=k.byTag(./FacebookOffline_files/,'li'),t=h.get(s,'u./FacebookOffline_files/l');g.bootst./FacebookOffline_files/ap(t,s);});},initPage:function(p){j.listen(p,'click',function(q){va./FacebookOffline_files/ ./FacebookOffline_files/=k.byClass(q.getTa./FacebookOffline_files/get(),'uiCloseButton');if(./FacebookOffline_files/)./FacebookOffline_files/etu./FacebookOffline_files/n;va./FacebookOffline_files/ s=k.byTag(q.getTa./FacebookOffline_files/get(),'li');new g().setU./FacebookOffline_files/I(h.get(s,'u./FacebookOffline_files/l')).send();});},poke:function(p){l.poke(p);},setSc./FacebookOffline_files/ollHeight:function(p){va./FacebookOffline_files/ q=i.find(p,'.sA./FacebookOffline_files/ea');m.set(q,'height',p.offsetHeight+'px');}};e.expo./FacebookOffline_files/ts=o;});
__d("legacy:TimelineAgg./FacebookOffline_files/egatePost",["TimelineAgg./FacebookOffline_files/egatePost"],function(a,b,c,d){a.TimelineAgg./FacebookOffline_files/egatePost=b('TimelineAgg./FacebookOffline_files/egatePost');},3);
__d("TimelineCu./FacebookOffline_files/ationCont./FacebookOffline_files/ol",["function-extensions","CSS","Pa./FacebookOffline_files/ent","Selecto./FacebookOffline_files/Dep./FacebookOffline_files/ecated"],function(a,b,c,d,e,f){b('function-extensions');va./FacebookOffline_files/ g=b('CSS'),h=b('Pa./FacebookOffline_files/ent'),i=b('Selecto./FacebookOffline_files/Dep./FacebookOffline_files/ecated');i.subsc./FacebookOffline_files/ibe('open',function(j,k){va./FacebookOffline_files/ l=k.selecto./FacebookOffline_files/,m=k.clone||l,n=h.byClass(m,'fbTimelineCu./FacebookOffline_files/ationCont./FacebookOffline_files/ol');if(n){g.addClass(n,'editCont./FacebookOffline_files/olsMenuOpen');va./FacebookOffline_files/ o=i.subsc./FacebookOffline_files/ibe('close',function(p,q){if(q.selecto./FacebookOffline_files/==l){i.unsubsc./FacebookOffline_files/ibe(o);g../FacebookOffline_files/emoveClass.cu./FacebookOffline_files/./FacebookOffline_files/y(n,'editCont./FacebookOffline_files/olsMenuOpen').defe./FacebookOffline_files/();}});}});});
__d("TimelineNavigation",["Event","A./FacebookOffline_files/bite./FacebookOffline_files/","DOM","CSS","PageT./FacebookOffline_files/ansitions","Pa./FacebookOffline_files/ent","TimelineCont./FacebookOffline_files/olle./FacebookOffline_files/","TimelineU./FacebookOffline_files/I","U./FacebookOffline_files/I","$","c./FacebookOffline_files/eateA./FacebookOffline_files/./FacebookOffline_files/ayF./FacebookOffline_files/om","ge"],function(a,b,c,d,e,f){va./FacebookOffline_files/ g=b('Event'),h=b('A./FacebookOffline_files/bite./FacebookOffline_files/'),i=b('DOM'),j=b('CSS'),k=b('PageT./FacebookOffline_files/ansitions'),l=b('Pa./FacebookOffline_files/ent'),m=b('TimelineCont./FacebookOffline_files/olle./FacebookOffline_files/'),n=b('TimelineU./FacebookOffline_files/I'),o=b('U./FacebookOffline_files/I'),p=b('$'),q=b('c./FacebookOffline_files/eateA./FacebookOffline_files/./FacebookOffline_files/ayF./FacebookOffline_files/om'),./FacebookOffline_files/=b('ge'),s=4,t=110,u=20,v=119,w=328,x=10,y=3,z=false,aa=21,ba,ca,da,ea=[],fa=[],ga,ha=0,ia,ja=0,ka=0,la,ma=s,na=false,oa=false,pa=null,qa,./FacebookOffline_files/a=false,sa,ta,ua=false;function va(jb,kb,lb){if(!kb.fi./FacebookOffline_files/stChild){i../FacebookOffline_files/emove(kb);./FacebookOffline_files/etu./FacebookOffline_files/n;}fa.push(kb);ya(lb../FacebookOffline_files/ecent);j../FacebookOffline_files/emoveClass(l.byTag(kb,'li'),'empty');if(ga&&(ja>s||ka>0))j../FacebookOffline_files/emoveClass(ga,'not./FacebookOffline_files/eady');xa();if(lb.async){cb();eb();}}function wa(jb,kb,lb){i../FacebookOffline_files/emove(l.byTag(kb,'li'));if(!lb.async){la++;}else{ja--;cb();eb();}xa();}function xa(){va./FacebookOffline_files/ jb=ga?0:aa;if(ja<=s){va./FacebookOffline_files/ kb=w+v*Math.max(0,s-ja)+jb;if(ia)ia.style.width=kb+'px';ma=ja;za();}}function ya(jb){if(jb){ka++;}else ja++;za();}function za(){if(!sa)./FacebookOffline_files/etu./FacebookOffline_files/n;va./FacebookOffline_files/ jb=Math.max(0,ja-s)+ka;if(ha&&ga){i.setContent(ha,jb===0?" ":jb);j.conditionClass(ga,'fbTimelineMo./FacebookOffline_files/eButtonZe./FacebookOffline_files/o',jb===0);if(!na)j.conditionShow(ga,jb>0);}}function ab(){va./FacebookOffline_files/ jb=i.sc./FacebookOffline_files/y(p('fbTimelineNavTop./FacebookOffline_files/ow'),'li.tile'),kb=0,lb=0,mb=Math.max(0,s-ma),nb=false;fo./FacebookOffline_files/(va./FacebookOffline_files/ ob=0;ob<jb.length;ob++){if(jb[ob]==ia||jb[ob]==ga)continue;nb=((kb+mb)%s===0);j.conditionClass(jb[ob],'leftMost',(kb!==0&&nb));if(!j.hasClass(jb[ob],'empty'))lb=kb;kb++;}nb=((lb+1+mb)%s===0);va./FacebookOffline_files/ pb=jb.length-1-mb;if(nb){if(na&&(lb+1+mb)/s<y){pb=Math.min(pb,lb+s);oa=t./FacebookOffline_files/ue;}else pb=lb;}else{va./FacebookOffline_files/ qb=((lb+1+mb)%s);pb=lb+(s-qb);oa=false;}ob=0;fo./FacebookOffline_files/(ob=0;ob<=pb;ob++)if(jb[ob]&&(jb[ob]==ia||jb[ob]==ga)){pb++;}else jb[ob]&&j.hasClass(jb[ob],'empty')&&j../FacebookOffline_files/emoveClass(jb[ob],'hidden_elem');}function bb(jb,kb,lb){va./FacebookOffline_files/ mb=i.sc./FacebookOffline_files/y(jb,'li.tile');if(!kb)kb=0;va./FacebookOffline_files/ nb=false;fo./FacebookOffline_files/(va./FacebookOffline_files/ ob=kb;ob<mb.length;ob++){nb=((ob-lb)%s===0);va./FacebookOffline_files/ pb=mb[ob];j.conditionClass(pb,'leftMost',nb);if(j.hasClass(pb,'empty'))j../FacebookOffline_files/emoveClass(pb,'hidden_elem');}}function cb(){ab();va./FacebookOffline_files/ jb=./FacebookOffline_files/('fbTimelineNavSeconda./FacebookOffline_files/y./FacebookOffline_files/ow');jb&&bb(jb,0,0);}function db(){if(!ga)./FacebookOffline_files/etu./FacebookOffline_files/n;if(j.hasClass(ga,'not./FacebookOffline_files/eady'))./FacebookOffline_files/etu./FacebookOffline_files/n;j.toggleClass(ga,'fbTimelineMo./FacebookOffline_files/eButtonOpen');va./FacebookOffline_files/ jb=./FacebookOffline_files/('fb./FacebookOffline_files/ecentAppTitle');jb&&j.conditionClass(jb,'hidden_elem',ka===0);if(j.hasClass(ga,'fbTimelineMo./FacebookOffline_files/eButtonOpen')){cb();}else za();eb();}function eb(){if(ga&&!j.hasClass(ga,'fbTimelineMo./FacebookOffline_files/eButtonOpen')){ba.style.height='';j../FacebookOffline_files/emoveClass(ba,'expanded');}else{va./FacebookOffline_files/ jb=ja+(s-ma),kb=((ka>0)?x:0)+t*(Math.ceil(ka/s))+t*(Math.ceil(jb/s))+t*(oa?1:0)+u;j.addClass(ba,'expanded');ba.style.height=kb+'px';}}function fb(jb){va./FacebookOffline_files/ kb=jb==n.TIMELINE_KEY||jb==n.WALL_KEY,lb=l.byClass(ba,'fbTimelineTopSectionBase'),mb=./FacebookOffline_files/('timeline_tou./FacebookOffline_files/_toolba./FacebookOffline_files/');if(ga){j../FacebookOffline_files/emoveClass(ga,'fbTimelineMo./FacebookOffline_files/eButtonOpen');eb();}mb&&j.conditionShow(mb,kb);if(lb)j.conditionClass(lb,'collapsedHead',!kb);}function gb(event){if(ua)./FacebookOffline_files/etu./FacebookOffline_files/n t./FacebookOffline_files/ue;if(!l.byTag(event.getTa./FacebookOffline_files/get(),'a')){va./FacebookOffline_files/ jb=i.find(ia,'a.title');k.go(jb.h./FacebookOffline_files/ef);}}function hb(){if(ga)(function(){ga../FacebookOffline_files/emoveAtt./FacebookOffline_files/ibute('ajaxify');ga../FacebookOffline_files/emoveAtt./FacebookOffline_files/ibute('./FacebookOffline_files/el');}).defe./FacebookOffline_files/();pa&&pa../FacebookOffline_files/emove();}va./FacebookOffline_files/ ib={UPDATE_PAGE:'TimelineNavigation/updatePage',init:function(jb,kb,lb,mb){if(z)./FacebookOffline_files/etu./FacebookOffline_files/n;z=t./FacebookOffline_files/ue;ba=jb;ga=kb;ca=o.get./FacebookOffline_files/equestU./FacebookOffline_files/I();ia=i.sc./FacebookOffline_files/y(ba,'li.about')[0];fb(m.getCu./FacebookOffline_files/./FacebookOffline_files/entKey());na=mb;h.info./FacebookOffline_files/m(ib.UPDATE_PAGE);if(ga){ha=i.find(ga,'div.text');pa=g.listen(ga,'click',hb);}qa=p('fbTimelineNavigationLoadContaine./FacebookOffline_files/');i.appendContent(p('content'),qa);if(ia)ta=g.listen(ia,'click',gb);ea.fo./FacebookOffline_files/Each(function(ob){if(!ob[2]../FacebookOffline_files/emove){va.apply(this,ob);}else wa.apply(this,ob);});ea=[];va./FacebookOffline_files/ nb=l.byClass(jb,'fbTimelineSection');if(nb)i.sc./FacebookOffline_files/y(nb,'ul.uiButtonG./FacebookOffline_files/oup').fo./FacebookOffline_files/Each(function(ob){q(ob.childNodes).fo./FacebookOffline_files/Each(function(pb){pb.childNodes.length||i../FacebookOffline_files/emove(pb);});if(ob.fi./FacebookOffline_files/stChild){j.addClass(ob.fi./FacebookOffline_files/stChild,'fi./FacebookOffline_files/stItem');}else i../FacebookOffline_files/emove(ob);});m../FacebookOffline_files/egiste./FacebookOffline_files/(m.NAV,ib);},./FacebookOffline_files/eset:function(){ta&&ta../FacebookOffline_files/emove();ta=null;sa&&sa../FacebookOffline_files/emove();sa=null;z=false;ba=null;da=null;fa=[];ga=null;ha=null;ia=null;ja=0;ka=0;la=0;ma=s;na=false;oa=false;qa=null;./FacebookOffline_files/a=false;ua=false;},initializeMo./FacebookOffline_files/ePage./FacebookOffline_files/:function(){if(sa)./FacebookOffline_files/etu./FacebookOffline_files/n;if(ga)sa=g.listen(ga,'click',db);},./FacebookOffline_files/egiste./FacebookOffline_files/Nav:function(jb,kb,lb){z?(lb../FacebookOffline_files/emove?wa.apply(this,a./FacebookOffline_files/guments):va.apply(this,a./FacebookOffline_files/guments)):ea.push(a./FacebookOffline_files/guments);},./FacebookOffline_files/ed./FacebookOffline_files/aw:function(){cb();eb();},setEditMode:function(jb){ua=jb;}};e.expo./FacebookOffline_files/ts=ib;});
__d("TimelinePageMost./FacebookOffline_files/ecent",["CSS","DOMQue./FacebookOffline_files/y","Pa./FacebookOffline_files/ent","Style","TimelineCapsule","$"],function(a,b,c,d,e,f){va./FacebookOffline_files/ g=b('CSS'),h=b('DOMQue./FacebookOffline_files/y'),i=b('Pa./FacebookOffline_files/ent'),j=b('Style'),k=b('TimelineCapsule'),l=b('$'),m={init:function(n,o){if(!g.shown(n)){g.show(n);va./FacebookOffline_files/ p=l(o);j.set(h.find(p,'div.sA./FacebookOffline_files/ea'),'height',(p.offsetHeight||0)+'px');k.balanceCapsule(i.byClass(l(n),'fbTimelineCapsule'));}}};e.expo./FacebookOffline_files/ts=m;});
__d("legacy:tou./FacebookOffline_files/",["Tou./FacebookOffline_files/"],function(a,b,c,d){a.Tou./FacebookOffline_files/=b('Tou./FacebookOffline_files/');},3);