/*
 * xdevcfg_pl.h
 *
 *  Created on: Dec 27, 2022
 *      Author: ///
 */

#ifndef SRC_UTILS_XDEVCFG_PL_H_
#define SRC_UTILS_XDEVCFG_PL_H_

#include "xparameters.h"
#include "xdevcfg.h"


#define BIT_STREAM_LOCATION	0X20000001	/* Bitstream location */
#define BIT_STREAM_SIZE_WORDS	0xF6EBF		/* Size in Words (32 bit)*/


#define SLCR_LOCK	0xF8000004 /**< SLCR Write Protection Lock */
#define SLCR_UNLOCK	0xF8000008 /**< SLCR Write Protection Unlock */
#define SLCR_LVL_SHFTR_EN 0xF8000900 /**< SLCR Level Shifters Enable */
#define SLCR_PCAP_CLK_CTRL XPAR_PS7_SLCR_0_S_AXI_BASEADDR + 0x168
#define SLCR_PCAP_CLK_CTRL_EN_MASK 0x1
#define SLCR_LOCK_VAL	0x767B
#define SLCR_UNLOCK_VAL	0xDF0D

int XDcfgPolled(XDcfg * DcfgInstance, u16 DeviceId);
#define DCFG_DEVICE_ID		XPAR_XDCFG_0_DEVICE_ID
XDcfg DcfgInstance;		/* Device Configuration Interface Instance */

#endif /* SRC_UTILS_XDEVCFG_PL_H_ */