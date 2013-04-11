.class public Lorg/xbill/DNS/DNSSEC$Algorithm;
.super Ljava/lang/Object;
.source "DNSSEC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/DNSSEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Algorithm"
.end annotation


# static fields
.field public static final DH:I = 0x2

.field public static final DSA:I = 0x3

.field public static final DSA_NSEC3_SHA1:I = 0x6

.field public static final ECC:I = 0x4

.field public static final INDIRECT:I = 0xfc

.field public static final PRIVATEDNS:I = 0xfd

.field public static final PRIVATEOID:I = 0xfe

.field public static final RSAMD5:I = 0x1

.field public static final RSASHA1:I = 0x5

.field public static final RSASHA256:I = 0x8

.field public static final RSASHA512:I = 0xa

.field public static final RSA_NSEC3_SHA1:I = 0x7

.field private static algs:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 63
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "DNSSEC algorithm"

    invoke-direct {v0, v1, v3}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    .line 67
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    .line 68
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 70
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "RSAMD5"

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 71
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "DH"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 72
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x3

    const-string v2, "DSA"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 73
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x4

    const-string v2, "ECC"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 74
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x5

    const-string v2, "RSASHA1"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 75
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x6

    const-string v2, "DSA-NSEC3-SHA1"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 76
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x7

    const-string v2, "RSA-NSEC3-SHA1"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 77
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x8

    const-string v2, "RSASHA256"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 78
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xa

    const-string v2, "RSASHA512"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 79
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xfc

    const-string v2, "INDIRECT"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 80
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xfd

    const-string v2, "PRIVATEDNS"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 81
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xfe

    const-string v2, "PRIVATEOID"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 82
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 89
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 100
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
