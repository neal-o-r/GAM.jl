module b_spline

function B(x::Array{Float64, 1}, n::Float64=20., k::Int64=3)

	xl = minimum(x)
	xr = maximum(x)
	dx = (xr - xl) / n

	t_ = xl + dx * Array(-k:n)  
	T_ = ones(x) * t_'
	X  = x * ones(t_)'
	P = (X - T_) / dx
	B = Int.((T_ .<= X) & (X .< (T_ + dx)))
	r = circshift(1:length(t_), -1)

	for k in 1:k
        	B = (P .* B + (k + 1 - P) .* B[:, r]) / k
	end
	return B
end

end
