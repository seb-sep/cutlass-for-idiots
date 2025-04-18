#include <cute/tensor.hpp>

int main() {
    using namespace cute;

    // auto a = make_layout(make_shape(Int<4>{}, Int<8>{}), LayoutRight{});
    // // auto a = make_layout(make_shape(make_shape(2, 2), Int<2>{}), make_stride(make_stride(4, 1), Int<2>{}));
    // auto tiler = Shape<_2, _2>{};
    // auto thr = Layout<Shape<_2, _2>, Stride<_2, _1>>{};
    // (12,(4,8)):(59,(13,1))
    auto a = Layout<Shape<_4, _4>, Stride<_4, _1>>{};
    auto b = Layout<Shape<_2, _2>, Stride<_2, _1>>{};
    auto tiler = Shape<_4, _8>{};                    // (_4,_8)

    // auto tiled_a = zipped_divide(a, tiler);   

    TikzColor_TV color_fn;
    // TikzColor_BWx8 color_fn;
    // auto thrid = [](int tid) { return tid; };

    print_latex(tiled_divide(a, b), b, color_fn);
    // print(result);
    // print_layout(logical_divide(a, tiler));
    printf("\n");
    // print_layout(zipped_divide(a, tiler));
    printf("\n");
    // print(tiled_divide(layout, tiler));
    printf("\n");
    // print_layout(complement(make_layout(make_shape(Int<4>{}, Int<4>{}), LayoutRight{}), make_shape(Int<2>{}, Int<2>{})));
    
    // Evaluate and print complement((2,4):(1,6), 24)
    // auto layout_to_complement = make_layout(make_shape(Int<2>{}, Int<4>{}), make_stride(Int<1>{}, Int<6>{}));
    // print(complement(layout_to_complement, Int<24>{}));
    // print_latex(a);
    // cute::print_latex(a, thr, color_fn);
}