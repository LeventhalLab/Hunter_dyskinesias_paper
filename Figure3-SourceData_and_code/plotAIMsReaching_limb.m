function plotAIMsReaching_limb(duringReachAvgAIMs)

% Plots bar graph of reaching vs non-reaching AIMs scores in during rats 

    % Averages the during group's global AIMs scores
     avgReachData = nanmean(duringReachAvgAIMs.limb(:,1));
     avgNonReachData = nanmean(duringReachAvgAIMs.limb(:,2));

     % Reformats the data for individual plots 
     duringReachData = NaN(2,5);
     duringReachData (1,:) = duringReachAvgAIMs.limb(2,:);
     duringReachData (2,:) = duringReachAvgAIMs.limb(1,:);

    % Plots a bar graph of the during group's reach & non-reach data 
    hb = bar(1,avgNonReachData,'BarWidth',1,'FaceColor',[0 0 0],'EdgeColor',[0,0,0],'LineWidth',1);
    hold on 
    hb2 = bar(2,avgReachData,'BarWidth',1,'FaceColor',[0 0 0],'EdgeColor',[0,0,0],'LineWidth',1);

    % Labels axes 
    xticklabels({'Not Reaching','Reaching'})
    xlabel('Behavioral Context')
    ylabel('Day 10 Limb Aims Score')

    % Changes the color of the bars 
    hb(1).FaceColor = [.227 .329 .728];
    hb(1).EdgeColor = '0 0 0';
    hb2(1).FaceColor = [.227 .329 .728];
    hb2(1).EdgeColor = '0 0 0';

    % Plots error bars / calculates standard deviation 
    stdReachData = NaN(1,2);
    stdReachData(:,1) = nanstd(duringReachAvgAIMs.limb(:,1))./sqrt(5);
    stdReachData(:,2) = nanstd(duringReachAvgAIMs.limb(:,2))./sqrt(5);

    er = errorbar(avgNonReachData,stdReachData(:,1));
    er2 = errorbar(2,avgReachData,stdReachData(:,2));
    er.Color = '0 0 0';                            
    er.LineStyle = 'none';
    er.LineWidth = 1;
    er2.Color = '0 0 0';                            
    er2.LineStyle = 'none';
    er2.LineWidth = 1;

    % Sets axis limits 
    box off
    set(gca,'ylim',[0 3]);
    set(gca,'ytick',[0:3]);
    set(gca,'xtick',[1 2]);
    set(gca,'xlim',[0 3]);

    % Plots individual data
    indivColor = [.65 .65 .65];
    for i_context = 1:2
        xVals = [1, 2];
        for i_rat = 1:5
            plot(xVals,duringReachData(:,i_rat),'Color',indivColor,'LineWidth',1)
        end
    end 


