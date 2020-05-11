function A0WA6S_3(TOL)
%% A0WA6S_3(1e-4)

%% A feladat ertelmeben a felhasznalo hatarozza meg az [a, b] intervallumot
%% Legyen most [a, b] = [1, 9]

hiba = 1;
m=1;

while hiba > TOL 
    erinto = kvadraturazh(1,9,m,'x.*sin(1./x).*sqrt(abs(1-x))') ; %% Modositott kvadratura m.fajl; lasd GitHub
    beepitett = quad(@(x) (x*sin(1/x)*sqrt(abs(1-x))), 1, 9);
    hiba = abs(erinto-beepitett);
    m = m+1;
end

X=['A feladat megoldasahoz ', num2str(m), ' reszintervallumra volt szukseg a megadott TOL ertek mellett az altalunk valsztott fix [1, 9] intervallumon.'];
disp(X)
