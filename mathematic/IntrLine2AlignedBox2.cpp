#include <GTEngine/GTMathematics.h>
#include <catch2/catch.hpp>

using namespace gte;

using Vec2d  = Vector2<double>;
using Line2d = Line2<double>;
using AlignedBox2d = AlignedBox2<double>;

TEST_CASE( "'垂直直线'与'对齐盒子'相交性测试 -- ", "[single-file]" ) {
    Vec2d inMin{0, 0};
    Vec2d inMax{4, 3};
    AlignedBox2d box{inMin, inMax};
    
    auto tiQuery = TIQuery<double, Line2d, AlignedBox2d>{};

    Line2d line1{Vec2d{-1, 0}, Vec2d{0, 1}};
    auto result1 = tiQuery(line1, box);
    REQUIRE( !result1.intersect );
    
    Line2d line2{Vec2d{0, 0}, Vec2d{0, 1}};
    auto result2 = tiQuery(line2, box);
    REQUIRE( result2.intersect );
    
    Line2d line3{Vec2d{0, 3}, Vec2d{0.8, 0.6}};
    auto result3 = tiQuery(line3, box);
    REQUIRE( result3.intersect );
    
    Line2d line4{Vec2d{0, 3.000001}, Vec2d{0.8, 0.6}};
    auto result4 = tiQuery(line4, box);
    REQUIRE( !result4.intersect );
    
    Line2d line5{Vec2d{4, 0}, Vec2d{0.8, 0.6}};
    auto result5 = tiQuery(line5, box);
    REQUIRE( result5.intersect );
    
    Line2d line6{Vec2d{4, -0.000001}, Vec2d{0.8, 0.6}};
    auto result6 = tiQuery(line6, box);
    REQUIRE( !result6.intersect );

}
