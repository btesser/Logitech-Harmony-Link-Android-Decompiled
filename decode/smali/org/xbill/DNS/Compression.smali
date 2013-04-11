.class public Lorg/xbill/DNS/Compression;
.super Ljava/lang/Object;
.source "Compression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/Compression$1;,
        Lorg/xbill/DNS/Compression$Entry;
    }
.end annotation


# static fields
.field private static final MAX_POINTER:I = 0x3fff

.field private static final TABLE_SIZE:I = 0x11


# instance fields
.field private table:[Lorg/xbill/DNS/Compression$Entry;

.field private verbose:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "verbosecompression"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/xbill/DNS/Compression;->verbose:Z

    .line 31
    const/16 v0, 0x11

    new-array v0, v0, [Lorg/xbill/DNS/Compression$Entry;

    iput-object v0, p0, Lorg/xbill/DNS/Compression;->table:[Lorg/xbill/DNS/Compression$Entry;

    .line 32
    return-void
.end method


# virtual methods
.method public add(ILorg/xbill/DNS/Name;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 41
    const/16 v0, 0x3fff

    if-le p1, v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {p2}, Lorg/xbill/DNS/Name;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x11

    .line 44
    new-instance v1, Lorg/xbill/DNS/Compression$Entry;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Compression$Entry;-><init>(Lorg/xbill/DNS/Compression$1;)V

    .line 45
    iput-object p2, v1, Lorg/xbill/DNS/Compression$Entry;->name:Lorg/xbill/DNS/Name;

    .line 46
    iput p1, v1, Lorg/xbill/DNS/Compression$Entry;->pos:I

    .line 47
    iget-object v2, p0, Lorg/xbill/DNS/Compression;->table:[Lorg/xbill/DNS/Compression$Entry;

    aget-object v2, v2, v0

    iput-object v2, v1, Lorg/xbill/DNS/Compression$Entry;->next:Lorg/xbill/DNS/Compression$Entry;

    .line 48
    iget-object v2, p0, Lorg/xbill/DNS/Compression;->table:[Lorg/xbill/DNS/Compression$Entry;

    aput-object v1, v2, v0

    .line 49
    iget-boolean v0, p0, Lorg/xbill/DNS/Compression;->verbose:Z

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public get(Lorg/xbill/DNS/Name;)I
    .locals 4
    .parameter

    .prologue
    .line 61
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x11

    .line 62
    const/4 v1, -0x1

    .line 63
    iget-object v2, p0, Lorg/xbill/DNS/Compression;->table:[Lorg/xbill/DNS/Compression$Entry;

    aget-object v0, v2, v0

    :goto_0
    if-eqz v0, :cond_1

    .line 64
    iget-object v2, v0, Lorg/xbill/DNS/Compression$Entry;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, p1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    iget v1, v0, Lorg/xbill/DNS/Compression$Entry;->pos:I

    .line 63
    :cond_0
    iget-object v0, v0, Lorg/xbill/DNS/Compression$Entry;->next:Lorg/xbill/DNS/Compression$Entry;

    goto :goto_0

    .line 67
    :cond_1
    iget-boolean v0, p0, Lorg/xbill/DNS/Compression;->verbose:Z

    if-eqz v0, :cond_2

    .line 68
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    :cond_2
    return v1
.end method
