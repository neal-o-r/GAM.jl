


module P_derivative

    function ndiff(X::Array{Float64, 2}, n::Int64)
        return foldl((x,y) -> diff(x), X, 1:n)
    end
            
    function P(n::Int64)

        d = 2

        if n == 1
            return [[0]]
        end
    
        D = ndiff(eye(n), d)

        return D' * D

    end

end
