%Define following factes

parent(tom,bob).
parent(pam,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

% Define following facts as the  relation of male and female
% Female -> pam,liz,pat,ann
% male -> tom,bob,jim


female(pam).
female(liz).
female(pat).
female(ann).

male(tom).
male(bob).
male(jim).

%7)Define the relation mother using parent and female
mother(X,Y):- parent(X,Y),female(X).

%8)Define the relation father using parent and female
father(X,Y):- parent(X,Y),male(X).

%9)Define the relation sister using parent and female
sister(X,Y):- parent(Z,X),parent(Z,Y),female(X),X\==Y.

%10)Define the relation brother using parent and female
brother(X,Y):- parent(Z,X),parent(Z,Y),male(X),X\==Y.

%11)Define the relation grandparent using parent
grandparent(X,Z):- parent(X,Y),parent(Y,Z).

%12)define relation grandfather using parent and male
grandfather(X,Z):- parent(X,Y),parent(Y,Z),male(X).

%13)define relation grandmother using parent and female
grandmother(X,Z):- parent(X,Y),parent(Y,Z),female(X).

%14)define relation grandchild using parent
grandchild(X,Y):- parent(Y,Z),parent(Z,X).

%15)define relation grandson using parent
grand_son(X,Y):- parent(Y,Z),parent(Z,X),male(X).

%16)define relation grand daughter using parent
grand_daughter(X,Y):- parent(Y,Z),parent(Z,X),female(Y).

%17)Everybody who has a child is happy
happy(X):- parent(X,_).

%18)For all X, if X has a child who has a sister then X has two children
two_children(X):- parent(X,Y),parent(X,Z),sister(Y,Z).

% 19)define the relation aunt(X,Y) in terms of the relations parent and
% sister
aunt(X,Y):- sister(X,Z),parent(Z,Y).

%20)define the relation uncle using the appropriate relations
uncle(X,Y):- brother(X,Z),parent(Z,Y).
