clear
close all

pale = zeros(16,3);
fid = fopen('PALETAROL.BIN','rb');
for i=1:16
    rb = fread(fid,1,'uchar');
    g  = fread(fid,1,'uchar');
    pale(i,1) = fix(rb/16);
    pale(i,2) = g;
    pale(i,3) = bitand(rb,15);
end
fclose(fid);
pale = pale/7;

[X,MAP] = imread('map6.png');
[BitField,MAP] = imread('map6_bitfiled.bmp');
[Fonts,FontMAP] = imread('Fonts_small.bmp','bmp');
[Sprites,SpriteMAP] = imread('sprites.bmp','bmp');
%[Sprites,SpriteMAP] = imread('Sprites_256x64_probe.bmp','bmp');
%[Sprites,SpriteMAP] = imread('Sprites_256x64.bmp','bmp');

[Background,BackgroundMAP] = imread('Background.bmp','bmp');
[Frame,FrameMAP] = imread('frame.bmp','bmp');

if isempty(MAP)
    [A2,MAP] = rgb2ind(X,pale);
    if (size(MAP,1)<16)
        X = zeros(16,3);
        X(1:size(MAP,1),:) = MAP;
        MAP = X;
    end
else
    A2 = imapprox(X,MAP,pale);
    MAP = pale;
end
Fonts = imapprox(Fonts,FontMAP,pale);
Sprites = imapprox(Sprites,SpriteMAP,pale);   
Background = imapprox(Background,BackgroundMAP,pale);   
Frame = imapprox(Frame,FrameMAP,pale);   

B = A2(1:256,:);
Y = Background;          % background
F = Frame;               % frame

H = size(B,1);
W = size(B,2);

image(B);
colormap(MAP);
axis equal;

InpTiles0 = im2col(B,'indexed',[8 8],'distinct');
InpTiles1 = im2col(B(5:end,:),'indexed',[8 8],'distinct');      %InpTiles1 = im2col(B(:,3:end),'indexed',[8 8],'distinct');
InpTiles2 = im2col(B(:,5:end),'indexed',[8 8],'distinct');
InpTiles3 = im2col(B(5:end,5:end),'indexed',[8 8],'distinct');  %InpTiles3 = im2col(B(:,7:end),'indexed',[8 8],'distinct');

InpTilesBK = im2col(Y,'indexed',[8 8],'distinct');

