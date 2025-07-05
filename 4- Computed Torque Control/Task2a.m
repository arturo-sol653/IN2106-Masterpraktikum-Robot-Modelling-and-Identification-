% Plot the motor position
h1=plot(task2a.time, task2a.Data(:,1), 'b', 'LineWidth', 1.3); hold on;
h2=plot(task2a.time, task2a.Data(:,2), 'r', 'LineWidth', 1.3);
h3=plot(task2a.time, task2a.Data(:,3), 'm', 'LineWidth', 1.3); 
h4=plot(task2a.time, task2a.Data(:,4), 'c', 'LineWidth', 1.3);

% Labels and formatting
xlabel('$$\mathrm{Time\ (s)}$$', 'Interpreter', 'latex')
ylabel('$$q\ \mathrm{(rad)}$$', 'Interpreter', 'latex');

ylim([-2, 0.5]);
%title('$$\mathrm{Motor\ Position\ vs\ Time}$$', 'Interpreter', 'latex')


legend([h1, h2, h3, h4], ...
       {'$$q_{d1}$$', '$$q_{d2}$$', '$$q_1$$', '$$q_2$$'}, ...
       'Interpreter', 'latex', 'Location', 'east');



set(gca, 'FontSize', 12)
grid on
saveas(gcf, 'task2b.png')
