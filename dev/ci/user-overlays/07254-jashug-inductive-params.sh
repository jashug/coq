#!/bin/sh

if [ "$CI_PULL_REQUEST" = "7254" ] || [ "$CI_BRANCH" = "inductive-params" ]; then
    # Should be backwards compatible
    cross_crypto_CI_BRANCH=uniform-hole-parameter
    cross_crypto_CI_GITURL=https://github.com/jashug/cross-crypto.git

    # Not backwards compatible
    equations_CI_BRANCH=uniform-parameter-formula
    equations_CI_GITURL=https://github.com/jashug/Coq-Equations.git

    # Should be backwards compatible
    formal_topology_CI_BRANCH=patch_uniform_parameters
    formal_topology_CI_GITURL=https://github.com/jashug/topology.git
fi
