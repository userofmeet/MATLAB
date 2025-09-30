function pHval = detectpH(imRGB)%#codegen
    
    I = rgb2lab(imRGB);

    % TASK 2 CODE GOES HERE
    
    pHguess = zeros(1,12);
    % pink pH is 2
    p = (I(:,:,1) <= 45) & ( I(:,:,2) >= 40 );
    pHguess(2) = nnz(p);

    % orange pH is 4
    o = (I(:,:,1) <= 50) & ( I(:,:,2) >= 30 ) & ( I(:,:,2) <= 40 );
    pHguess(4) = nnz(o);

    % yellow pH is 6
    y = (I(:,:,2) >= 7 ) & (I(:,:,2) <= 40) & ...
    (I(:,:,3) >= 40 ) & (I(:,:,3) <= 60);
    pHguess(6) = nnz(y);

    % green pH is 8
    g = (I(:,:,2) >= -15 ) & (I(:,:,2) <= 8) & ...
    (I(:,:,3) >= 40 ) & (I(:,:,3) <= 60);
    pHguess(8) = nnz(g);

    % dark green pH is 10
    dg = (I(:,:,1) <= 45) & (I(:,:,2) <= -4  );
    pHguess(10) = nnz(dg);

    % purple pH is 12
    p = (I(:,:,1) <= 45) & (I(:,:,2) >= 5 ) & (I(:,:,2) <= 14);
    pHguess(12) = nnz(p);

    [~,pHval] = max(pHguess); % pHval is the index containing the maximum number of pixels

end

