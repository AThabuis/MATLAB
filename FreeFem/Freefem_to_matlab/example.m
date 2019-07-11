clear;
close all

[points seg tri]=importfilemesh('Gilgamesh.msh');

dat=importfiledata('Heat.bb');



figure1 = figure();
axes1 = axes('Parent',figure1);
xlim(axes1,[min(points(1,:)) max(points(1,:))]);
ylim(axes1,[min(points(2,:)) max(points(2,:))]);
box(axes1,'on');
hold(axes1,'all');
pdemesh(points,seg,tri) ;
    
 
 figure2 = figure();
 axes2 = axes('Parent',figure2);
 grid(axes2,'on');
 xlim(axes2,[min(points(1,:)) max(points(1,:))]);
 ylim(axes2,[min(points(2,:)) max(points(2,:))]);
 box(axes2,'off');
 hold(axes2,'all');
 pdeplot(points,seg,tri,'xydata',dat,'zdata',dat,'mesh','on','colormap','jet');
      view(axes2,[104 28]);


figure3 = figure();
axes3 = axes('Parent',figure3);
xlim(axes3,[min(points(1,:)) max(points(1,:))]);
ylim(axes3,[min(points(2,:)) max(points(2,:))]);
box(axes3,'on');
hold(axes3,'all');
pdeplot(points,seg,tri,'xydata',dat,'mesh','on','colormap','jet');


