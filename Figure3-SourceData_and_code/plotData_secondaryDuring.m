function plotData_secondaryDuring(secondaryDuring)
    % This function plots a bar graph of the average global AIMs scores for "between day 10" and "secondary during day 1" rats 

    % Creates data structure for between day 10 & secondary during day 1
    avgSecondaryDuringData = NaN(1,1);
    avgSecondaryDuringData(1,:) = nanmean(secondaryDuring.global(1,:)); % Between Day 10 
    avgSecondaryDuringData(2,:) = nanmean(secondaryDuring.global(2,:)); % Secondary During Day 1
    
    % Creates bar graph  
    cylPlot3 = bar(1,avgSecondaryDuringData(1,:),'LineWidth',1);
    hold on;
    cylPlot4 = bar(2,avgSecondaryDuringData(2,:),'LineWidth',1);
    ylabel('Global AIMs Score')
    hold on

    % Changes the color of the bar graphs 
    cylPlot3(1).FaceColor = [.42 .32 .64];
    cylPlot3(1).EdgeColor = [0 0 0];
    cylPlot4(1).FaceColor = [.458 .807 .87];
    cylPlot4(1).EdgeColor = [0 0 0];

    % Creates error bars using the standard deviations of each data set 
    stdSecondaryDuringData = NaN(1,2);
    stdSecondaryDuringData(:,1) = nanstd(secondaryDuring.global(:,1))./sqrt(6);
    stdSecondaryDuringData(:,2) = nanstd(secondaryDuring.global(:,2))./sqrt(6);

    er3 = errorbar(avgSecondaryDuringData(1,:),stdSecondaryDuringData(:,1));
    er4 = errorbar(2,avgSecondaryDuringData(2,:),stdSecondaryDuringData(:,2));
    er3.Color = [0 0 0];                            
    er3.LineStyle = 'none';
    er3.LineWidth = 1;
    er4.Color = [0 0 0];                            
    er4.LineStyle = 'none';
    er4.LineWidth = 1;

    % Sets Y and X axis limits 
    box off
    set(gca,'ylim',[0 6]);
    set(gca,'ytick', [0:6]);
    set(gca,'xtick',[1 2]);
    set(gca,'xlim',[0 3]);

    % Plots individual data 
    indivColor = [.65 .65 .65];

    xVals = [1, 2];
    for i_rat = 1:6
        plot(xVals,secondaryDuring.global([1 2],i_rat),'Color',indivColor,'LineWidth',1)
    end
