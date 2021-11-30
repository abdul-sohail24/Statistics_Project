* Encoding: UTF-8.
data list list / n sample_mean population_mean population_sd.
begin data
30 27.63 24.08 7.40 
end data.

Compute mean_difference = sample_mean - population_mean.
Compute square_root_n =SQRT(n).
Compute standard_difference = population_sd/square_root_n.
Compute z_statistic = mean_difference/standard_difference.
Compute chi_square = z_statistic*z_statistic.
Compute p_value = SIG.CHISQ(chi_square, 1).
Compute cohens_d = mean_difference/population_sd.
EXECUTE.
Formats z_statistic p_value cohens_d (f8.5).
LIST z_statistic p_value cohens_d.
