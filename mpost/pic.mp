input macros
input hatching

verbatimtex
%&latex
\documentclass[oneside]{book}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
linecap:=butt;
linejoin:=mitered;

outputformat := "eps";

beginfig(10)
save u,p;
u:=.7cm;
path p[];

z.o=origin;
z.e=(1,0)*u;
z.t=z.e zscaled (1,sqrt(2));
z.b=z.t yscaled -1;
z.r=(sqrt(3),0)*u;
z.l=-z.r;
z.rr=(2,0)*u;

p1=arc(z.t,z.l,z.b);
p2=z.b{z.b zscaled(0,1)}..z.rr..{z.t zscaled(0,1)}z.t;
p3=arc(z.t,z.r,z.b);

fill p1--p2--cycle withcolor .8;
draw p1--p2--cycle;
draw p3 dashed evenly;


dOt z.o,2*z.e,z.b,z.t;

label.lft(btex {$(0,0)$} etex, z.o);
label.rt(btex {$(2,0)$} etex, 2*z.e);
label.urt(btex {$(1,\sqrt{2})$} etex, z.t);
label.lrt(btex {$(1,-\sqrt{2})$} etex, z.b);
endfig;

end
