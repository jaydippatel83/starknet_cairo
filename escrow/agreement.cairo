
%lang starknet

from starkware.cairo.common.cairo_builtins import HashBuiltin, SignatureBuiltin
from starkware.starknet.common.syscalls import call_contract, get_caller_address, get_tx_info
from starkware.cairo.common.math import assert_not_zero, assert_le
from starkware.cairo.common.signature import verify_ecdsa_signature
from starkware.cairo.common.alloc import alloc
from starkware.cairo.common.bool import TRUE, FALSE

struct Transaction { 
    _buyer : felt;
     _seller : felt;
    _salePrice : felt;
    _statePercent : felt;
    _sellerPercent : felt;
    _title : felt;
    _description : felt;
}