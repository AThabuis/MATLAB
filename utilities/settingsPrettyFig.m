function settingsPrettyFig(fSize)
if nargin==0, fSize=12; end 

hf = gcf;
set(gcf,'renderer','Painters') %% Change the renderer to keep a high resolution despite the large amount of data

allAxesInFigure = findall(hf,'type','axes');
hLegend = findobj(hf, 'Type', 'Legend');

set(hf,'color','w'); % set figure background to white

for ax = allAxesInFigure'
set(ax.Title,'Interpreter', 'latex', 'fontsize',fSize)
set(ax,'TickLabelInterpreter', 'latex', 'fontsize',fSize)
set(ax.XLabel,'Interpreter', 'latex', 'fontsize',fSize)
set(ax.YLabel,'Interpreter', 'latex', 'fontsize',fSize)
set(ax.ZLabel,'Interpreter', 'latex', 'fontsize',fSize)
set(ax.Colorbar,'TickLabelInterpreter','latex','fontsize',fSize)
if(isgraphics(hLegend))
    set(hLegend, 'Interpreter', 'latex','Location','best');
end

end
% function settingsPrettyFig(fSize)
% if nargin==0, fSize=12; end 
% 
% ax = gca;
% hf = gcf;
% hLegend = findobj(hf, 'Type', 'Legend');
% 
% set(hf,'color','w'); % set figure background to white
% 
% set(ax.Title,'Interpreter', 'latex', 'fontsize',fSize)
% set(ax,'TickLabelInterpreter', 'latex', 'fontsize',fSize)
% set(ax.XLabel,'Interpreter', 'latex', 'fontsize',fSize)
% set(ax.YLabel,'Interpreter', 'latex', 'fontsize',fSize)
% set(ax.ZLabel,'Interpreter', 'latex', 'fontsize',fSize)
% if(isgraphics(hLegend))
%     set(hLegend, 'Interpreter', 'latex','Location','best');
% end

% end
