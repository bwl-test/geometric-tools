#include <GTEngine/GTMathematics.h>
#include <catch2/catch.hpp>

using namespace gte;

using Vec2d  = Vector2<double>;
using Line2d = Line2<double>;
using AlignedBox2d = AlignedBox2<double>;

TEST_CASE( "'垂直直线'与'对齐盒子'相交性测试 -- ", "[single-file]" ) {
    Vec2d inMin{0, 0};
    Vec2d inMax{8, 6};
    AlignedBox2d box{inMin, inMax};

    Line2d line1{Vec2d{-1, 0}, Vec2d{0, 1}};
    auto result1 = TIQuery<double, Line2d, AlignedBox2d>{}(line1, box);

    REQUIRE( !result1.intersect );
}