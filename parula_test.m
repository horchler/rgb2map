function parula_test
%PARULA_TEST  Test and compare RGB2MAP and RGB2IND with Parula colormap.

%   Andrew D. Horchler, adh9 @ case . edu, Created 5-2-15
%   Revision: 1.0, 5-5-15


n = 256;
v = 1:n;
map = [0 0 0;parula(n-2);1 1 1];
%map = parula(n);

figure('Color','w');
pos = get(gcf,'Position');
set(gcf,'Position',[pos(1:2) 2*pos(3) pos(4)]);

subplot(3,1,[1 2]);
plot(v,map(:,1),'r',v,map(:,2),'g',v,map(:,3),'b');
set(gca,'XTick',[1 32:32:n],'XMinorTick','on');
axis([v(1) v(end) 0 1]);
box off;
xlabel('Color Index','FontSize',16);
sp = char([160 160]);
ylabel({['RGB' sp],'Values'},'FontSize',16,'HorizontalAlignment','right',...
                             'Rotation',0,'VerticalAlignment','middle');
text(v(end)+2,map(end,1)-0.035,'R','Color','r','FontSize',16);
text(v(end)+2,map(end,2)+0.035,'G','Color',[0 0.5 0],'FontSize',16);
text(v(end)+2,map(end,3),'B','Color','b','FontSize',16);

subplot(3,1,3);
image(v);
colormap(map);
box off;
set(gca,'XColor','w','XTick','','YColor','w','YTick','');
ylabel({['Parula' sp],'Colormap'},'Color','k','FontSize',16,...
       'HorizontalAlignment','right','Rotation',0,'VerticalAlignment','middle');
drawnow;


img0 = peaks(32);
img0 = img0-min(img0(:));
img0 = floor(255*img0./max(img0(:)));
fname = [tempname '.jpg'];
imwrite(img0,map,fname,'Quality',50);
img1 = imread(fname);
img2 = rgb2ind(img1,map,'nodither');
img3 = rgb2map(img1,map);

figure('Color','w');
pos = get(gcf,'Position');
set(gcf,'Position',[pos(1:2) 3*pos(3) pos(4)]);

subplot(141);
image(img0);
colormap(map);
axis image;
axis off;
title('original indexed data','FontSize',18);

subplot(142);
image(img1);
axis image;
axis off;
title('RGB JPEG file','FontSize',18);

subplot(143);
image(img2);
colormap(map);
axis image;
axis off;
title('rgb2ind indexed image','FontSize',18);

subplot(144);
image(img3);
colormap(map);
axis image;
axis off;
title('rgb2map indexed image','FontSize',18);
drawnow;


%url = 'http://upload.wikimedia.org/wikipedia/commons/e/ea/Parula_pitiayumi_-Fecapi,_Piraju,_Sao_Paulo,_Brasil-8.jpg';
%url = 'Parula_pitiayumi_bird.jpg';
url = 'test.png';
img = imread(url);
tic
img2 = rgb2ind(img,map,'nodither');
toc
tic
img3 = rgb2map(img,map);
toc

figure('Color','w');
pos = get(gcf,'Position');
set(gcf,'Position',[pos(1:2) 3*pos(3) pos(4)]);

subplot(131);
image(img);
axis image;
axis off;
title('original RGB image','FontSize',18);

subplot(132);
image(img2);
colormap(map);
axis image;
axis off;
title('rgb2ind indexed image','FontSize',18);

subplot(133);
image(img3);
colormap(map);
axis image;
axis off;
title('rgb2map indexed image','FontSize',18);


figure;
imshow(img2,'Colormap',map);

figure;
imshow(img3,'Colormap',map);