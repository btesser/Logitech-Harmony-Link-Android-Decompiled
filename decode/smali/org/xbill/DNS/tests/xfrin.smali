.class public Lorg/xbill/DNS/tests/xfrin;
.super Ljava/lang/Object;
.source "xfrin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 21
    .line 22
    const/4 v0, -0x1

    .line 24
    const/16 v1, 0x35

    move v3, v10

    move v5, v1

    move v7, v0

    move-object v6, v2

    move v0, v10

    move-object v1, v2

    .line 29
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_7

    .line 30
    aget-object v2, p0, v0

    const-string v4, "-i"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    add-int/lit8 v0, v0, 0x1

    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 32
    if-gez v2, :cond_13

    .line 33
    const-string v4, "invalid serial number"

    invoke-static {v4}, Lorg/xbill/DNS/tests/xfrin;->usage(Ljava/lang/String;)V

    move v4, v2

    move v2, v5

    move-object v5, v6

    move v12, v3

    move-object v3, v1

    move v1, v12

    .line 54
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v7, v4

    move-object v6, v5

    move v5, v2

    move v12, v1

    move-object v1, v3

    move v3, v12

    goto :goto_0

    .line 34
    :cond_0
    aget-object v2, p0, v0

    const-string v4, "-k"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 35
    add-int/lit8 v0, v0, 0x1

    aget-object v2, p0, v0

    .line 36
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 37
    if-gez v4, :cond_1

    .line 38
    const-string v6, "invalid key"

    invoke-static {v6}, Lorg/xbill/DNS/tests/xfrin;->usage(Ljava/lang/String;)V

    .line 39
    :cond_1
    new-instance v6, Lorg/xbill/DNS/TSIG;

    invoke-virtual {v2, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v8, v2}, Lorg/xbill/DNS/TSIG;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v5

    move v4, v7

    move-object v5, v6

    move v12, v3

    move-object v3, v1

    move v1, v12

    .line 41
    goto :goto_1

    :cond_2
    aget-object v2, p0, v0

    const-string v4, "-s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 42
    add-int/lit8 v0, v0, 0x1

    aget-object v1, p0, v0

    move v2, v5

    move v4, v7

    move-object v5, v6

    move v12, v3

    move-object v3, v1

    move v1, v12

    goto :goto_1

    .line 43
    :cond_3
    aget-object v2, p0, v0

    const-string v4, "-p"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 44
    add-int/lit8 v0, v0, 0x1

    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 45
    if-ltz v2, :cond_4

    const v4, 0xffff

    if-le v2, v4, :cond_12

    .line 46
    :cond_4
    const-string v4, "invalid port"

    invoke-static {v4}, Lorg/xbill/DNS/tests/xfrin;->usage(Ljava/lang/String;)V

    move v4, v7

    move-object v5, v6

    move v12, v3

    move-object v3, v1

    move v1, v12

    goto :goto_1

    .line 47
    :cond_5
    aget-object v2, p0, v0

    const-string v4, "-f"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v5

    move-object v3, v1

    move v4, v7

    move v1, v11

    move-object v5, v6

    .line 48
    goto/16 :goto_1

    .line 49
    :cond_6
    aget-object v2, p0, v0

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 50
    const-string v2, "invalid option"

    invoke-static {v2}, Lorg/xbill/DNS/tests/xfrin;->usage(Ljava/lang/String;)V

    move v2, v5

    move v4, v7

    move-object v5, v6

    move v12, v3

    move-object v3, v1

    move v1, v12

    goto/16 :goto_1

    .line 56
    :cond_7
    array-length v2, p0

    if-lt v0, v2, :cond_8

    .line 57
    const-string v2, "no zone name specified"

    invoke-static {v2}, Lorg/xbill/DNS/tests/xfrin;->usage(Ljava/lang/String;)V

    .line 58
    :cond_8
    aget-object v0, p0, v0

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 60
    if-nez v1, :cond_a

    .line 61
    new-instance v1, Lorg/xbill/DNS/Lookup;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 62
    invoke-virtual {v1}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 63
    if-nez v2, :cond_9

    .line 64
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to look up NS record: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lorg/xbill/DNS/Lookup;->getErrorString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    .line 68
    :cond_9
    aget-object v1, v2, v10

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->rdataToString()Ljava/lang/String;

    move-result-object v1

    .line 69
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sending to server \'"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\'"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    move-object v4, v1

    .line 72
    if-ltz v7, :cond_b

    .line 73
    int-to-long v1, v7

    invoke-static/range {v0 .. v6}, Lorg/xbill/DNS/ZoneTransferIn;->newIXFR(Lorg/xbill/DNS/Name;JZLjava/lang/String;ILorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v0

    .line 78
    :goto_2
    invoke-virtual {v0}, Lorg/xbill/DNS/ZoneTransferIn;->run()Ljava/util/List;

    move-result-object v1

    .line 79
    invoke-virtual {v0}, Lorg/xbill/DNS/ZoneTransferIn;->isAXFR()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 80
    if-ltz v7, :cond_c

    .line 81
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "AXFR-like IXFR response"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 85
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 86
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_4

    .line 76
    :cond_b
    invoke-static {v0, v4, v5, v6}, Lorg/xbill/DNS/ZoneTransferIn;->newAXFR(Lorg/xbill/DNS/Name;Ljava/lang/String;ILorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v0

    goto :goto_2

    .line 83
    :cond_c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "AXFR response"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 87
    :cond_d
    invoke-virtual {v0}, Lorg/xbill/DNS/ZoneTransferIn;->isIXFR()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 88
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "IXFR response"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 90
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xbill/DNS/ZoneTransferIn$Delta;

    .line 93
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delta from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lorg/xbill/DNS/ZoneTransferIn$Delta;->start:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lorg/xbill/DNS/ZoneTransferIn$Delta;->end:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "deletes"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lorg/xbill/DNS/ZoneTransferIn$Delta;->deletes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 97
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 98
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_5

    .line 99
    :cond_f
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "adds"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lorg/xbill/DNS/ZoneTransferIn$Delta;->adds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 101
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 102
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_6

    .line 104
    :cond_10
    invoke-virtual {v0}, Lorg/xbill/DNS/ZoneTransferIn;->isCurrent()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 105
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "up to date"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    :cond_11
    return-void

    :cond_12
    move v4, v7

    move-object v5, v6

    move v12, v3

    move-object v3, v1

    move v1, v12

    goto/16 :goto_1

    :cond_13
    move v4, v2

    move v2, v5

    move-object v5, v6

    move v12, v3

    move-object v3, v1

    move v1, v12

    goto/16 :goto_1
.end method

.method private static usage(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 12
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "usage: xfrin [-i serial] [-k keyname/secret] [-s server] [-p port] [-f] zone"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 16
    return-void
.end method
