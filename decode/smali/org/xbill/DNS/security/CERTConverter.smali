.class public Lorg/xbill/DNS/security/CERTConverter;
.super Ljava/lang/Object;
.source "CERTConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildRecord(Lorg/xbill/DNS/Name;IJLjava/security/cert/Certificate;)Lorg/xbill/DNS/CERTRecord;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 77
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v6, v5

    invoke-static/range {v0 .. v6}, Lorg/xbill/DNS/security/CERTConverter;->buildRecord(Lorg/xbill/DNS/Name;IJLjava/security/cert/Certificate;II)Lorg/xbill/DNS/CERTRecord;

    move-result-object v0

    return-object v0
.end method

.method public static buildRecord(Lorg/xbill/DNS/Name;IJLjava/security/cert/Certificate;II)Lorg/xbill/DNS/CERTRecord;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    :try_start_0
    instance-of v0, p4, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 59
    const/4 v5, 0x1

    .line 60
    invoke-virtual {p4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v8

    .line 65
    new-instance v0, Lorg/xbill/DNS/CERTRecord;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/xbill/DNS/CERTRecord;-><init>(Lorg/xbill/DNS/Name;IJIII[B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    .line 70
    :goto_0
    return-object p0

    .line 63
    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    const-string p1, "verboseexceptions"

    invoke-static {p1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 69
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cert build exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static parseRecord(Lorg/xbill/DNS/CERTRecord;)Ljava/security/cert/Certificate;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 23
    invoke-virtual {p0}, Lorg/xbill/DNS/CERTRecord;->getCertType()I

    move-result v0

    .line 24
    invoke-virtual {p0}, Lorg/xbill/DNS/CERTRecord;->getCert()[B

    move-result-object v1

    .line 27
    packed-switch v0, :pswitch_data_0

    move-object v0, v4

    .line 45
    :goto_0
    return-object v0

    .line 32
    :pswitch_0
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 33
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 34
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string v1, "verboseexceptions"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cert parse exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    move-object v0, v4

    .line 45
    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
