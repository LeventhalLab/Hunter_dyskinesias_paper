 
% set figure panel properties
figProps.m = 4;
figProps.n = 2;

figProps.colWidths = [.5 .5;.5 .5; .5 .5; .5 .5]; % m x n (.5 = .5 of the panelwidth)
figProps.rowHeights = [1 1 1 1; 1 1 1 1]; % n x m

figProps.panelWidth = ones(1,figProps.n)*8; %8 cm
figProps.panelHeight = ones(1,figProps.m)*4;

figProps.colSpace = [1; 1; 1; 1]'; % m x n-1;
figProps.rowSpace = [1 1 1;1 1 1]'; % n x m - 1;

figProps.colSpacing = figProps.colSpace .* (ones(figProps.n-1,1) * .5);
figProps.rowSpacing = figProps.rowSpace .* (ones(figProps.m-1,1) * .4);

figProps.width = 20.7; %full figure size
figProps.height = 22;

figProps.topMargin = 1; 
figProps.leftMargin = .3;

[h_fig,h_axes] = createFigPanels7(figProps); 
% create figure panels

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%plot global AIMs reach vs non reach (primary during)
axes(h_axes(1,1))
plotAIMsReaching_global(duringReachAvgAIMs)
legend off
set(gca,'XTickLabels',{' '})
set(gca,'xlabel',[])

%plot limb AIMs reach vs non reach (primary during)
axes(h_axes(2,1))
plotAIMsReaching_limb(duringReachAvgAIMs)
legend('reaching','non-reaching');
set(gca,'XTickLabels',{' '})
set(gca,'xlabel',[])

%plot axial AIMs reach vs non reach (primary during)
axes(h_axes(3,1))
plotAIMsReaching_axial(duringReachAvgAIMs)
legend off
set(gca,'XTickLabels',{' '})
set(gca,'xlabel',[])

%plot global AIMs reach vs non reach (control)
axes(h_axes(1,2))
plotAIMsReaching_controlGlobal(controlReachAvgAIMs)
legend off
set(gca,'YTickLabels',{' '})
set(gca,'ylabel',[])
set(gca,'XTickLabels',{' '})
set(gca,'xlabel',[])

%plot limb AIMs reach vs non reach (control)
axes(h_axes(2,2))
plotAIMsReaching_controlLimb(controlReachAvgAIMs)
legend off
set(gca,'YTickLabels',{' '})
set(gca,'ylabel',[])
set(gca,'XTickLabels',{' '})
set(gca,'xlabel',[])

%plot axial AIMs reach vs non reach (control)
axes(h_axes(3,2))
plotAIMsReaching_controlAxial(controlReachAvgAIMs)
legend off
set(gca,'YTickLabels',{' '})
set(gca,'ylabel',[])
set(gca,'XTickLabels',{' '})
set(gca,'xlabel',[])

%plot global AIMs over sessions for between and during rats 
axes(h_axes(4,1))
plotGlobalAimsOverSessions_betweenandduringglobal(avgAimsData)
set(gca,'XTickLabels',{' '})
set(gca,'xlabel',[])

%plot between day 10 vs secondary during day 1 
axes(h_axes(4,2))
plotData_secondaryDuring(secondaryDuring);
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

text(.8,.97,'Global','FontSize',figlabelTxtSz,'FontWeight','bold')
text(.55,.97,'Limb','FontSize',figlabelTxtSz,'FontWeight','bold')
text(.37,.97,'Axial','FontSize',figlabelTxtSz,'FontWeight','bold')


text(.013,.87,'A','FontSize',figlabelTxtSz,'FontWeight','bold')
text(.013,.67,'B','FontSize',figlabelTxtSz,'FontWeight','bold')
text(.013,.47,'C','FontSize',figlabelTxtSz,'FontWeight','bold')

% print
fig=gcf;
fig.PaperUnits = 'centimeters';
fig.PaperPosition = [0 0 figProps.width figProps.height];
fig_pos = fig.PaperPosition;
fig.PaperSize = [fig_pos(3) fig_pos(4)];



