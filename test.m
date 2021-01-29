A = hilb(1000);
[m,n]=size(A);
Q = zeros(m, m);
R = zeros(m, n);
%Classical Gram-Schmidt
for j=1:n
    v=A(:,j);
    for i=1:j-1
        R(i,j)=Q(:,i)'*A(:,j);
        v=v-R(i,j)*Q(:,i);
    end
    R(j,j)=norm(v);
    
    Q(:,j)=v/R(j,j);
end
disp('Error in GS:');
norm(A - Q*R)
norm(Q'*Q - eye(m))
%Modified Gram-Schmidt
v = zeros(m, n);
for i=1:n
    v(:,i)=A(:,i);
end
for i=1:n
    R(i,i)=norm(v(:,i));
    Q(:,i)=v(:,i)/R(i,i);
    for j=i+1:n
        R(i,j)=Q(:,i)'*v(:,j);
        v(:,j)=v(:,j)-(R(i,j)*Q(:,i));
    end
end
disp('Error in MGS:');
norm(A - Q*R)
norm(Q'*Q - eye(m))

