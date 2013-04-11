.class public Lorg/xbill/DNS/DNSOutput;
.super Ljava/lang/Object;
.source "DNSOutput.java"


# instance fields
.field private array:[B

.field private pos:I

.field private saved_pos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSOutput;-><init>(I)V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/DNSOutput;->saved_pos:I

    .line 27
    return-void
.end method

.method private check(JI)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 47
    const-wide/16 v0, 0x1

    .line 48
    shl-long/2addr v0, p3

    .line 49
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bit value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    return-void
.end method

.method private need(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 57
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    array-length v0, v0

    iget v1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 61
    iget v1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    .line 62
    iget v0, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    add-int/2addr v0, p1

    .line 64
    :cond_1
    new-array v0, v0, [B

    .line 65
    iget-object v1, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    iget v2, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iput-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    goto :goto_0
.end method


# virtual methods
.method public current()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    return v0
.end method

.method public jump(I)V
    .locals 2
    .parameter

    .prologue
    .line 76
    iget v0, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    if-le p1, v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot jump past end of data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iput p1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    .line 81
    return-void
.end method

.method public restore()V
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lorg/xbill/DNS/DNSOutput;->saved_pos:I

    if-gez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no previous state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iget v0, p0, Lorg/xbill/DNS/DNSOutput;->saved_pos:I

    iput v0, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/DNSOutput;->saved_pos:I

    .line 102
    return-void
.end method

.method public save()V
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    iput v0, p0, Lorg/xbill/DNS/DNSOutput;->saved_pos:I

    .line 90
    return-void
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 183
    iget v0, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    new-array v0, v0, [B

    .line 184
    iget-object v1, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    iget v2, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    return-object v0
.end method

.method public writeByteArray([B)V
    .locals 2
    .parameter

    .prologue
    .line 160
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 161
    return-void
.end method

.method public writeByteArray([BII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-direct {p0, p3}, Lorg/xbill/DNS/DNSOutput;->need(I)V

    .line 150
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    iget v1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iget v0, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    .line 152
    return-void
.end method

.method public writeCountedString([B)V
    .locals 3
    .parameter

    .prologue
    .line 170
    array-length v0, p1

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid counted string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSOutput;->need(I)V

    .line 174
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    iget v1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    array-length v2, p1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 175
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 176
    return-void
.end method

.method public writeU16(I)V
    .locals 3
    .parameter

    .prologue
    .line 121
    int-to-long v0, p1

    const/16 v2, 0x10

    invoke-direct {p0, v0, v1, v2}, Lorg/xbill/DNS/DNSOutput;->check(JI)V

    .line 122
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSOutput;->need(I)V

    .line 123
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    iget v1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 124
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    iget v1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 125
    return-void
.end method

.method public writeU32(J)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0xff

    .line 133
    const/16 v0, 0x20

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/DNSOutput;->check(JI)V

    .line 134
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSOutput;->need(I)V

    .line 135
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    iget v1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    const/16 v2, 0x18

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 136
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    iget v1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    const/16 v2, 0x10

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 137
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    iget v1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    const/16 v2, 0x8

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 138
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    iget v1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 139
    return-void
.end method

.method public writeU8(I)V
    .locals 3
    .parameter

    .prologue
    .line 110
    int-to-long v0, p1

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lorg/xbill/DNS/DNSOutput;->check(JI)V

    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSOutput;->need(I)V

    .line 112
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    iget v1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 113
    return-void
.end method
