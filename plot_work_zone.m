function plot_work_zone(x, y, l1, l2, xp, yp, zp, al)
[xei, yei] = meshgrid(x, y);
ze11 = zp - (2.*xei.*xp - 2.*l1.*(2.*xei.*xp + xei.^2.*cos(al).^2 + xp.^2.*cos(al).^2 - yei.^2.*cos(al).^2 - yp.^2.*cos(al).^2 + l2.^2 - xei.^2 - xp.^2 - 2.*xei.*xp.*cos(al).^2 + 2.*yei.*yp.*cos(al).^2 + 2.*xei.*yei.*cos(al).*sin(al) - 2.*xei.*yp.*cos(al).*sin(al) - 2.*xp.*yei.*cos(al).*sin(al) + 2.*xp.*yp.*cos(al).*sin(al)).^(1/2) + 2.*yei.*yp + l1.^2 + l2.^2 - xei.^2 - xp.^2 - yei.^2 - yp.^2).^(1/2);
ze12 = zp - (2.*l1.*(2.*xei.*xp + xei.^2.*cos(al).^2 + xp.^2.*cos(al).^2 - yei.^2.*cos(al).^2 - yp.^2.*cos(al).^2 + l2.^2 - xei.^2 - xp.^2 - 2.*xei.*xp.*cos(al).^2 + 2.*yei.*yp.*cos(al).^2 + 2.*xei.*yei.*cos(al).*sin(al) - 2.*xei.*yp.*cos(al).*sin(al) - 2.*xp.*yei.*cos(al).*sin(al) + 2.*xp.*yp.*cos(al).*sin(al)).^(1/2) + 2.*xei.*xp + 2.*yei.*yp + l1.^2 + l2.^2 - xei.^2 - xp.^2 - yei.^2 - yp.^2).^(1/2);
ze13 = zp + (2.*xei.*xp - 2.*l1.*(2.*xei.*xp + xei.^2.*cos(al).^2 + xp.^2.*cos(al).^2 - yei.^2.*cos(al).^2 - yp.^2.*cos(al).^2 + l2.^2 - xei.^2 - xp.^2 - 2.*xei.*xp.*cos(al).^2 + 2.*yei.*yp.*cos(al).^2 + 2.*xei.*yei.*cos(al).*sin(al) - 2.*xei.*yp.*cos(al).*sin(al) - 2.*xp.*yei.*cos(al).*sin(al) + 2.*xp.*yp.*cos(al).*sin(al)).^(1/2) + 2.*yei.*yp + l1.^2 + l2.^2 - xei.^2 - xp.^2 - yei.^2 - yp.^2).^(1/2);
ze14 = zp + (2.*l1.*(2.*xei.*xp + xei.^2.*cos(al).^2 + xp.^2.*cos(al).^2 - yei.^2.*cos(al).^2 - yp.^2.*cos(al).^2 + l2.^2 - xei.^2 - xp.^2 - 2.*xei.*xp.*cos(al).^2 + 2.*yei.*yp.*cos(al).^2 + 2.*xei.*yei.*cos(al).*sin(al) - 2.*xei.*yp.*cos(al).*sin(al) - 2.*xp.*yei.*cos(al).*sin(al) + 2.*xp.*yp.*cos(al).*sin(al)).^(1/2) + 2.*xei.*xp + 2.*yei.*yp + l1.^2 + l2.^2 - xei.^2 - xp.^2 - yei.^2 - yp.^2).^(1/2);
ze21 = zp - xei.*cos(al).*1i + xp.*cos(al).*1i - yei.*sin(al).*1i + yp.*sin(al).*1i;
ze22 = zp + xei.*cos(al).*1i - xp.*cos(al).*1i + yei.*sin(al).*1i - yp.*sin(al).*1i;
figure;
surf(xei,yei,real(ze11));
hold on;
surf(xei,yei,real(ze12));
surf(xei,yei,real(ze13));
surf(xei,yei,real(ze14));
%{
ze21 = zp - xei.*cos(al).*1i + xp.*cos(al).*1i - yei.*sin(al).*1i + yp.*sin(al).*1i;
ze22 = zp + xei.*cos(al).*1i - xp.*cos(al).*1i + yei.*sin(al).*1i - yp.*sin(al).*1i;
figure;
surf(xei,yei,imag(ze21));
hold on;
surf(xei,yei,imag(ze22));
%}
end
