% Matrix Operations: Determinant, Inverse, Eigenvalues
function matrix_operations(A)
    % This function calculates the determinant, inverse (if invertible),
    % and eigenvalues of a given matrix A.
    
    % Check if the matrix is square
    [rows, cols] = size(A);
    if rows ~= cols
        error('Matrix must be square to calculate determinant and inverse.');
    end
    
    % Display the matrix
    disp('Matrix A:');
    disp(A);
    
    % Calculate and display the determinant
    detA = det(A);
    fprintf('Determinant of A: %.2f\n', detA);
    
    % Check if the matrix is invertible
    if detA == 0
        disp('Matrix is singular and cannot be inverted.');
    else
        % Calculate and display the inverse
        invA = inv(A);
        disp('Inverse of A:');
        disp(invA);
    end
    
    % Calculate and display the eigenvalues
    eigvals = eig(A);
    fprintf('Eigenvalues of A: ');
    disp(eigvals);
    
    % Plot the eigenvalues on the complex plane
    figure;
    plot(real(eigvals), imag(eigvals), 'ro', 'MarkerSize', 10);
    title('Eigenvalues of Matrix A');
    xlabel('Real');
    ylabel('Imaginary');
    grid on;
    axis equal;
end

% Example of how to call the function:
% Create a random 3x3 matrix
A = [4, 2, 1; 3, 5, 7; 1, 2, 6];
matrix_operations(A);
