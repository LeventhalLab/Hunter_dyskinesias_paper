function plotGlobalAimsOverSessions_betweenlimb(avgAimsData)

% Plots limb AIMs over sessions - between group 

data = avgAimsData(2).limb;

avgData = nanmean(data,2); %the 2 makes it average across columns 

numDataPts = sum(~isnan(data),2);
errbars = nanstd(data,0,2)./sqrt(numDataPts);

%set marker sizes
avgMarkerSize = 40;
indMarkerSize = 4;

%set plot colors
avgColor = 'k';
indivColor = [.85 .85 .85];

numRats = size(data,2);
numSess = size(data,1); 

for i_rat = 1 : numRats 
    plot(1:numSess,data(:,i_rat),'-o','MarkerSize',indMarkerSize,'Color',indivColor,'MarkerEdgeColor',indivColor,'MarkerFaceColor',indivColor);
    hold on
end

scatter(1:numSess,avgData,avgMarkerSize,'filled','MarkerEdgeColor',avgColor,'MarkerFaceColor',avgColor);
e = errorbar(1:numSess,avgData,errbars,'linestyle','none');
e.Color = avgColor; 

box off
set(gca,'ylim',[0 6]);
set(gca,'ytick',[0 1 2 3 4 5 6]);
set(gca,'xlim',[1 10.5]);
set(gca,'xtick',1:10);
ylabel({'limb AIMs score'})
xlabel('session number')

