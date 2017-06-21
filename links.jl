module Identity_link


    function link(mu::Array{Float64, 1})
        return mu
    end

    function mu(lp::Array{Float64, 1})
        return lp
    end

    function grad(mu::Array{Float64, 1})
        return ones(length(mu))
    end

end
