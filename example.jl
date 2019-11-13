function triplets_with_perimeter(p::Int)
    triplets = Set()
    a = 0;    b = 0;    c = 0

    m = 2
    while a+b+c ≤ 6p # a+b+c will oscillate
        m² = m^2
        for n = 1 : m
            n² = n*n

            a = m² - n²
            b = 2m*n
            c = m² + n²

            if gcd(a, b) == 1  &&  p % (a+b+c) == 0

                if a > b;    a, b  =  b, a;    end

                ratio = p ÷ (a+b+c)

                a₂ = ratio*a
                b₂ = ratio*b
                c₂ = ratio*c


                if (a₂, b₂, c₂) ∉ triplets
                    push!(triplets, (a₂, b₂, c₂))
                end
            end
        end

        m += 1
    end



    triplets # returned
end
