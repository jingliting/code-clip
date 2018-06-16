function [rt, f, g] = twodsin(A, u0, v0, M, N)
% Compare for loops vs. vectorization.���Ż�matlab�����ַ�ʽ��1. ������ѭ�� 2.Ԥ�������飩
% The comparision is based on implementing the function
% f(x, y) = Asin(u0x + v0y) for x = 0, 1, 2, ..., M-1 and
% y = 0, 1, 2,...,N-1. The inputs to the function are
% M and N and the constants in the function. 
% First implement using for loops.

tic  % start time
for r = 1:M
    u0x = u0 * (r - 1);
    for c = 1 : N
        v0y = v0 * (c-1);
        f(r, c) = A * sin(u0x + v0y); % ����f�ĳߴ�����ŵ��������ĸı���ı䣬Ԥ�����ڴ�����������ٶ�
    end
end
t1 = toc;  % End timing.

% Now implement using vectorization. Call the image g.
tic
r = 0 : M-1;
c = 0 : N-1;
[C, R] = meshgrid(c, r); %�����У�����
g = A * sin(u0*R + v0*C);
t2 = toc;

rt = t1/(t2 + eps);  % Use eps in case t2 is close to 0.
