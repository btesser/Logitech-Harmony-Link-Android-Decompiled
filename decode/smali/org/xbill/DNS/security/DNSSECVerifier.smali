.class public Lorg/xbill/DNS/security/DNSSECVerifier;
.super Ljava/lang/Object;
.source "DNSSECVerifier.java"

# interfaces
.implements Lorg/xbill/DNS/Verifier;


# instance fields
.field private trustedKeys:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/security/DNSSECVerifier;->trustedKeys:Ljava/util/Map;

    .line 27
    return-void
.end method

.method private findCachedKey(Lorg/xbill/DNS/Cache;Lorg/xbill/DNS/Name;II)Ljava/security/PublicKey;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    const/16 v0, 0x30

    invoke-virtual {p1, p2, v0}, Lorg/xbill/DNS/Cache;->findAnyRecords(Lorg/xbill/DNS/Name;I)[Lorg/xbill/DNS/RRset;

    move-result-object v0

    .line 71
    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    .line 73
    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 74
    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lorg/xbill/DNS/security/DNSSECVerifier;->findMatchingKey(Ljava/util/Iterator;II)Ljava/security/PublicKey;

    move-result-object v0

    goto :goto_0
.end method

.method private findKey(Lorg/xbill/DNS/Cache;Lorg/xbill/DNS/Name;II)Ljava/security/PublicKey;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p2, p3, p4}, Lorg/xbill/DNS/security/DNSSECVerifier;->findTrustedKey(Lorg/xbill/DNS/Name;II)Ljava/security/PublicKey;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/xbill/DNS/security/DNSSECVerifier;->findCachedKey(Lorg/xbill/DNS/Cache;Lorg/xbill/DNS/Name;II)Ljava/security/PublicKey;

    move-result-object v0

    .line 82
    :cond_0
    return-object v0
.end method

.method private findMatchingKey(Ljava/util/Iterator;II)Ljava/security/PublicKey;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xbill/DNS/DNSKEYRecord;

    .line 53
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSKEYRecord;->getAlgorithm()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lorg/xbill/DNS/DNSKEYRecord;->getFootprint()I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 55
    invoke-static {p0}, Lorg/xbill/DNS/security/KEYConverter;->parseRecord(Lorg/xbill/DNS/DNSKEYRecord;)Ljava/security/PublicKey;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized findTrustedKey(Lorg/xbill/DNS/Name;II)Ljava/security/PublicKey;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/security/DNSSECVerifier;->trustedKeys:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 65
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/xbill/DNS/security/DNSSECVerifier;->findMatchingKey(Ljava/util/Iterator;II)Ljava/security/PublicKey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private verifySIG(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/Cache;)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 87
    invoke-virtual {p2}, Lorg/xbill/DNS/RRSIGRecord;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p2}, Lorg/xbill/DNS/RRSIGRecord;->getAlgorithm()I

    move-result v1

    invoke-virtual {p2}, Lorg/xbill/DNS/RRSIGRecord;->getFootprint()I

    move-result v2

    invoke-direct {p0, p3, v0, v1, v2}, Lorg/xbill/DNS/security/DNSSECVerifier;->findKey(Lorg/xbill/DNS/Cache;Lorg/xbill/DNS/Name;II)Ljava/security/PublicKey;

    move-result-object v0

    .line 89
    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    .line 92
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 93
    invoke-virtual {p2}, Lorg/xbill/DNS/RRSIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-gtz v2, :cond_1

    invoke-virtual {p2}, Lorg/xbill/DNS/RRSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-gez v1, :cond_2

    .line 96
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Outside of validity period"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v4

    .line 97
    goto :goto_0

    .line 99
    :cond_2
    invoke-static {p2, p1}, Lorg/xbill/DNS/DNSSEC;->digestRRset(Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/RRset;)[B

    move-result-object v1

    .line 104
    invoke-virtual {p2}, Lorg/xbill/DNS/RRSIGRecord;->getAlgorithm()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v4

    .line 128
    goto :goto_0

    .line 106
    :pswitch_1
    invoke-virtual {p2}, Lorg/xbill/DNS/RRSIGRecord;->getSignature()[B

    move-result-object v2

    .line 107
    const-string v3, "MD5withRSA"

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    .line 132
    :goto_1
    :try_start_0
    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 133
    invoke-virtual {v2, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 134
    invoke-virtual {v2, v1}, Ljava/security/Signature;->update([B)V

    .line 135
    invoke-virtual {v2, v3}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    .line 111
    :pswitch_2
    invoke-virtual {p2}, Lorg/xbill/DNS/RRSIGRecord;->getSignature()[B

    move-result-object v2

    invoke-static {v2}, Lorg/xbill/DNS/security/DSASignature;->fromDNS([B)[B

    move-result-object v2

    .line 112
    const-string v3, "SHA1withDSA"

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    .line 113
    goto :goto_1

    .line 116
    :pswitch_3
    invoke-virtual {p2}, Lorg/xbill/DNS/RRSIGRecord;->getSignature()[B

    move-result-object v2

    .line 117
    const-string v3, "SHA1withRSA"

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    .line 118
    goto :goto_1

    .line 120
    :pswitch_4
    invoke-virtual {p2}, Lorg/xbill/DNS/RRSIGRecord;->getSignature()[B

    move-result-object v2

    .line 121
    const-string v3, "SHA256withRSA"

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    .line 122
    goto :goto_1

    .line 124
    :pswitch_5
    invoke-virtual {p2}, Lorg/xbill/DNS/RRSIGRecord;->getSignature()[B

    move-result-object v2

    .line 125
    const-string v3, "SHA512withRSA"

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    .line 126
    goto :goto_1

    :cond_3
    move v0, v4

    .line 135
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    const-string v1, "verboseexceptions"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 139
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signing data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    move v0, v4

    .line 140
    goto/16 :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized addTrustedKey(Lorg/xbill/DNS/DNSKEYRecord;)V
    .locals 3
    .parameter

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSKEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 33
    iget-object v0, p0, Lorg/xbill/DNS/security/DNSSECVerifier;->trustedKeys:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 34
    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lorg/xbill/DNS/security/DNSSECVerifier;->trustedKeys:Ljava/util/Map;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 36
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addTrustedKey(Lorg/xbill/DNS/Name;ILjava/security/PublicKey;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    const/16 v1, 0x30

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p1

    move v7, p2

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lorg/xbill/DNS/security/KEYConverter;->buildRecord(Lorg/xbill/DNS/Name;IIJIIILjava/security/PublicKey;)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    check-cast v0, Lorg/xbill/DNS/DNSKEYRecord;

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/security/DNSSECVerifier;->addTrustedKey(Lorg/xbill/DNS/DNSKEYRecord;)V

    .line 47
    :cond_0
    return-void
.end method

.method public verify(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/Cache;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 153
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->sigs()Ljava/util/Iterator;

    move-result-object v1

    .line 154
    const-string v0, "verbosesec"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verifying "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 157
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    const-string v0, "verbosesec"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Insecure"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    :cond_1
    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0

    .line 162
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/RRSIGRecord;

    .line 164
    invoke-direct {p0, p1, v0, p2}, Lorg/xbill/DNS/security/DNSSECVerifier;->verifySIG(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/Cache;)I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 165
    const-string v0, "verbosesec"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Secure"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    move v0, v4

    .line 167
    goto :goto_0

    .line 170
    :cond_4
    const-string v0, "verbosesec"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 171
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Failed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method
