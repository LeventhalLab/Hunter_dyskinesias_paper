% set figure panel properties
figProps.m = 3;
figProps.n = 3;

figProps.colWidths = [.5 .5 .5;.5 .5 .5; .5 .5 .5]; % m x n (.5 = .5 of the panelwidth)
figProps.rowHeights = [1 1 1;1 1 1;1 1 1]; % n x m

figProps.panelWidth = ones(1,figProps.n)*8; %8 cm
figProps.panelHeight = ones(1,figProps.m)*4;

figProps.colSpace = [1 1;1 1; 1 1]'; % m x n-1;
figProps.rowSpace = [1 1;1 1; 1 1]'; % n x m - 1;

figProps.colSpacing = figProps.colSpace .* (ones(figProps.n-1,1) * .5);
figProps.rowSpacing = figProps.rowSpace .* (ones(figProps.m-1,1) * .4);

figProps.width = 20.7; %full figure size
figProps.height = 22;

figProps.topMargin = 3; 
figProps.leftMargin = .3;

[h_fig,h_axes] = createFigPanels7(figProps); 
% create figure panels

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% % row 1, col 1: plot global aims during reaching (primary during)
axes(h_axes(1,1))
plotCylData_during_global(duringData_global)
legend('reaching chamber','cylinder')
set(gca,'XTickLabels',{' '})
set(gca,'xlabel',[])

% % row 1, col 2: plot axial aims during reaching (between)
axes(h_axes(1,2))
plotCylData_between_global(betweenData_global)
legend off
set(gca,'YTickLabels',{' '})
set(gca,'ylabel',[])
set(gca,'XTickLabels',{' '})
set(gca,'xlabel',[])

% % row 1, col 3: plot global aims during reaching (control) 
axes(h_axes(1,3))
plotCylData_control_global(controlData_global)
legend off
set(gca,'YTickLabels',{' '})
set(gca,'ylabel',[])
set(gca,'XTickLabels',{' '})
set(gca,'xlabel',[])

% % row 2, col 1: plot limb aims during reaching (primary during) 
axes(h_axes(2,1))
plotCylData_during_limb(duringData_limb)
legend off
set(gca,'XTickLabels',{' '})
set(gca,'xlabel',[])

% % row 2, col 2: plot limb aims during reaching (between) 
axes(h_axes(2,2))
plotCylData_between_limb(betweenData_limb)
legend off
set(gca,'YTickLabels',{' '})
set(gca,'ylabel',[])
set(gca,'XTickLabels',{' '})
set(gca,'xlabel',[])

% % row 2, col 3: plot limb aims during reaching (control) 
axes(h_axes(2,3))
plotCylData_control_limb(controlData_limb)
legend off
set(gca,'YTickLabels',{' '})
set(gca,'ylabel',[])
set(gca,'XTickLabels',{' '})
set(gca,'xlabel',[])

% % row 3, col 1: plot axial aims during reaching (primary during) 
axes(h_axes(3,1))
plotCylData_during_axial(duringData_axial)
legend off
set(gca,'XTickLabels',{' '})
set(gca,'xlabel',[])

% % row 3, col 2: plot axial aims during reaching (between) 
axes(h_axes(3,2))
plotCylData_between_axial(betweenData_axial)
legend off
set(gca,'YTickLabels',{' '})
set(gca,'ylabel',[])
set(gca,'XTickLabels',{' '})
set(gca,'xlabel',[])

% % row 3, col 3: plot axial aims during reaching (control) 
axes(h_axes(3,3))
plotCylData_control_axial(controlData_axial)
legend off
set(gca,'YTickLabels',{' '})
set(gca,'ylabel',[])
set(gca,'XTickLabels',{' '})
set(gca,'xlabel',[])

% add labels
h_figAxis = createFigAxes(h_fig);
axes(h_figAxis);

figlabelTxtSz = 12;
txtSz = 10;

text(.8,.97,'Control','FontSize',figlabelTxtSz,'FontWeight','bold')
text(.37,.97,'Between','FontSize',figlabelTxtSz,'FontWeight','bold')
text(.14,.97,'During','FontSize',figlabelTxtSz,'FontWeight','bold')

text(.013,.87,'A','FontSize',figlabelTxtSz,'FontWeight','bold')
text(.013,.67,'B','FontSize',figlabelTxtSz,'FontWeight','bold')
text(.013,.47,'C','FontSize',figlabelTxtSz,'FontWeight','bold')

% print
fig=gcf;
fig.PaperUnits = 'centimeters';
fig.PaperPosition = [0 0 figProps.width figProps.height];
fig_pos = fig.PaperPosition;
fig.PaperSize = [fig_pos(3) fig_pos(4)];



