.class public Lorg/xbill/DNS/tests/primary;
.super Ljava/lang/Object;
.source "primary.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 18
    .line 23
    array-length v0, p0

    if-ge v0, v8, :cond_8

    move v0, v6

    move v1, v6

    move v2, v6

    move v3, v6

    .line 24
    invoke-static {}, Lorg/xbill/DNS/tests/primary;->usage()V

    .line 26
    :goto_0
    array-length v4, p0

    sub-int/2addr v4, v0

    if-le v4, v8, :cond_3

    .line 27
    aget-object v4, p0, v6

    const-string v5, "-t"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v7

    .line 33
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_1
    aget-object v4, p0, v6

    const-string v5, "-a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v7

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    aget-object v4, p0, v6

    const-string v5, "-i"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v7

    .line 32
    goto :goto_1

    .line 36
    :cond_3
    add-int/lit8 v4, v0, 0x1

    aget-object v0, p0, v0

    sget-object v5, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v0, v5}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 37
    add-int/lit8 v5, v4, 0x1

    aget-object v4, p0, v4

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 40
    new-instance v7, Lorg/xbill/DNS/Zone;

    invoke-direct {v7, v0, v4}, Lorg/xbill/DNS/Zone;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 42
    if-eqz v2, :cond_4

    .line 43
    invoke-virtual {v7}, Lorg/xbill/DNS/Zone;->AXFR()Ljava/util/Iterator;

    move-result-object v0

    .line 44
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 45
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 47
    :cond_4
    if-eqz v1, :cond_5

    .line 48
    invoke-virtual {v7}, Lorg/xbill/DNS/Zone;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 49
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 50
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_3

    .line 53
    :cond_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 55
    :cond_6
    if-eqz v3, :cond_7

    .line 56
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; Load time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v2, v8, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    :cond_7
    return-void

    :cond_8
    move v0, v6

    move v1, v6

    move v2, v6

    move v3, v6

    goto/16 :goto_0
.end method

.method private static usage()V
    .locals 2

    .prologue
    .line 12
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "usage: primary [-t] [-a | -i] origin file"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 14
    return-void
.end method
