
[x, y, z]=sphere(50);
r=6.317;
surf(r*x, r*y, r*z);
axis equal
colormap ('winter')
surfc(x,y,z)
x1=0.40; y1=1; z1=0.15; txt1='\downarrow North Korea'; text(x1, y1, z1, txt1, 'FontSize', 20)
x2=0.35; y2=1; z2=0.45; txt1='\downarrow Russia'; text(x2, y2, z2, txt1, 'FontSize', 20)
x3=-0.25; y3=1; z3=-0.65; txt1='\downarrow Chile'; text(x3, y3, z3, txt1, 'FontSize', 20)
x4=0.45; y4=1; z4=-0.55; txt1='\downarrow Australia'; text(x4, y4, z4, txt1, 'FontSize', 20)
x5=0.20; y5=1; z5=0.00; txt1='\downarrow Japan'; text(x5, y5, z5, txt1, 'FontSize', 20)
x6=-0.25; y6=1; z6=0.30; txt1='\downarrow EE. UU.'; text(x6, y6, z6, txt1, 'FontSize', 20)
x7=0.95; y7=1; z7=-0.10; txt1='\downarrow India'; text(x7, y7, z7, txt1, 'FontSize', 20)
x8=-0.50; y8=1; z8=-0.20; txt1='\downarrow Brazil'; text(x8, y8, z8, txt1, 'FontSize', 20)
x9=-0.45; y9=1; z9=0.60; txt1='\downarrow Canada'; text(x9, y9, z9, txt1, 'FontSize', 20)
x10=0.90; y10=1; z10=0.20; txt1='\downarrow China'; text(x10, y10, z10, txt1, 'FontSize', 20)
x11=-0.30; y11=1; z11=0.05; txt1='\downarrow Mexico'; text(x11, y11, z11, txt1, 'FontSize', 20)
xlabel('X', 'FontSize', 12)
ylabel('Y', 'FontSize', 12)
zlabel('Z', 'FontSize', 12)
title('G.P.S: Spherical coordinates', 'FontSize', 15);