.class public Lorg/xbill/DNS/NSEC3Record;
.super Lorg/xbill/DNS/Record;
.source "NSEC3Record.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/NSEC3Record$Flags;
    }
.end annotation


# static fields
.field public static final SHA1_DIGEST_ID:B = 0x1t

.field private static final b32:Lorg/xbill/DNS/utils/base32; = null

.field private static final serialVersionUID:J = -0x62dbc5b976c6cbf7L


# instance fields
.field private flags:I

.field private hashAlg:I

.field private iterations:I

.field private next:[B

.field private salt:[B

.field private types:Lorg/xbill/DNS/TypeBitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    new-instance v0, Lorg/xbill/DNS/utils/base32;

    const-string v1, "0123456789ABCDEFGHIJKLMNOPQRSTUV="

    invoke-direct {v0, v1, v2, v2}, Lorg/xbill/DNS/utils/base32;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/xbill/DNS/NSEC3Record;->b32:Lorg/xbill/DNS/utils/base32;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIII[B[B[I)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    const/16 v7, 0x32

    move-object v5, p0

    move-object v6, p1

    move v8, p2

    move-wide v9, p3

    invoke-direct/range {v5 .. v10}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 75
    const-string v5, "hashAlg"

    move-object v0, v5

    move/from16 v1, p5

    invoke-static {v0, v1}, Lorg/xbill/DNS/NSEC3Record;->checkU8(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    .line 76
    const-string v5, "flags"

    move-object v0, v5

    move/from16 v1, p6

    invoke-static {v0, v1}, Lorg/xbill/DNS/NSEC3Record;->checkU8(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lorg/xbill/DNS/NSEC3Record;->flags:I

    .line 77
    const-string v5, "iterations"

    move-object v0, v5

    move/from16 v1, p7

    invoke-static {v0, v1}, Lorg/xbill/DNS/NSEC3Record;->checkU16(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    .line 79
    if-eqz p8, :cond_1

    .line 80
    move-object/from16 v0, p8

    array-length v0, v0

    move v5, v0

    const/16 v6, 0xff

    if-le v5, v6, :cond_0

    .line 81
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid salt"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 82
    :cond_0
    move-object/from16 v0, p8

    array-length v0, v0

    move v5, v0

    if-lez v5, :cond_1

    .line 83
    move-object/from16 v0, p8

    array-length v0, v0

    move v5, v0

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    .line 84
    const/4 v5, 0x0

    iget-object v6, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    const/4 v7, 0x0

    move-object/from16 v0, p8

    array-length v0, v0

    move v8, v0

    move-object/from16 v0, p8

    move v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    :cond_1
    move-object/from16 v0, p9

    array-length v0, v0

    move v5, v0

    const/16 v6, 0xff

    if-le v5, v6, :cond_2

    .line 89
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid next hash"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 91
    :cond_2
    move-object/from16 v0, p9

    array-length v0, v0

    move v5, v0

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    .line 92
    const/4 v5, 0x0

    iget-object v6, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    const/4 v7, 0x0

    move-object/from16 v0, p9

    array-length v0, v0

    move v8, v0

    move-object/from16 v0, p9

    move v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    new-instance v5, Lorg/xbill/DNS/TypeBitmap;

    move-object v0, v5

    move-object/from16 v1, p10

    invoke-direct {v0, v1}, Lorg/xbill/DNS/TypeBitmap;-><init>([I)V

    iput-object v5, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/TypeBitmap;

    .line 94
    return-void
.end method

.method static hashName(Lorg/xbill/DNS/Name;II[B)[B
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 224
    packed-switch p1, :pswitch_data_0

    .line 229
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown NSEC3 algorithmidentifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :pswitch_0
    const-string v0, "sha-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 233
    const/4 v1, 0x0

    .line 234
    const/4 v2, 0x0

    move v3, v2

    move-object v2, v1

    move v1, v3

    :goto_0
    if-gt v1, p2, :cond_2

    .line 235
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 236
    if-nez v1, :cond_1

    .line 237
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->toWireCanonical()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 240
    :goto_1
    if-eqz p3, :cond_0

    .line 241
    invoke-virtual {v0, p3}, Ljava/security/MessageDigest;->update([B)V

    .line 242
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_1

    .line 244
    :cond_2
    return-object v2

    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->flags:I

    return v0
.end method

.method public getHashAlgorithm()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    return v0
.end method

.method public getIterations()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    return v0
.end method

.method public getNext()[B
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lorg/xbill/DNS/NSEC3Record;

    invoke-direct {v0}, Lorg/xbill/DNS/NSEC3Record;-><init>()V

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    return-object v0
.end method

.method public getTypes()[I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/TypeBitmap;

    invoke-virtual {v0}, Lorg/xbill/DNS/TypeBitmap;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public hasType(I)Z
    .locals 1
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/TypeBitmap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/TypeBitmap;->contains(I)Z

    move-result v0

    return v0
.end method

.method public hashName(Lorg/xbill/DNS/Name;)[B
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 256
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    iget v1, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    iget-object v2, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    invoke-static {p1, v0, v1, v2}, Lorg/xbill/DNS/NSEC3Record;->hashName(Lorg/xbill/DNS/Name;II[B)[B

    move-result-object v0

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    .line 133
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3Record;->flags:I

    .line 134
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    .line 136
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    .line 146
    :cond_0
    sget-object v0, Lorg/xbill/DNS/NSEC3Record;->b32:Lorg/xbill/DNS/utils/base32;

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->getBase32String(Lorg/xbill/DNS/utils/base32;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    .line 147
    new-instance v0, Lorg/xbill/DNS/TypeBitmap;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/TypeBitmap;-><init>(Lorg/xbill/DNS/Tokenizer;)V

    iput-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/TypeBitmap;

    .line 148
    return-void

    .line 140
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 141
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getHexString()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    .line 142
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    array-length v0, v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 143
    const-string v0, "salt value too long"

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    .line 99
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3Record;->flags:I

    .line 100
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    .line 102
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    .line 103
    if-lez v0, :cond_0

    .line 104
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    .line 108
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    .line 109
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    .line 110
    new-instance v0, Lorg/xbill/DNS/TypeBitmap;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/TypeBitmap;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/TypeBitmap;

    .line 111
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    goto :goto_0
.end method

.method rrToString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 153
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 154
    iget v1, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 156
    iget v1, p0, Lorg/xbill/DNS/NSEC3Record;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 158
    iget v1, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 159
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 160
    iget-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    if-nez v1, :cond_1

    .line 161
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 164
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    sget-object v1, Lorg/xbill/DNS/NSEC3Record;->b32:Lorg/xbill/DNS/utils/base32;

    iget-object v2, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/utils/base32;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    iget-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/TypeBitmap;

    invoke-virtual {v1}, Lorg/xbill/DNS/TypeBitmap;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 169
    iget-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/TypeBitmap;

    invoke-virtual {v1}, Lorg/xbill/DNS/TypeBitmap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 163
    :cond_1
    iget-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 116
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->flags:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 117
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 119
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 121
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 125
    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 126
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 127
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/TypeBitmap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/TypeBitmap;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 128
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    goto :goto_0
.end method
