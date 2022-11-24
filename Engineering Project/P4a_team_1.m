% Name: Pranav, Selam, Muhammed, Kushal, Collin, Jordan
% Date: 9/27/2022
% Imports data from a data sheet and displays it as a graph (Line graph or pie chart)

clc
clear

typeGraph = input("Please input '1' for lineplot and '2' for a pie graph. Any other entry will end the program.");

if (typeGraph == 1) 
    tableName = input("Please enter the name of the exel file to read: ", 's');
    tableName = tableName +".xlsx";

    table = readtable(tableName,'ReadVariableNames',false);
    newTime = datetime(table.Var1, "ConvertFrom", "excel");
    newTime.Year = 2022;
    month = input("What month was this data recorded? Input in number. ");
    newTime.Month = month;
    newTime.Day = input("What day was this data recorded? ");
    table.Var1 = newTime;

    plot(table,"Var1","Var2","Marker","square","Color","#FF00FF","MarkerSize",15);
    grid on
    xlabel('Time');
    ylabel('Students');
    title('Students vs Time');

elseif (typeGraph == 2)
    chartName = input("Please enter the name of the exel file to read: ", 's');
    chartName = chartName +".xlsx";

    pieChart =readtable(chartName,'ReadVariableNames',false);
    x = pieChart.Var2;
    y = pieChart.Var1;

    pie(x);
    legend(y,Location="southwest");
    title("Fraction of students in a given location");
end