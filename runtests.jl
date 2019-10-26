#=
Notes regarding the implementation of triplets_with_perimeter:

Expected return values for this function differ from
the canonical data which specify a list(lists).

Requiring set(tuples) instead allows the results to
be returned in any order and still be verified correctly.
=#
using Test

include("pythagorean_triplet.jl")


# Tests adapted from `problem-specifications//canonical-data.json` @ v1.0.0

println("\n"^2, "-"^60, "\n"^3)

@testset "Triplets sum 12." begin
    expected = Set(Tuple[(3, 4, 5)])
    @test triplets_with_perimeter(12) == expected
end
println()

@testset "Triplets sum 108." begin
    expected = Set(Tuple[(27, 36, 45)])
    @test triplets_with_perimeter(108) == expected
end
println()


@testset "Triplets sum 1000." begin
    expected = Set(Tuple[(200, 375, 425)])
    @test triplets_with_perimeter(1000) == expected
end
println()


@testset "No triplet exists." begin
    expected = Set(Tuple[])
    @test triplets_with_perimeter(1001) == expected
end
println()


@testset "Two matching triplets." begin
    expected = Set(Tuple[(9, 40, 41), (15, 36, 39)])
    @test triplets_with_perimeter(90) == expected
end
println()


@testset "Several matching triplets." begin
    expected = Set(Tuple[(40, 399, 401),  (56, 390, 394),  (105, 360, 375),
                         (120, 350, 370), (140, 336, 364), (168, 315, 357),
                         (210, 280, 350), (240, 252, 348)])
    @test triplets_with_perimeter(840) == expected
end
println()


@testset "Triplets for large numbers." begin
    expected = Set(Tuple[(1200, 14375, 14425), (1875, 14000, 14125),
                         (5000, 12000, 13000), (6000, 11250, 12750),
                         (7500, 10000, 12500)])
    @test triplets_with_perimeter(30000) == expected
end
