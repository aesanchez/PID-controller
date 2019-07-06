clear
%% Calcular respuesta del escalon %%
s = tf('s');
G = 100 / ((s+8)*(s+9)*(s+10));
[Y, t] = step(G);
%% Calcular derivada %%
dy = diff(Y)./diff(t);
%% Calcular tangente maxima %%
[pendiente, index] = max(dy);
tang = (t-t(index))*pendiente+Y(index);
%% Calcular a donde converge Y %%
limit = max(Y);
%% Graficar resultados %%
hold on
grid on
plot([0, t(end)], [limit, limit], '-.k');
plot(t(2:end),dy,'r',t,Y,'b',t,tang,'g');
scatter(t(index),Y(index));
hold off
