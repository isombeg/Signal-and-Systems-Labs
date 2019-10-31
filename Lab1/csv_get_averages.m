function avg = csv_get_averages(grades, max_grades, indices)
  avg = mean(grades(indices,:) ./ max_grades, 2);
endfunction
