.class public Lorg/xbill/DNS/CERTRecord$CertificateType;
.super Ljava/lang/Object;
.source "CERTRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/CERTRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CertificateType"
.end annotation


# static fields
.field public static final ACPKIX:I = 0x7

.field public static final IACPKIX:I = 0x8

.field public static final IPGP:I = 0x6

.field public static final IPKIX:I = 0x4

.field public static final ISPKI:I = 0x5

.field public static final OID:I = 0xfe

.field public static final PGP:I = 0x3

.field public static final PKIX:I = 0x1

.field public static final SPKI:I = 0x2

.field public static final URI:I = 0xfd

.field private static types:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 53
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "Certificate type"

    invoke-direct {v0, v1, v4}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/CERTRecord$CertificateType;->types:Lorg/xbill/DNS/Mnemonic;

    .line 57
    sget-object v0, Lorg/xbill/DNS/CERTRecord$CertificateType;->types:Lorg/xbill/DNS/Mnemonic;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    .line 58
    sget-object v0, Lorg/xbill/DNS/CERTRecord$CertificateType;->types:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 60
    sget-object v0, Lorg/xbill/DNS/CERTRecord$CertificateType;->types:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "PKIX"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 61
    sget-object v0, Lorg/xbill/DNS/CERTRecord$CertificateType;->types:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "SPKI"

    invoke-virtual {v0, v4, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 62
    sget-object v0, Lorg/xbill/DNS/CERTRecord$CertificateType;->types:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "PGP"

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 63
    sget-object v0, Lorg/xbill/DNS/CERTRecord$CertificateType;->types:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "IPKIX"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 64
    sget-object v0, Lorg/xbill/DNS/CERTRecord$CertificateType;->types:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "ISPKI"

    invoke-virtual {v0, v4, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 65
    sget-object v0, Lorg/xbill/DNS/CERTRecord$CertificateType;->types:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "IPGP"

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 66
    sget-object v0, Lorg/xbill/DNS/CERTRecord$CertificateType;->types:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "ACPKIX"

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 67
    sget-object v0, Lorg/xbill/DNS/CERTRecord$CertificateType;->types:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "IACPKIX"

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 68
    sget-object v0, Lorg/xbill/DNS/CERTRecord$CertificateType;->types:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xfd

    const-string v2, "URI"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 69
    sget-object v0, Lorg/xbill/DNS/CERTRecord$CertificateType;->types:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xfe

    const-string v2, "OID"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 70
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 77
    sget-object v0, Lorg/xbill/DNS/CERTRecord$CertificateType;->types:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 88
    sget-object v0, Lorg/xbill/DNS/CERTRecord$CertificateType;->types:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
