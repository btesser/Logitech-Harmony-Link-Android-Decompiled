.class public Lorg/xbill/DNS/TSIG;
.super Ljava/lang/Object;
.source "TSIG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/TSIG$StreamVerifier;
    }
.end annotation


# static fields
.field public static final FUDGE:S = 0x12cs

.field public static final HMAC:Lorg/xbill/DNS/Name; = null

.field public static final HMAC_MD5:Lorg/xbill/DNS/Name; = null

.field private static final HMAC_MD5_STR:Ljava/lang/String; = "HMAC-MD5.SIG-ALG.REG.INT."

.field public static final HMAC_SHA1:Lorg/xbill/DNS/Name; = null

.field private static final HMAC_SHA1_STR:Ljava/lang/String; = "hmac-sha1."

.field public static final HMAC_SHA256:Lorg/xbill/DNS/Name; = null

.field private static final HMAC_SHA256_STR:Ljava/lang/String; = "hmac-sha256."


# instance fields
.field private alg:Lorg/xbill/DNS/Name;

.field private digest:Ljava/lang/String;

.field private key:[B

.field private name:Lorg/xbill/DNS/Name;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "HMAC-MD5.SIG-ALG.REG.INT."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    .line 26
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC:Lorg/xbill/DNS/Name;

    .line 29
    const-string v0, "hmac-sha1."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA1:Lorg/xbill/DNS/Name;

    .line 32
    const-string v0, "hmac-sha256."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA256:Lorg/xbill/DNS/Name;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 135
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, p2, p3}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "hmac-md5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 122
    :goto_0
    invoke-direct {p0}, Lorg/xbill/DNS/TSIG;->getDigest()V

    .line 123
    return-void

    .line 116
    :cond_0
    const-string v0, "hmac-sha1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA1:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 118
    :cond_1
    const-string v0, "hmac-sha256"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA256:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 121
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid TSIG algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p3}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->key:[B

    .line 91
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->key:[B

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid TSIG key string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    :try_start_0
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p2, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    iput-object p1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 100
    invoke-direct {p0}, Lorg/xbill/DNS/TSIG;->getDigest()V

    .line 101
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid TSIG key name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;[B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    .line 65
    iput-object p1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 66
    iput-object p3, p0, Lorg/xbill/DNS/TSIG;->key:[B

    .line 67
    invoke-direct {p0}, Lorg/xbill/DNS/TSIG;->getDigest()V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;[B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;[B)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lorg/xbill/DNS/TSIG;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/xbill/DNS/TSIG;)[B
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->key:[B

    return-object v0
.end method

.method static synthetic access$200(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method static synthetic access$300(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/xbill/DNS/TSIG;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 151
    const-string v0, "[:/]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 152
    array-length v1, v0

    if-lt v1, v5, :cond_0

    array-length v1, v0

    if-le v1, v2, :cond_1

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid TSIG key specification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1
    array-length v1, v0

    if-ne v1, v2, :cond_2

    .line 156
    new-instance v1, Lorg/xbill/DNS/TSIG;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    aget-object v0, v0, v5

    invoke-direct {v1, v2, v3, v0}, Lorg/xbill/DNS/TSIG;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 158
    :goto_0
    return-object v0

    :cond_2
    new-instance v1, Lorg/xbill/DNS/TSIG;

    sget-object v2, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    aget-object v3, v0, v3

    aget-object v0, v0, v4

    invoke-direct {v1, v2, v3, v0}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private getDigest()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "md5"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    .line 54
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA1:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    const-string v0, "sha-1"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA256:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    const-string v0, "sha-256"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    goto :goto_0

    .line 53
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public apply(Lorg/xbill/DNS/Message;ILorg/xbill/DNS/TSIGRecord;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 247
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/xbill/DNS/TSIG;->generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;

    move-result-object v0

    .line 248
    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 249
    iput v1, p1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 250
    return-void
.end method

.method public apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;ILorg/xbill/DNS/TSIGRecord;)V

    .line 260
    return-void
.end method

.method public applyStream(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;Z)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 269
    if-eqz p3, :cond_0

    .line 270
    invoke-virtual {p0, p1, p2}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V

    .line 307
    :goto_0
    return-void

    .line 273
    :cond_0
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 275
    new-instance v0, Lorg/xbill/DNS/utils/HMAC;

    iget-object v1, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    iget-object v2, p0, Lorg/xbill/DNS/TSIG;->key:[B

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;[B)V

    .line 277
    const-string v1, "tsigfudge"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v1

    .line 278
    if-ltz v1, :cond_1

    const/16 v2, 0x7fff

    if-le v1, v2, :cond_2

    .line 279
    :cond_1
    const/16 v1, 0x12c

    move v7, v1

    .line 281
    :goto_1
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 282
    invoke-virtual {p2}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 283
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 284
    invoke-virtual {p2}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 287
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 289
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 290
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 291
    const/16 v4, 0x20

    shr-long v4, v2, v4

    long-to-int v4, v4

    .line 292
    const-wide v8, 0xffffffffL

    and-long/2addr v2, v8

    .line 293
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 294
    invoke-virtual {v1, v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 295
    invoke-virtual {v1, v7}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 297
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 299
    invoke-virtual {v0}, Lorg/xbill/DNS/utils/HMAC;->sign()[B

    move-result-object v8

    .line 300
    const/4 v11, 0x0

    .line 302
    new-instance v0, Lorg/xbill/DNS/TSIGRecord;

    iget-object v1, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    const/16 v2, 0xff

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v9

    invoke-virtual {v9}, Lorg/xbill/DNS/Header;->getID()I

    move-result v9

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v11}, Lorg/xbill/DNS/TSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Ljava/util/Date;I[BII[B)V

    .line 305
    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 306
    const/4 v0, 0x3

    iput v0, p1, Lorg/xbill/DNS/Message;->tsigState:I

    goto/16 :goto_0

    :cond_2
    move v7, v1

    goto :goto_1
.end method

.method public generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    const/16 v0, 0x12

    if-eq p3, v0, :cond_6

    .line 174
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    move-object v6, v0

    .line 178
    :goto_0
    const/4 v0, 0x0

    .line 179
    if-eqz p3, :cond_0

    const/16 v1, 0x12

    if-ne p3, v1, :cond_1

    .line 180
    :cond_0
    new-instance v0, Lorg/xbill/DNS/utils/HMAC;

    iget-object v1, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    iget-object v2, p0, Lorg/xbill/DNS/TSIG;->key:[B

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;[B)V

    .line 182
    :cond_1
    const-string v1, "tsigfudge"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v1

    .line 183
    if-ltz v1, :cond_2

    const/16 v2, 0x7fff

    if-le v1, v2, :cond_9

    .line 184
    :cond_2
    const/16 v1, 0x12c

    move v7, v1

    .line 186
    :goto_1
    if-eqz p4, :cond_3

    .line 187
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 188
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 189
    if-eqz v0, :cond_3

    .line 190
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 191
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 196
    :cond_3
    if-eqz v0, :cond_4

    .line 197
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 199
    :cond_4
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 200
    iget-object v2, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 201
    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 202
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 203
    iget-object v2, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 204
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 205
    const/16 v4, 0x20

    shr-long v4, v2, v4

    long-to-int v4, v4

    .line 206
    const-wide v8, 0xffffffffL

    and-long/2addr v2, v8

    .line 207
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 208
    invoke-virtual {v1, v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 209
    invoke-virtual {v1, v7}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 211
    invoke-virtual {v1, p3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 212
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 214
    if-eqz v0, :cond_5

    .line 215
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 218
    :cond_5
    if-eqz v0, :cond_7

    .line 219
    invoke-virtual {v0}, Lorg/xbill/DNS/utils/HMAC;->sign()[B

    move-result-object v0

    move-object v8, v0

    .line 223
    :goto_2
    const/4 v0, 0x0

    .line 224
    const/16 v1, 0x12

    if-ne p3, v1, :cond_8

    .line 225
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 226
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 227
    const/16 v3, 0x20

    shr-long v3, v1, v3

    long-to-int v3, v3

    .line 228
    const-wide v4, 0xffffffffL

    and-long/2addr v1, v4

    .line 229
    invoke-virtual {v0, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 230
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 231
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    move-object v11, v0

    .line 234
    :goto_3
    new-instance v0, Lorg/xbill/DNS/TSIGRecord;

    iget-object v1, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    const/16 v2, 0xff

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v9

    invoke-virtual {v9}, Lorg/xbill/DNS/Header;->getID()I

    move-result v9

    move v10, p3

    invoke-direct/range {v0 .. v11}, Lorg/xbill/DNS/TSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Ljava/util/Date;I[BII[B)V

    return-object v0

    .line 176
    :cond_6
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_0

    .line 221
    :cond_7
    const/4 v0, 0x0

    new-array v0, v0, [B

    move-object v8, v0

    goto :goto_2

    :cond_8
    move-object v11, v0

    goto :goto_3

    :cond_9
    move v7, v1

    goto/16 :goto_1
.end method

.method public recordLength()I
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x12

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public verify(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)B
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    const/4 v0, 0x4

    iput v0, p1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 326
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v0

    .line 327
    new-instance v1, Lorg/xbill/DNS/utils/HMAC;

    iget-object v2, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    iget-object v3, p0, Lorg/xbill/DNS/TSIG;->key:[B

    invoke-direct {v1, v2, v3}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;[B)V

    .line 328
    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x1

    .line 388
    :goto_0
    return v0

    .line 331
    :cond_0
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    iget-object v3, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v2

    iget-object v3, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 332
    :cond_1
    const-string v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "BADKEY failure"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 334
    :cond_2
    const/16 v0, 0x11

    goto :goto_0

    .line 336
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 337
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 338
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v6

    int-to-long v6, v6

    .line 339
    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 340
    const-string v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 341
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "BADTIME failure"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 342
    :cond_4
    const/16 v0, 0x12

    goto :goto_0

    .line 345
    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_6

    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_6

    .line 348
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 349
    invoke-virtual {p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 350
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 351
    invoke-virtual {p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 353
    :cond_6
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 354
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->toWire()[B

    move-result-object v2

    .line 355
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Header;->incCount(I)V

    .line 356
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 358
    iget v3, p1, Lorg/xbill/DNS/Message;->tsigstart:I

    array-length v4, v2

    sub-int/2addr v3, v4

    .line 359
    array-length v2, v2

    invoke-virtual {v1, p2, v2, v3}, Lorg/xbill/DNS/utils/HMAC;->update([BII)V

    .line 361
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 362
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 363
    iget v3, v0, Lorg/xbill/DNS/TSIGRecord;->dclass:I

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 364
    iget-wide v3, v0, Lorg/xbill/DNS/TSIGRecord;->ttl:J

    invoke-virtual {v2, v3, v4}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 365
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 366
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 367
    const/16 v5, 0x20

    shr-long v5, v3, v5

    long-to-int v5, v5

    .line 368
    const-wide v6, 0xffffffffL

    and-long/2addr v3, v6

    .line 369
    invoke-virtual {v2, v5}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 370
    invoke-virtual {v2, v3, v4}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 371
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 372
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 373
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v3

    if-eqz v3, :cond_7

    .line 374
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 375
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 380
    :goto_1
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 382
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/utils/HMAC;->verify([B)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 383
    const/4 v0, 0x1

    iput v0, p1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 384
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 377
    :cond_7
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    goto :goto_1

    .line 386
    :cond_8
    const-string v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 387
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "BADSIG failure"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 388
    :cond_9
    const/16 v0, 0x10

    goto/16 :goto_0
.end method

.method public verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 407
    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)B

    move-result v0

    return v0
.end method
