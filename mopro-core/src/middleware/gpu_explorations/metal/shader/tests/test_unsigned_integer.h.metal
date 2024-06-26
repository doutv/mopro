#pragma once

#include "../arithmetics/unsigned_int.h.metal"

namespace {
    typedef UnsignedInteger<8> u256;
}

[[kernel]]
void test_uint_add(
    constant u256& _a [[ buffer(0) ]],
    constant u256& _b [[ buffer(1) ]],
    device u256& result [[ buffer(2) ]])
{
    u256 a = _a;
    u256 b = _b;

    result = a + b;
}

[[kernel]]
void test_uint_sub(
    constant u256& _a [[ buffer(0) ]],
    constant u256& _b [[ buffer(1) ]],
    device u256& result [[ buffer(2) ]])
{
    u256 a = _a;
    u256 b = _b;

    result = a - b;
}

[[kernel]]
void test_uint_prod(
    constant u256& _a [[ buffer(0) ]],
    constant u256& _b [[ buffer(1) ]],
    device u256& result [[ buffer(2) ]])
{
    u256 a = _a;
    u256 b = _b;

    result = a * b;
}

[[kernel]]
void test_uint_shl(
    constant u256& _a [[ buffer(0) ]],
    constant uint32_t& _b [[ buffer(1) ]],
    device u256& result [[ buffer(2) ]])
{
    u256 a = _a;
    uint32_t b = _b;

    result = a << b;
}

// [[kernel]]
// void test_uint_shl(
//     constant u256& _a [[ buffer(0) ]],
//     constant uint32_t& _b [[ buffer(1) ]],
//     device u256& result [[ buffer(2) ]],
//     device uint32_t* debugBuffer [[ buffer(3) ]])
// {
//     u256 a = _a;
//     uint32_t b = _b;

//     result = a << b;
//     // Write the values of a and b to the debug buffer
//     for (int i = 0; i < 8; ++i) {
//         debugBuffer[i] = a.m_limbs[i];
//         debugBuffer[i + 8] = b;
//         debugBuffer[i + 16] = result.m_limbs[i];
//     }
// }

[[kernel]]
void test_uint_shr(
    constant u256& _a [[ buffer(0) ]],
    constant uint32_t& _b [[ buffer(1) ]],
    device u256& result [[ buffer(2) ]])
{
    u256 a = _a;
    uint32_t b = _b;

    result = a >> b;
}
