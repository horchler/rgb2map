rgb2map
========
#####Convert RGB colors to indexed colormap colors in Matlab.#####
######Version 1.1, 6-20-15######
#####Download Repository: [ZIP Archive](https://github.com/horchler/rgb2map/archive/master.zip)#####

--------

[```rgb2map```](https://github.com/horchler/rgb2map/blob/master/rgb2map.m) converts an RGB image or colormap to an indexed color image or colormap using color differences. ```rgb2map``` calculates the color difference between each RGB pixel in an input image and every RGB triplet in the input colormap by [calculating &Delta;E](http://en.wikipedia.org/wiki/Color_difference#Delta_E) in the [CIE L&#42;a&#42;b&#42;](http://en.wikipedia.org/wiki/Lab_color_space) color space ([CIE 1976](http://en.wikipedia.org/wiki/Color_difference#CIE76) standard). The ```min``` function is used to find the index of the minimum &Delta;E (if more than one minimum value exists, the index of the first is returned). The function is an alternative to Matlab's [```rgb2ind```](http://www.mathworks.com/help/matlab/ref/rgb2ind.html).  
&nbsp;  

--------

Andrew D. Horchler, *horchler @ gmail . com*, [biorobots.case.edu](http://biorobots.case.edu/)  
Created: 5-2-15, Revision: 1.1, 6-20-15  

This version tested with Matlab 9.0.0.341360 (R2016a)  
Mac OS X 10.11.4 (Build: 15E65), Java 1.7.0_75-b13  
Compatibility maintained back through Matlab 8.5 (R2015a)  
&nbsp;  

--------

Copyright &copy; 2015&ndash;2017, Andrew D. Horchler  
All rights reserved.  

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
 * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
 * Neither the name of Case Western Reserve University nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL ANDREW D. HORCHLER BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.