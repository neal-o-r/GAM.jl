include("./b_spline.jl")
using b_spline

function model_matrix(x::Array)
	# create GLM matrix of B-splines
	
	return hcat(ones(size(x)[1]), b_spline.B_spline(x))

end


function weights()

end

function penalty()

	

end



function pirls(x::Array, y::Array{Float64, 1})

	B = model_matrix(x)
	m, n = size(B)
	
	
end


x = Array(1:0.1:10.)
y = x .* sin(x)
