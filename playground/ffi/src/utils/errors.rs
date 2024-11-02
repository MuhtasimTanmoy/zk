#[derive(Debug, PartialEq)]
pub enum Error {
    ModulusZero,
    InverseZero,
    Overflow,
    Underflow,
    NoAdditiveInverse,
}