UniqueTiles = unique([InpTiles0 InpTiles1 InpTiles2 InpTiles3 InpTilesBK]','rows');
%UniqueTiles = unique([InpTiles0 InpTiles2 InpTilesBK]','rows');

fun = @(block_struct) norm(double(block_struct.data));
C = blockproc(double(UniqueTiles),[1 64],fun);


[~,i] = sort(C,1); 
UniqueTiles = UniqueTiles(i,:);

solid_tile = [];
solid_color = [];
transparentset = [];
for i = 1:size(UniqueTiles,1);
    j = find (UniqueTiles(i,:)==0);
    if (size(j,2)>1 && size(j,2)<64)
        transparentset = [transparentset i];
    end
    
    if all(UniqueTiles(i,:)==UniqueTiles(i,1))
        solid_tile = [solid_tile i-1];
        solid_color = [solid_color UniqueTiles(i,1)];
    end
end
solid_tile 
solid_color

BitField = im2col(BitField,'indexed',[4 4],'distinct');
BitField = reshape(mode(double(BitField)),64,512)>1;

figure
image(BitField);

fid = fopen('BitField.bin','wb');
for y=1:64
    %t = uint8(double(BitField(y,1:8:end)*128+BitField(y,2:8:end)*64+BitField(y,3:8:end)*32+BitField(y,4:8:end)*16+BitField(y,5:8:end)*8+BitField(y,6:8:end)*4+BitField(y,7:8:end)*2+BitField(y,8:8:end)*1));
    t = uint8(double(BitField(y,8:8:end)*128+BitField(y,7:8:end)*64+BitField(y,6:8:end)*32+BitField(y,5:8:end)*16+BitField(y,4:8:end)*8+BitField(y,3:8:end)*4+BitField(y,2:8:end)*2+BitField(y,1:8:end)*1));
    fwrite(fid,t,'uchar');
end
fclose(fid);

BackTiles = im2col(Y,'indexed',[8 8],'distinct');

[~,InpMap0] = ismember(InpTiles0',UniqueTiles,'rows');
[~,InpMap1] = ismember(InpTiles1',UniqueTiles,'rows');
[~,InpMap2] = ismember(InpTiles2',UniqueTiles,'rows');
[~,InpMap3] = ismember(InpTiles3',UniqueTiles,'rows');

InpMap = InpMap0;

FullMetaMap = [InpMap0 InpMap1 InpMap2 InpMap3]; 

UniqueMetaTiles = unique(FullMetaMap,'rows');

[~,MetaMap] = ismember(FullMetaMap,UniqueMetaTiles ,'rows');

MM = reshape(MetaMap,H/8,W/8);

figure;
image(MM)
colormap(flag)
axis equal;

fid = fopen('metamap.bin','wb');
for i=1:(H/8)
    fwrite(fid,MM(i,:)-1,'uint16');
end
fclose(fid);

i = ismember(UniqueMetaTiles(:),transparentset);
UniqueMetaTiles(i) = bitor(UniqueMetaTiles(i)-1,2^15)+1;

fid = fopen('metatable.bin','wb');
for i=1:size(UniqueMetaTiles,1)
    fwrite(fid,UniqueMetaTiles(i,:)-1,'uint16');
end
fclose(fid);


[~,BackMap] = ismember(BackTiles',UniqueTiles,'rows');

ReducedImage = UniqueTiles(InpMap,:);

A = col2im(ReducedImage',[8 8],[H W],'distinct');

figure
image(A)
colormap(MAP)
axis equal;

UniqueTiles = UniqueTiles';
K = size(UniqueTiles,2)

fid = fopen('header.asm','W');
fprintf(fid,'n_tiles: equ %3d\n',K-1);

fprintf(fid,'mapWidth:	equ	%3d\n',	(W/8));
fprintf(fid,'mapHeight:	equ	%3d\n',	(H/8));

fprintf(fid,'WinWidth:	equ	%3d\n',	28);
fprintf(fid,'WinHeight:	equ	%3d\n',	16);

fprintf(fid,'Transp:	equ	%3d\n',	UniqueMetaTiles(MM(1),1)-1);

fprintf(fid,'SolidTile%d	equ	%3d\n',[[0:size(solid_tile,2)-1]' solid_tile']');
fprintf(fid,'SolidColor%d	equ	%3d\n',[[0:size(solid_tile,2)-1]' solid_color']');

fprintf(fid,'NSolidColors	equ	%3d\n',size(solid_color,2));
fclose(fid);


if (K<=2048)
    T = [UniqueTiles zeros(8*8,2048-K)];
else
    T = UniqueTiles(:,1:2048) ;
end

B = col2im(T,[8 8],[256 512],'distinct');

fun = @(block_struct) transpose(block_struct.data);
C = blockproc(B,[8 8],fun)';
B = C;

B((512-16+1):end,:) = Fonts;
%B((512-24-16+1):(512-24),:) = Sprites(1:16,:);

fid = fopen('sprites.bin','wb');
for y=1:64
    t = uint8(double(Sprites(y,2:2:256))+double(Sprites(y,1:2:256))*16);
    fwrite(fid,t,'uchar');
end
fclose(fid);


figure
image(B)
colormap(MAP)
axis equal;

imwrite(B,MAP,'tileset.png','png');

NewMap = InpMap;

X = reshape(NewMap,H/8,W/8);

figure;
image(X)
colormap(flag)
axis equal;

% fid = fopen('datamap.bin','wb');
% for i=1:(H/8)
%     fwrite(fid,X(i,:)-1,'int16');
% end
% fclose(fid);

Y = reshape(BackMap,128/8,256/8);

fid = fopen('backmap.bin','wb');
for i=1:(128/8)
     fwrite(fid,Y(i,1:32)-1,'int16');
end
fclose(fid);

ReducedImage = T(:,NewMap);
A = col2im(ReducedImage,[8 8],[H W],'distinct');
figure
image(A)
colormap(MAP)
axis equal;

fid = fopen('tiles0.bin','wb');
for y=1:256
    t = uint8(double(B(y,2:2:256))+double(B(y,1:2:256))*16);
    fwrite(fid,t,'uchar');
end
fclose(fid);

fid = fopen('tiles1.bin','wb');
for y=257:512
    t = uint8(double(B(y,2:2:256))+double(B(y,1:2:256))*16);
    fwrite(fid,t,'uchar');
end
fclose(fid);

fid = fopen('frame.bin','wb');
for y=1:160
    t = uint8(double(F(y,2:2:256))+double(F(y,1:2:256))*16);
    fwrite(fid,t,'uchar');
end
fclose(fid);

!tools\pletter metamap.bin  _metamap.bin
!tools\pletter tiles0.bin   _tiles0.bin
!tools\pletter tiles1.bin   _tiles1.bin
!tools\pletter frame.bin    _frame.bin
!tools\pletter sprites.bin  _sprites.bin

palette = round(MAP(1:16,:)*7);

fid = fopen('palette.bin','wb');
for i=1:16
    fwrite(fid,palette(i,1)*16+palette(i,3),'uchar');
    fwrite(fid,palette(i,2),'uchar');
end
fclose(fid);

figure;
image(kron(1:16,ones(16)))
colormap(MAP);

!compila.bat
