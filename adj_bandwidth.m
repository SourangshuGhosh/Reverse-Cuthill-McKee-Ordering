function value = adj_bandwidth ( node_num, adj_num, adj_row, adj )

  band_lo = 0;
  band_hi = 0;

  for i = 1 : node_num

    for j = adj_row(i) : adj_row(i+1)-1
      col = adj(j);
      band_lo = max ( band_lo, i - col );
      band_hi = max ( band_hi, col - i );
    end

  end

  value = band_lo + 1 + band_hi;

  return
end
