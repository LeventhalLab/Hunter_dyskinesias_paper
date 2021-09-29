% set figure panel properties
figProps.m = 3;
figProps.n = 4;

figProps.colWidths = [.5 .5 .5 .5;.5 .5 .5 .5; .5 .5 .5 .5]; % m x n (.5 = .5 of the panelwidth)
figProps.rowHeights = [1 1 1;1 1 1;1 1 1; 1 1 1]; % n x m

figProps.panelWidth = ones(1,figProps.n)*8; %8 cm
figProps.panelHeight = ones(1,figProps.m)*4;

figProps.colSpace = [1 1 1;1 1 1;1 1 1]'; % m x n-1;
figProps.rowSpace = [1 1;1 1; 1 1; 1 1]'; % n x m - 1;

figProps.colSpacing = figProps.colSpace .* (ones(figProps.n-1,1) * .5);
figProps.rowSpacing = figProps.rowSpace .* (ones(figProps.m-1,1) * .4);

figProps.width = 20.7; %full figure size
figProps.height = 22;

figProps.topMargin = 3; 
figProps.leftMargin = .3;

[h_fig,h_axes] = createFigPanels7(figProps); 
% create figure panels

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% % row 1, col 1: plot global aims over sessions (primary during)
axes(h_axes(1,1))
plotGlobalAimsOverSessions_duringglobal(avgAimsData);
set(gca,'XTickLabels',{' '})
set(gca,'xlabel',[])


%text(3,.75,'Global','FontWeight','bold')

% % row 1, col 2: plot axial aims over sessions (primary during)
axes(h_axes(2,1))
plotGlobalAimsOverSessions_duringlimb(avgAimsData);
set(gca,'XTickLabels',{' '})
set(gca,'xlabel',[])
%text(3.25,.75,'Axial','FontWeight','bold')

% % row 1, col 3: plot limb aims over sessions (primary during)
axes(h_axes(3,1))
plotGlobalAimsOverSessions_duringaxial(avgAimsData);
set(gca,'xlabel',[])
%text(3.25,.75,'Limb','FontWeight','bold')

% % row 2, col 1: plot global aims over sessions (between)
axes(h_axes(1,2))
plotGlobalAimsOverSessions_betweenglobal(avgAimsData);
set(gca,'XTickLabels',{' '})
set(gca,'xlabel',[])
set(gca,'ylabel',[])

% % row 2, col 2: plot limb aims over sessions (between)
axes(h_axes(2,2))
plotGlobalAimsOverSessions_betweenlimb(avgAimsData);
set(gca,'XTickLabels',{' '})
set(gca,'xlabel',[])
set(gca,'ylabel',[])

% % row 2, col 3: plot axial aims over sessions (between)
axes(h_axes(3,2))
plotGlobalAimsOverSessions_betweenaxial(avgAimsData);
set(gca,'xlabel',[])
set(gca,'ylabel',[])

% % row 3, col 1: plot global aims over sessions (control)
axes(h_axes(1,3))
plotGlobalAimsOverSessions_controlglobal(avgAimsData);
set(gca,'XTickLabels',{' '})
set(gca,'xlabel',[])
set(gca,'ylabel',[])

% % row 3, col 2: plot limb aims over sessions (control)
axes(h_axes(2,3))
plotGlobalAimsOverSessions_controllimb(avgAimsData);
set(gca,'XTickLabels',{' '})
set(gca,'xlabel',[])
set(gca,'ylabel',[])

% % row 3, col 3: plot axial aims over sessions (control)
axes(h_axes(3,3))
plotGlobalAimsOverSessions_controlaxial(avgAimsData);
set(gca,'xlabel',[])
set(gca,'ylabel',[])


% add labels
h_figAxis = createFigAxes(h_fig);
axes(h_figAxis);

figlabelTxtSz = 12;
txtSz = 10;

text(.55,.97,'Control','FontSize',figlabelTxtSz,'FontWeight','bold')
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



