/* Copyright (c) 2014, Venturecoin Developers */
/* See LICENSE for licensing information */

/**
 * \file venturecoin.h
 * \brief Headers for venturecoin.cpp
 **/

#ifndef TOR_VENTURECOIN_H
#define TOR_VENTURECOIN_H

#ifdef __cplusplus
extern "C" {
#endif

    char const* venturecoin_tor_data_directory(
    );

    char const* venturecoin_service_directory(
    );

    int check_interrupted(
    );

    void set_initialized(
    );

    void wait_initialized(
    );

#ifdef __cplusplus
}
#endif

#endif

