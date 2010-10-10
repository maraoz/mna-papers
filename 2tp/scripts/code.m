function answer = code()
	im = load('../saturno');
	colormap(gray(255));
	
	image(im');
	t = fftn(im);
    
    
    it = ifftn(t);

	% abs to remove small imaginary part (machine error)
	image(abs(it)');
    
	ampl = abs(t);
	mx = max(max(ampl));
	mn = min(min(ampl));

	m = 255/(mx-mn);
	b = -m*mn;

	nampl = floor(m*ampl + b);
	%image(nampl');

	phase = angle(t);
	mx = max(max(phase));
    mn = min(min(phase));

	m = 255/(mx-mn);
    b = -m*mn;

    nphase = floor(m*phase + b);
	%image(nphase');

    pul = pulse();
	f2 = t.*pul;
    it2 = abs(ifftn(f2))';
   	figure(2);
   	colormap(gray(255));
	image(it2);

	ga = gaussiano();
	f3 = t.*ga;
	it3 = abs(ifftn(f3))';
	figure(3);
   	colormap(gray(255));

    image(it3);	

	dam = damero();
	f1 = t.*dam;
	it1 = abs(ifftn(f1))';
  	figure(4);
   	colormap(gray(255));
	image(it1);

end
