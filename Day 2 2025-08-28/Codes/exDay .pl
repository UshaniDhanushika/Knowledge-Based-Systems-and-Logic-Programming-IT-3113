%Define following factes

parent(tom,bob).
parent(pam,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).



%6)Who are Bob's parents?
%parent(X,bob).

%7)Who is a parent of Whom?
%parent(X,Y).

%8)Who is grandparent of Jim
%parent(X,Y),parent(Y,jim).

%9)Who are Tom's grand children
%parent(tom,Y),parent(Y,Z).

%10)Do Ann and Pat have a common parent?
%parent(X,ann),parent(X,pat).

%11) Do Ann and Tom have a common parent?
%parent(X,ann),parent(X,tom).

%12)Who is Pat's parent
%parent(Y,pat).

%13)Does Liz have a child
%parent(liz,X).

%14)Who is Pat's grandparent
%parent(Y,X),parent(X,pat).

%15) ? - parent(jim,X).
%16) ? - parent(X,jim).
%17) ? - parent(pam,X),parent(X,pat).
%18) ? - parent(pam,X),parent(X,Y),parent(Y,jim).

