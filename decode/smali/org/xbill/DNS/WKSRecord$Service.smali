.class public Lorg/xbill/DNS/WKSRecord$Service;
.super Ljava/lang/Object;
.source "WKSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/WKSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Service"
.end annotation


# static fields
.field public static final AUTH:I = 0x71

.field public static final BL_IDM:I = 0x8e

.field public static final BOOTPC:I = 0x44

.field public static final BOOTPS:I = 0x43

.field public static final CHARGEN:I = 0x13

.field public static final CISCO_FNA:I = 0x82

.field public static final CISCO_SYS:I = 0x84

.field public static final CISCO_TNA:I = 0x83

.field public static final CSNET_NS:I = 0x69

.field public static final DAYTIME:I = 0xd

.field public static final DCP:I = 0x5d

.field public static final DISCARD:I = 0x9

.field public static final DOMAIN:I = 0x35

.field public static final DSP:I = 0x21

.field public static final ECHO:I = 0x7

.field public static final EMFIS_CNTL:I = 0x8d

.field public static final EMFIS_DATA:I = 0x8c

.field public static final ERPC:I = 0x79

.field public static final FINGER:I = 0x4f

.field public static final FTP:I = 0x15

.field public static final FTP_DATA:I = 0x14

.field public static final GRAPHICS:I = 0x29

.field public static final HOSTNAME:I = 0x65

.field public static final HOSTS2_NS:I = 0x51

.field public static final INGRES_NET:I = 0x86

.field public static final ISI_GL:I = 0x37

.field public static final ISO_TSAP:I = 0x66

.field public static final LA_MAINT:I = 0x33

.field public static final LINK:I = 0xf5

.field public static final LOCUS_CON:I = 0x7f

.field public static final LOCUS_MAP:I = 0x7d

.field public static final LOC_SRV:I = 0x87

.field public static final LOGIN:I = 0x31

.field public static final METAGRAM:I = 0x63

.field public static final MIT_DOV:I = 0x5b

.field public static final MPM:I = 0x2d

.field public static final MPM_FLAGS:I = 0x2c

.field public static final MPM_SND:I = 0x2e

.field public static final MSG_AUTH:I = 0x1f

.field public static final MSG_ICP:I = 0x1d

.field public static final NAMESERVER:I = 0x2a

.field public static final NETBIOS_DGM:I = 0x8a

.field public static final NETBIOS_NS:I = 0x89

.field public static final NETBIOS_SSN:I = 0x8b

.field public static final NETRJS_1:I = 0x47

.field public static final NETRJS_2:I = 0x48

.field public static final NETRJS_3:I = 0x49

.field public static final NETRJS_4:I = 0x4a

.field public static final NICNAME:I = 0x2b

.field public static final NI_FTP:I = 0x2f

.field public static final NI_MAIL:I = 0x3d

.field public static final NNTP:I = 0x77

.field public static final NSW_FE:I = 0x1b

.field public static final NTP:I = 0x7b

.field public static final POP_2:I = 0x6d

.field public static final PROFILE:I = 0x88

.field public static final PWDGEN:I = 0x81

.field public static final QUOTE:I = 0x11

.field public static final RJE:I = 0x5

.field public static final RLP:I = 0x27

.field public static final RTELNET:I = 0x6b

.field public static final SFTP:I = 0x73

.field public static final SMTP:I = 0x19

.field public static final STATSRV:I = 0x85

.field public static final SUNRPC:I = 0x6f

.field public static final SUPDUP:I = 0x5f

.field public static final SUR_MEAS:I = 0xf3

.field public static final SU_MIT_TG:I = 0x59

.field public static final SWIFT_RVF:I = 0x61

.field public static final TACACS_DS:I = 0x41

.field public static final TACNEWS:I = 0x62

.field public static final TELNET:I = 0x17

.field public static final TFTP:I = 0x45

.field public static final TIME:I = 0x25

.field public static final USERS:I = 0xb

.field public static final UUCP_PATH:I = 0x75

.field public static final VIA_FTP:I = 0x3f

.field public static final X400:I = 0x67

.field public static final X400_SND:I = 0x68

