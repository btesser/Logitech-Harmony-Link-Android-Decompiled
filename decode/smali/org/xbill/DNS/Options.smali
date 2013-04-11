.class public final Lorg/xbill/DNS/Options;
.super Ljava/lang/Object;
.source "Options.java"


# static fields
.field private static table:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    :try_start_0
    invoke-static {}, Lorg/xbill/DNS/Options;->refresh()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 92
    sget-object v0, Lorg/xbill/DNS/Options;->table:Ljava/util/Map;

    if-nez v0, :cond_0

    move v0, v2

    .line 94
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/xbill/DNS/Options;->table:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lorg/xbill/DNS/Options;->table:Ljava/util/Map;

    .line 63
    return-void
.end method

.method public static intValue(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 110
    invoke-static {p0}, Lorg/xbill/DNS/Options;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 113
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 114
    if-lez v0, :cond_0

    .line 120
    :goto_0
    return v0

    .line 117
    :catch_0
    move-exception v0

    .line 120
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static refresh()V
    .locals 4

    .prologue
    .line 42
    const-string v0, "dnsjava.options"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 47
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 48
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 49
    invoke-static {v0}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 52
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v3, v0}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_1
    return-void
.end method

.method public static set(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 68
    sget-object v0, Lorg/xbill/DNS/Options;->table:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Options;->table:Ljava/util/Map;

    .line 70
    :cond_0
    sget-object v0, Lorg/xbill/DNS/Options;->table:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 76
    sget-object v0, Lorg/xbill/DNS/Options;->table:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Options;->table:Ljava/util/Map;

    .line 78
    :cond_0
    sget-object v0, Lorg/xbill/DNS/Options;->table:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public static unset(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    sget-object v0, Lorg/xbill/DNS/Options;->table:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    sget-object v0, Lorg/xbill/DNS/Options;->table:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static value(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 100
    sget-object v0, Lorg/xbill/DNS/Options;->table:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/xbill/DNS/Options;->table:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method
