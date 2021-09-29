function plotCylData_during_global(duringData_global)

 % plots bar graph of day 10 in the reaching chamber vs day 10 post-reaching cylinder
  % global AIMs for primary during rats 
  
  
    avgDuringData = NaN(1,1);
    avgDuringData(1,:) = nanmean(duringData_global(:,1));
    avgDuringData(2,:) = nanmean(duringData_global(:,2));
 
    % plots reaching chamber 
    cylPlot = bar(1,avgDuringData(1,:),'LineWidth',1);
    hold on;
    % plots cylinder 
    cylPlot2 = bar(2,avgDuringData(2,:),'LineWidth',1);
    xticklabels({'Reaching Chamber','Cylinder'})
    xlabel('Physical Context')
    ylabel('Global AIMs Score')
        hold on

    cylPlot(1).FaceColor = [.45 .63 .76];
    cylPlot(1).EdgeColor = [0 0 0];
    cylPlot2(1).FaceColor = [.64 .64 .82];
    cylPlot2(1).EdgeColor = [0 0 0];



   

% find center of bars to plot error bars

stdDuringData = NaN(1,2);
stdDuringData(:,1) = nanstd(duringData_global(:,1))./sqrt(5);
stdDuringData(:,2) = nanstd(duringData_global(:,2))./sqrt(5);

er = errorbar(avgDuringData(1,:),stdDuringData(:,1));
er2 = errorbar(2,avgDuringData(2,:),stdDuringData(:,2));
er.Color = [0 0 0];                            
er.LineStyle = 'none';
er.LineWidth = 1;
er2.Color = [0 0 0];                            
er2.LineStyle = 'none';
er2.LineWidth = 1;


box off
set(gca,'ylim',[0 6.5]);
set(gca,'ytick',[0:6]);
set(gca,'xtick',[1 2]);
set(gca,'xlim',[0 3]);

% plot individual data
indivColor = [.65 .65 .65];
for i_context = 1:2
    xVals = [1, 2];
    for i_rat = 1:5
        plot(xVals,duringData_global(i_rat,:),'Color',indivColor,'LineWidth',1)
    end
end 

