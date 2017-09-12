% Submitted by: Ryan Silberg
% Due date: September 12, 2017
% Assignment 2: Chapter 1,2,3 Exercises

%% Chapter 1 Exercises

% 1)

AWCu = 63.55;

% 2)

myage = 27;
myage - 2;
myage + 1;

% 3)

namelengthmax

% 4)

weightLBS = 200;
weightOZ = weightLBS * 16;

% 5)

intmin('uint32');
intmax('uint32');
intmin('uint64');
intmax('uint64');

% 6)

rps = 1 + 2;
rps = int32(rps);

% 11)

pounds = 200;
kilos = pounds / 2.2;

% 12)

ftemp = 212;
ctemp = (ftemp - 32) * 5 / 9;

% 13)

GallonVol = 5;
LiterVol = GallonVol * 3.78541;

% 14)

sind(90);
sin(pi/2);

% 15)

resist1 = 1;
resist2 = 2;
resist3 = 3;
resistTot = 1/((1/resist1)+(1/resist2)+(1/resist3));

% 22)

int32('a');
int32('b');
int32('A');
int32('B');

% 24)

'b' >= 'c' - 1;
3 == 2 + 1;
(3 == 2) + 1;
xor(5 < 6, 8 > 4);

% 25)

x = 6;
y = 1;
x > 5;
y < 10;

% 26)

3*10^5 == 3e5;

% 27)

log10(10000) == 4;

%% Chapter 2 Exercises

% 1)

vec1 = 2:7;
vec2 = 1.1:0.2:1.7;
vec3 = 8:-2:2;

%2) 

vec = 0:2*pi/50:2*pi;

% 3)

linspace(2,3,6);

% 4)

vec1Col = -5:1:-1;
vec1Lin = linspace(-5,-1,5);

vec2Col = 5:2:9;
vec2Lin = linspace(5,9,3);

vec3Col = 8:-2:4;
vec3Lin = linspace(8,4,3);

% 6)

transpose([-1:0.5:1]);

% 7)

vec7 = 1:1:9;
vecOdd = vec7(1:2:end);

% 8)

mat8 = [7:10;12:-2:6];
mat8(1,3);
mat8(2,:);
mat8(:,1:2);

% 9)

mat9 = [1:4,5:8];
numel(mat9);
prod(size(mat9));

% 10)

mat10 = [8:-1:5;4:-1:1];
mat10(1,:) = 1:4;
mat10(:,3) = [1:1];

% 12)

rows = randi(5,1);
cols = randi(5,1);
zeros(rows,cols);

% 23)

sum(3:2:11);

% 26)

top = 3:2:9;
bot = (top-1)/2;
sum(top./bot);

% 30)

vec30 = randi([-10,10],1,5);
vec30-3;
vec30>0;
abs(vec30);
max(vec30);

% 31)

mat31 = randi([-10,10],3,5);
max(mat31);
max(mat31');
max(max(mat31));

%% Chapter 3 Exercises

% 1)

ro = 2;
ri = 1;
volSphere = 4*pi*(ro^3-ri^3)/3;

% 4)

mat4 = input('Enter a matrix: ');

% 6)

x6 = 12345.6789;
fprintf('%f\n',x6);
fprintf('%10.4f\n',x6);
fprintf('%10.2f\n',x6);
fprintf('%6.4f\n',x6);
fprintf('%2.4f\n',x6);

% 8)

flow = input('Enter the flow in m^3/sec:')
fprintf('A flow of %.3f m^3/sec\n',flow);
fprintf('is equal to %.3f ft^3/sec\n',flow/.028);

