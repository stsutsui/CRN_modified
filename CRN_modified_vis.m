%% CRN_modified trace visualization
% S. Tsutsui, July 2017
% Iyer Research Group, CUMC

vm = loaddbl('CRN_modified.out.vm');
aux = loaddbl('CRN_modified.out.aux');
%vm_baseline = loaddbl('CRN_modified_baseline.out.vm');
%aux_baseline = loaddbl('CRN_modified_baseline.out.aux');

Ina = aux(1:32:end);
Ik1 = aux(2:32:end);
Ito = aux(3:32:end);
Ikur = aux(4:32:end);
Ikr = aux(5:32:end);
Iks = aux(6:32:end);
Ical = aux(7:32:end);
Inak = aux(8:32:end);
Inaca = aux(9:32:end);
Ibca = aux(10:32:end);
Ibna = aux(11:32:end);
Ipca = aux(12:32:end);
Jrel = aux(13:32:end);
Jtr = aux(14:32:end);
Jup = aux(15:32:end);
Jxfer = aux(16:32:end);
Jupleak = aux(17:32:end);
Iion = aux(18:32:end);
Cai = aux(19:32:end);
CaNSR = aux(20:32:end);
CaSS = aux(21:32:end);
CaJSR = aux(22:32:end);
Cai_imw = aux(23:32:end);
CaNSR_imw = aux(24:32:end);
CaSS_imw = aux(25:32:end);
CaJSR_imw = aux(26:32:end);
Open = aux(27:32:end);
dC_tot = aux(28:32:end);
dCC_tot = aux(29:32:end);
dTOT = aux(30:32:end);
Nai = aux(31:32:end);
NaSS = aux(32:32:end);

figure;
subplot(4,1,1);
plot(vm,'LineWidth',1.4);
title('V_m');
subplot(4,1,2);
plot(10000*Ical,'LineWidth',1.4);
title('I_{Ca_L}');
subplot(4,1,3);
plot(Inaca,'LineWidth',1.4);
title('I_{NaCa}');
subplot(4,1,4);
plot(Jrel,'LineWidth',1.4);
title('J_{rel}');

% figure;
% subplot(4,1,1);
% plot(Open,'LineWidth',1.4);
% title('Open');
% subplot(4,1,2);
% plot(dC_tot,'LineWidth',1.4);
% title('dC Total');
% subplot(4,1,3);
% plot(dCC_tot,'LineWidth',1.4);
% title('dCCa Total');
% subplot(4,1,4);
% plot(dTOT,'LineWidth',1.4);
% title('dC + dCCa Total');

% figure;
% subplot(4,1,1);
% plot(Cai,'LineWidth',1.4);
% title('Ca_i');
% subplot(4,1,2);
% plot(CaSS,'LineWidth',1.4);
% title('Ca_{SS}');
% subplot(4,1,3);
% plot(CaNSR,'LineWidth',1.4);
% title('Ca_{NSR}');
% subplot(4,1,4);
% plot(CaJSR,'LineWidth',1.4);
% title('Ca_{JSR}');

figure;
subplot(4,1,1);
plot(Cai_imw,'LineWidth',1.4);
title('Ca_i IMW');
subplot(4,1,2);
plot(CaSS_imw,'LineWidth',1.4);
title('Ca_{SS} IMW');
subplot(4,1,3);
plot(CaNSR_imw,'LineWidth',1.4);
title('Ca_{NSR} IMW');
subplot(4,1,4);
plot(CaJSR_imw,'LineWidth',1.4);
title('Ca_{JSR} IMW');
