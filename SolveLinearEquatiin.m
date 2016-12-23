A = [ 7 9 1; 8 9 1; 9 8 1; 10 9 1; 9 11 1];
%% Point 1
P1_X = [8;9;10;11;10];
P1_X_id = linsolve(A,P1_X)

P1_Y = [10;10;9;10;12];
P1_Y_id = linsolve(A,P1_Y)

%% Point 2
P2_X = [7;8;9;10;9];
P2_X_id = linsolve(A,P2_X)

P2_Y = [10;10;9;10;12];
P2_Y_id = linsolve(A,P2_Y)

%% Point 3
P3_X = [9;10;11;12;11];
P3_X_id = linsolve(A, P3_X)

P3_Y = [10;10;9;10;12];
P3_Y_id = linsolve(A, P3_Y)
