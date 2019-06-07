Q=[1;2;1];% parameters
x=[1 1 1;1.35 1.40 1.45;1.82 1.96 2.10];% height is in meters 
Y=[28;32;38];%weight in kgs
X=[1;1.5;2.25]; % enter the height and in next enter row height^2
L=0.07;
m=3;
% this algorithm guess the normal weight based upon the height 
for i=[1:50000],
  E=((Q')*x);
  O=((E'-Y)'*(x'));
  Q=Q-(L/m)*(O)';
end
((Q')*X)

