#[cfg(test)]
extern crate ffi;
use crate::ffi::math::arith::Field;
use crate::ffi::utils::errors::Error;
use primitive_types::U256;

#[test]
fn test_field_creation_with_zero_order() {
    let result = Field::new(0);
    assert_eq!(result, Err(Error::ModulusZero));
}

#[test]
#[allow(non_snake_case)]
fn test_modc_addition() {
    let F = Field::new(7).unwrap();
    let addition = F.add(3, 6).unwrap();
    assert_eq!(addition, U256::from(2));
}

#[test]
#[allow(non_snake_case)]
fn test_modc_subtraction_1() {
    let F = Field::new(7).unwrap();
    let difference = F.sub(9, 6);
    assert_eq!(difference.unwrap(), U256::from(3));
}

#[test]
#[allow(non_snake_case)]
fn test_modc_subtraction_2() {
    let F = Field::new(7).unwrap();
    let difference = F.sub(6, 9);
    assert_eq!(difference.unwrap(), U256::from(4));
}
#[test]
#[allow(non_snake_case)]
fn test_modc_addv_inv() {
    let F = Field::new(7).unwrap();
    let addv_inv = F.add_inv(U256::from(6));
    assert_eq!(addv_inv.unwrap(), U256::from(1));
}
#[test]
#[allow(non_snake_case)]
fn test_modc_mult_inv() {
    let F = Field::new(7).unwrap();
    let mult_inv = F.mult_inv(U256::from(2));
    assert_eq!(mult_inv.unwrap(), U256::from(4));
}
#[test]
#[allow(non_snake_case)]
fn test_modc_div() {
    let F = Field::new(7).unwrap();
    let remainder = F.div(4, 2);
    assert_eq!(remainder.unwrap(), U256::from(2));
}
#[test]
#[allow(non_snake_case)]
fn test_modc_pow() {
    let F = Field::new(7).unwrap();
    let remainder = F.pow(8, 2);
    assert_eq!(remainder.unwrap(), U256::from(1));
}