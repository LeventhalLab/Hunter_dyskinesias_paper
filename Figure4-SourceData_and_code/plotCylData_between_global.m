    
function plotCylData_between_global(betweenData_global)

  % plots bar graph of day 10 in the reaching chamber vs day 10 post-reaching cylinder
  % global AIMs for between rats 
   
    avgBetweenData = NaN(1,1);
    avgBetweenData(1,:) = nanmean(betweenData_global(:,1));
    avgBetweenData(2,:) = nanmean(betweenData_global(:,2));
    
    % plots reaching chamber 
    cylPlot3 = bar(1,avgBetweenData(1,:),'LineWidth',1);
    hold on;
    % plots cylinder 
    cylPlot4 = bar(2,avgBetweenData(2,:),'LineWidth',1);
    xticklabels({'Reaching Chamber','Cylinder'})
    xlabel('Physical Context')
    ylabel('Day 10 Global AIMs Score')
        hold on

    cylPlot3(1).FaceColor = [.45 .63 .76];
    cylPlot3(1).EdgeColor = [0 0 0];
    cylPlot4(1).FaceColor = [.64 .64 .82];
    cylPlot4(1).EdgeColor = [0 0 0];

stdBetweenData = NaN(1,2);
stdBetweenData(:,1) = nanstd(betweenData_global(:,1))./sqrt(6);
stdBetweenData(:,2) = nanstd(betweenData_global(:,2))./sqrt(6);

er3 = errorbar(avgBetweenData(1,:),stdBetweenData(:,1));
er4 = errorbar(2,avgBetweenData(2,:),stdBetweenData(:,2));
er3.Color = [0 0 0];                            
er3.LineStyle = 'none';
er3.LineWidth = 1;
er4.Color = [0 0 0];                            
er4.LineStyle = 'none';
er4.LineWidth = 1;


box off
set(gca,'ylim',[0 6.5]);
set(gca,'ytick',[0:6]);
set(gca,'xtick',[1 2]);
set(gca,'xlim',[0 3]);

% plot individual data
indivColor = [.65 .65 .65];
for i_context = 1:2
    xVals = [1, 2];
    for i_rat = 1:6
        plot(xVals,betweenData_global(i_rat,:),'Color',indivColor,'LineWidth',1)
    end
end 


    