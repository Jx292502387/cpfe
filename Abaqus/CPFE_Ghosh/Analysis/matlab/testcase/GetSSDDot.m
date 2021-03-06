function [SSDDot,SSDDot1,SSDDot2,SSDDot3,SSDDot4]=...
    GetSSDDot(rhoSSD,rhoF,rhoM,GammaDot,...
    G,nu,b,D0,kB,theta,QBulk,gammaDotRef,...
    c5,c6,c7,c8,c9)
    
SSDDot1=sqrt(rhoF).*GammaDot.*c5.*b;
SSDDot2=(c6.*sqrt(3).*G./(16.*pi.*(1-nu))).*...
    rhoM.*GammaDot./(abs(tau)-tauPass);
SSDDot3=-c7.*rhoSSD.*GammaDot;
SSDDot4=-c8.*D0.*((b.^3)./(kB.*theta)).*exp(-QBulk./(kB.*theta)).*...
    rhoSSD.*rhoSSD.*abs(tau).*((GammaDot./gammaDotRef).^c9);

SSDDot=SSDDot1+SSDDot2+SSDDot3+SSDDot4;
end