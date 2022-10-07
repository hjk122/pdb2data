
    %%%% =========== Setting coefficients of the new molecule =============
    atoms_num = 3000;      % atoms number in the new molecule
    bonds_num = 2000;
    angles_num = 1000;
    atom_types = 2;     % atom types in the new molecule
    bond_types = 1;
    angle_types = 1;
    % Force field 
    % AtomName | epsilon(KJ/mol) | sigma(A) | mass/m | charge/q
    pair_coeffs = { 'H'  0.0000 0.0000 1.008 0.4238 ; % H
                       'O'  0.1553  3.166  15.994 -0.8476 ; % O
                       }; 
    bond_coeffs = { 'OH'  1000 1.0 ; % OH
                     };
    angle_coeffs = { 'HOH' 100 109.47  ; % H-O-H
                      };
    % Molecular topology
    % atom ID | molecule ID | atoms type
    Atoms(1:atoms_num,1:3) = [1 1 1;    
                                2 1 1;
                                3 1 2;];
    % bond ID | bond type | atom1 ID | atom2 ID
    Bonds(1:bonds_num,1:4) = [1 1 1 3;    
                                2 1 2 3;];
    % angle ID | angle type | atom1 ID | atom2 ID | atom3 ID
    Angles(1:angles_num,1:5) = [1 1 1 3 2;];