.field private static services:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 469
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "TCP/UDP service"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    .line 473
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    .line 474
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 476
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x5

    const-string v2, "rje"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 477
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x7

    const-string v2, "echo"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 478
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x9

    const-string v2, "discard"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 479
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xb

    const-string v2, "users"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 480
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xd

    const-string v2, "daytime"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 481
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x11

    const-string v2, "quote"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 482
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x13

    const-string v2, "chargen"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 483
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x14

    const-string v2, "ftp-data"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 484
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x15

    const-string v2, "ftp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 485
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x17

    const-string v2, "telnet"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 486
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x19

    const-string v2, "smtp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 487
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x1b

    const-string v2, "nsw-fe"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 488
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x1d

    const-string v2, "msg-icp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 489
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x1f

    const-string v2, "msg-auth"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 490
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x21

    const-string v2, "dsp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 491
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x25

    const-string v2, "time"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 492
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x27

    const-string v2, "rlp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 493
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x29

    const-string v2, "graphics"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 494
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x2a

    const-string v2, "nameserver"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 495
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x2b

    const-string v2, "nicname"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 496
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x2c

    const-string v2, "mpm-flags"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 497
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x2d

    const-string v2, "mpm"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 498
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x2e

    const-string v2, "mpm-snd"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 499
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x2f

    const-string v2, "ni-ftp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 500
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x31

    const-string v2, "login"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 501
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x33

    const-string v2, "la-maint"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 502
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x35

    const-string v2, "domain"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 503
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x37

    const-string v2, "isi-gl"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 504
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x3d

    const-string v2, "ni-mail"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 505
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x3f

    const-string v2, "via-ftp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 506
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x41

    const-string v2, "tacacs-ds"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 507
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x43

    const-string v2, "bootps"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 508
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x44

    const-string v2, "bootpc"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 509
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x45

    const-string v2, "tftp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 510
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x47

    const-string v2, "netrjs-1"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 511
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x48

    const-string v2, "netrjs-2"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 512
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x49

    const-string v2, "netrjs-3"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 513
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x4a

    const-string v2, "netrjs-4"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 514
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x4f

    const-string v2, "finger"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 515
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x51

    const-string v2, "hosts2-ns"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 516
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x59

    const-string v2, "su-mit-tg"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 517
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x5b

    const-string v2, "mit-dov"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 518
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x5d

    const-string v2, "dcp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 519
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x5f

    const-string v2, "supdup"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 520
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x61

    const-string v2, "swift-rvf"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 521
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x62

    const-string v2, "tacnews"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 522
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x63

    const-string v2, "metagram"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 523
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x65

    const-string v2, "hostname"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 524
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x66

    const-string v2, "iso-tsap"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 525
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x67

    const-string v2, "x400"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 526
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x68

    const-string v2, "x400-snd"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 527
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x69

    const-string v2, "csnet-ns"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 528
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x6b

    const-string v2, "rtelnet"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 529
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x6d

    const-string v2, "pop-2"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 530
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x6f

    const-string v2, "sunrpc"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 531
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x71

    const-string v2, "auth"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 532
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x73

    const-string v2, "sftp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 533
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x75

    const-string v2, "uucp-path"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 534
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x77

    const-string v2, "nntp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 535
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x79

    const-string v2, "erpc"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 536
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x7b

    const-string v2, "ntp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 537
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x7d

    const-string v2, "locus-map"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 538
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x7f

    const-string v2, "locus-con"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 539
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x81

    const-string v2, "pwdgen"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 540
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x82

    const-string v2, "cisco-fna"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 541
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x83

    const-string v2, "cisco-tna"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 542
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x84

    const-string v2, "cisco-sys"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 543
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x85

    const-string v2, "statsrv"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 544
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x86

    const-string v2, "ingres-net"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 545
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x87

    const-string v2, "loc-srv"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 546
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x88

    const-string v2, "profile"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 547
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x89

    const-string v2, "netbios-ns"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 548
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x8a

    const-string v2, "netbios-dgm"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 549
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x8b

    const-string v2, "netbios-ssn"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 550
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x8c

    const-string v2, "emfis-data"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 551
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x8d

    const-string v2, "emfis-cntl"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 552
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x8e

    const-string v2, "bl-idm"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 553
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xf3

    const-string v2, "sur-meas"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 554
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xf5

    const-string v2, "link"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 555
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 563
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 574
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
