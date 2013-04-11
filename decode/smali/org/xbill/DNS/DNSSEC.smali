.class public Lorg/xbill/DNS/DNSSEC;
.super Ljava/lang/Object;
.source "DNSSEC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/DNSSEC$Algorithm;
    }
.end annotation


# static fields
.field public static final DH:I = 0x2

.field public static final DSA:I = 0x3

.field public static final DSA_NSEC3_SHA1:I = 0x6

.field public static final Failed:I = -0x1

.field public static final Insecure:I = 0x0

.field public static final RSA:I = 0x1

.field public static final RSAMD5:I = 0x1

.field public static final RSASHA1:I = 0x5

.field public static final RSASHA256:I = 0x8

.field public static final RSASHA512:I = 0xa

.field public static final RSA_NSEC3_SHA1:I = 0x7

.field public static final Secure:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static digestMessage(Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/Message;[B)[B
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 193
    invoke-static {v0, p0}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    .line 195
    if-eqz p2, :cond_0

    .line 196
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 198
    :cond_0
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Message;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 199
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static digestRRset(Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/RRset;)[B
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 143
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 144
    invoke-static {v1, p0}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    .line 146
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->size()I

    move-result v0

    .line 147
    new-array v2, v0, [Lorg/xbill/DNS/Record;

    .line 149
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v3

    .line 150
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    .line 151
    const/4 v5, 0x0

    .line 152
    invoke-virtual {p0}, Lorg/xbill/DNS/RRSIGRecord;->getLabels()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 153
    invoke-virtual {v4}, Lorg/xbill/DNS/Name;->labels()I

    move-result v7

    if-le v7, v6, :cond_0

    .line 154
    invoke-virtual {v4}, Lorg/xbill/DNS/Name;->labels()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/Name;->wild(I)Lorg/xbill/DNS/Name;

    move-result-object v5

    .line 155
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 156
    add-int/lit8 v6, v0, -0x1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    aput-object v0, v2, v6

    move v0, v6

    goto :goto_0

    .line 157
    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 159
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 160
    if-eqz v5, :cond_2

    .line 161
    invoke-virtual {v5, v0}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 164
    :goto_1
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 165
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 166
    invoke-virtual {p0}, Lorg/xbill/DNS/RRSIGRecord;->getOrigTTL()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    move v3, v8

    .line 167
    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 168
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 169
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v4

    .line 170
    invoke-virtual {v1, v8}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 171
    aget-object v5, v2, v3

    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 172
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v5

    sub-int/2addr v5, v4

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    .line 173
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->save()V

    .line 174
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    .line 175
    invoke-virtual {v1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 176
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->restore()V

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 163
    :cond_2
    invoke-virtual {v4, v0}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    goto :goto_1

    .line 178
    :cond_3
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x3e8

    .line 123
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getTypeCovered()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 124
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getAlgorithm()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 125
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getLabels()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 126
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getOrigTTL()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 127
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getExpire()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 128
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getTimeSigned()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 129
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getFootprint()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 130
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 131
    return-void
.end method
