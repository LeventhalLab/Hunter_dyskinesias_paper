function plotCylData_control_limb(controlData_limb)
  
 % plots bar graph of day 10 in the reaching chamber vs day 10 post-reaching cylinder
  % limb AIMs for control rats 

    avgControlData = NaN(1,1);
    avgControlData(1,:) = nanmean(controlData_limb(:,1));
    avgControlData(2,:) = nanmean(controlData_limb(:,2));
    
    %plots reaching chamber 
    cylPlot5 = bar(1,avgControlData(1,:),'LineWidth',1);
    hold on;
    %plots cylinder 
    cylPlot6 = bar(2,avgControlData(2,:),'LineWidth',1);
    xticklabels({'Reaching Chamber','Cylinder'})
    xlabel('Physical Context')
    ylabel('Day 10 Limb AIMs Score')
        hold on

    cylPlot5(1).FaceColor = [.45 .63 .76];
    cylPlot5(1).EdgeColor = [0 0 0];
    cylPlot6(1).FaceColor = [.64 .64 .82];
    cylPlot6(1).EdgeColor = [0 0 0];

stdControlData = NaN(1,2);
stdControlData(:,1) = nanstd(controlData_limb(:,1))./sqrt(3);
stdControlData(:,2) = nanstd(controlData_limb(:,2))./sqrt(3);

er5 = errorbar(avgControlData(1,:),stdControlData(:,1));
er6 = errorbar(2,avgControlData(2,:),stdControlData(:,2));
er5.Color = [0 0 0];                            
er5.LineStyle = 'none';
er5.LineWidth = 1;
er6.Color = [0 0 0];                            
er6.LineStyle = 'none';
er6.LineWidth = 1;


box off
set(gca,'ylim',[0 4]);
set(gca,'ytick',[0:4]);
set(gca,'xtick',[1 2]);
set(gca,'xlim',[0 3]);

% plot individual data
indivColor = [.65 .65 .65];
for i_context = 1:2
    xVals = [1, 2];
    for i_rat = 1:3
        plot(xVals,controlData_limb(i_rat,:),'Color',indivColor,'LineWidth',1)
    end
end 

    
    