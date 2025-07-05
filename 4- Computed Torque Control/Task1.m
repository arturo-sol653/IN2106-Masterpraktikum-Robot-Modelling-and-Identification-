% Plot the motor position
h1=plot(task11.time, task11.Data(:,1), 'b', 'LineWidth', 1.3); hold on;
h2=plot(task11.time, task11.Data(:,2), 'r', 'LineWidth', 1.3);

% Add the overshoot limit (1.2 rad)
yline(0, ':k', '$$q_{d1} = 0\ \mathrm{rad}$$', ...
    'Interpreter', 'latex', ...
    'LabelHorizontalAlignment', 'right', ...
    'LabelVerticalAlignment', 'bottom', ...
    'LineWidth', 1);

yline(-2.3562, ':k', '$$q_{d2} = -\frac{3}{4}\pi\ \mathrm{rad}$$', ...
    'Interpreter', 'latex', ...
    'LabelHorizontalAlignment', 'right', ...
    'LabelVerticalAlignment', 'bottom', ...
    'LineWidth', 1);


% Labels and formatting
xlabel('$$\mathrm{Time\ (s)}$$', 'Interpreter', 'latex')
ylabel('$$q\ \mathrm{(rad)}$$', 'Interpreter', 'latex');

ylim([-3, 0.5]);
%title('$$\mathrm{Motor\ Position\ vs\ Time}$$', 'Interpreter', 'latex')


legend([h1, h2], ...
       {'$$q_{1}$$', '$$q_{2}$$'}, ...
       'Interpreter', 'latex', 'Location', 'east');


set(gca, 'FontSize', 12)
grid on
saveas(gcf, 'task1a.png')
