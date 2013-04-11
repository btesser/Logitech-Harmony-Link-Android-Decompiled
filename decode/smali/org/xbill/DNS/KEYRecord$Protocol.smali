.class public Lorg/xbill/DNS/KEYRecord$Protocol;
.super Ljava/lang/Object;
.source "KEYRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/KEYRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Protocol"
.end annotation


# static fields
.field public static final ANY:I = 0xff

.field public static final DNSSEC:I = 0x3

.field public static final EMAIL:I = 0x2

.field public static final IPSEC:I = 0x4

.field public static final NONE:I = 0x0

.field public static final TLS:I = 0x1

.field private static protocols:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xff

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 45
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "KEY protocol"

    invoke-direct {v0, v1, v4}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/KEYRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 49
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, v5}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    .line 50
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 52
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 53
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "TLS"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 54
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "EMAIL"

    invoke-virtual {v0, v4, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 55
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x3

    const-string v2, "DNSSEC"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 56
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x4

    const-string v2, "IPSEC"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 57
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "ANY"

    invoke-virtual {v0, v5, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 58
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
    .line 65
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 76
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
