function [ x, y ] = i4_swap ( x, y )

%*****************************************************************************80
%
%% I4_SWAP swaps two I4's.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Parameters:
%
%    Input, integer X, Y, two values to interchange.
%
%    Output, integer X, Y, the interchanged values.
%
  z = x;
  x = y;
  y = z;

  return
end
