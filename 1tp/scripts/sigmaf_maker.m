function [sigmaf] = sigmaf_maker(h)
    inter = 30/h;
    sigmaf = zeros(inter,1);
	for i = h:h:30
       if i < 20
          sigmaf(floor(i/h),1) = 0.11;
       elseif i > 20
          sigmaf(floor(i/h),1) = 0;
       else
          sigmaf(floor(i/h),1) = 0.055;
       end
    end
end
