% Plot the motor position
h1=plot(out.simout.Time, out.simout.Data(:,1), 'b', 'LineWidth', 1.3); hold on;
h2=plot(out.simout.Time, out.simout.Data(:,2), 'r', 'LineWidth', 1.3);
h3=plot(out.simout.Time, out.simout.Data(:,3), 'm', 'LineWidth', 1.3); 
h4=plot(out.simout.Time, out.simout.Data(:,4), 'c', 'LineWidth', 1.3);

% Labels and formatting
xlabel('$$\mathrm{Time\ (s)}$$', 'Interpreter', 'latex')
ylabel('$$q\ \mathrm{(rad)}$$', 'Interpreter', 'latex');

ylim([-2.5, 2.5]);
%title('$$\mathrm{Motor\ Position\ vs\ Time}$$', 'Interpreter', 'latex')


legend([h1, h2, h3, h4], ...
       {'$$q_{d1}$$', '$$q_{d2}$$', '$$q_1$$', '$$q_2$$'}, ...
       'Interpreter', 'latex', 'Location', 'east');



set(gca, 'FontSize', 12)
grid on
saveas(gcf, 'task3.png')
