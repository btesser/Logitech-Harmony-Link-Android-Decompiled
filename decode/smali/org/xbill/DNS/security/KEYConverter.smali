.class public Lorg/xbill/DNS/security/KEYConverter;
.super Ljava/lang/Object;
.source "KEYConverter.java"


# static fields
.field private static final DHPRIME1024:Ljava/math/BigInteger;

.field private static final DHPRIME768:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 20
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A63A3620FFFFFFFFFFFFFFFF"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/security/KEYConverter;->DHPRIME768:Ljava/math/BigInteger;

    .line 21
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE65381FFFFFFFFFFFFFFFF"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/security/KEYConverter;->DHPRIME1024:Ljava/math/BigInteger;

    .line 22
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "2"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/security/KEYConverter;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static BigIntegerLength(Ljava/math/BigInteger;)I
    .locals 2
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 27
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    if-nez v1, :cond_0

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    array-length v0, v0

    goto :goto_0
.end method

.method static buildDH(Ljavax/crypto/interfaces/DHPublicKey;)[B
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 186
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 187
    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 188
    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    .line 189
    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v3

    .line 192
    sget-object v4, Lorg/xbill/DNS/security/KEYConverter;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lorg/xbill/DNS/security/KEYConverter;->DHPRIME768:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lorg/xbill/DNS/security/KEYConverter;->DHPRIME1024:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 194
    :cond_0
    const/4 v4, 0x0

    move v5, v7

    .line 200
    :goto_0
    invoke-static {v3}, Lorg/xbill/DNS/security/KEYConverter;->BigIntegerLength(Ljava/math/BigInteger;)I

    move-result v6

    .line 202
    invoke-static {v0, v5}, Lorg/xbill/DNS/security/KEYConverter;->writeShort(Ljava/io/ByteArrayOutputStream;I)V

    .line 203
    if-ne v5, v7, :cond_4

    .line 204
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v5, 0x300

    if-ne v1, v5, :cond_3

    .line 205
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 211
    :goto_1
    invoke-static {v0, v4}, Lorg/xbill/DNS/security/KEYConverter;->writeShort(Ljava/io/ByteArrayOutputStream;I)V

    .line 212
    if-lez v4, :cond_1

    .line 213
    invoke-static {v0, v2}, Lorg/xbill/DNS/security/KEYConverter;->writeBigInteger(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    .line 214
    :cond_1
    invoke-static {v0, v6}, Lorg/xbill/DNS/security/KEYConverter;->writeShort(Ljava/io/ByteArrayOutputStream;I)V

    .line 215
    invoke-static {v0, v3}, Lorg/xbill/DNS/security/KEYConverter;->writeBigInteger(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    .line 217
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 197
    :cond_2
    invoke-static {v1}, Lorg/xbill/DNS/security/KEYConverter;->BigIntegerLength(Ljava/math/BigInteger;)I

    move-result v4

    .line 198
    invoke-static {v2}, Lorg/xbill/DNS/security/KEYConverter;->BigIntegerLength(Ljava/math/BigInteger;)I

    move-result v5

    move v8, v5

    move v5, v4

    move v4, v8

    goto :goto_0

    .line 207
    :cond_3
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 210
    :cond_4
    invoke-static {v0, v1}, Lorg/xbill/DNS/security/KEYConverter;->writeBigInteger(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_1
.end method

.method static buildDSA(Ljava/security/interfaces/DSAPublicKey;)[B
    .locals 7
    .parameter

    .prologue
    .line 222
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 223
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    .line 224
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 225
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v3

    .line 226
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    .line 227
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    array-length v5, v5

    const/16 v6, 0x40

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x8

    .line 229
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 230
    invoke-static {v0, v1}, Lorg/xbill/DNS/security/KEYConverter;->writeBigInteger(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    .line 231
    invoke-static {v0, v2}, Lorg/xbill/DNS/security/KEYConverter;->writeBigInteger(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    .line 232
    invoke-static {v0, v3}, Lorg/xbill/DNS/security/KEYConverter;->writeBigInteger(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    .line 233
    invoke-static {v0, v4}, Lorg/xbill/DNS/security/KEYConverter;->writeBigInteger(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    .line 235
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method static buildRSA(Ljava/security/interfaces/RSAPublicKey;)[B
    .locals 5
    .parameter

    .prologue
    .line 167
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 168
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    .line 169
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 170
    invoke-static {v1}, Lorg/xbill/DNS/security/KEYConverter;->BigIntegerLength(Ljava/math/BigInteger;)I

    move-result v3

    .line 172
    const/16 v4, 0x100

    if-ge v3, v4, :cond_0

    .line 173
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 178
    :goto_0
    invoke-static {v0, v1}, Lorg/xbill/DNS/security/KEYConverter;->writeBigInteger(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    .line 179
    invoke-static {v0, v2}, Lorg/xbill/DNS/security/KEYConverter;->writeBigInteger(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    .line 181
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 176
    invoke-static {v0, v3}, Lorg/xbill/DNS/security/KEYConverter;->writeShort(Ljava/io/ByteArrayOutputStream;I)V

    goto :goto_0
.end method

.method public static buildRecord(Lorg/xbill/DNS/Name;IJIILjava/security/PublicKey;)Lorg/xbill/DNS/KEYRecord;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    instance-of v0, p6, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x1

    move v7, v0

    .line 257
    :goto_0
    const/16 v1, 0x19

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lorg/xbill/DNS/security/KEYConverter;->buildRecord(Lorg/xbill/DNS/Name;IIJIIILjava/security/PublicKey;)Lorg/xbill/DNS/Record;

    move-result-object p0

    check-cast p0, Lorg/xbill/DNS/KEYRecord;

    move-object v0, p0

    :goto_1
    return-object v0

    .line 248
    :cond_0
    instance-of v0, p6, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_1

    .line 249
    const/4 v0, 0x2

    move v7, v0

    goto :goto_0

    .line 251
    :cond_1
    instance-of v0, p6, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_2

    .line 252
    const/4 v0, 0x3

    move v7, v0

    goto :goto_0

    .line 255
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static buildRecord(Lorg/xbill/DNS/Name;IIJIIILjava/security/PublicKey;)Lorg/xbill/DNS/Record;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    const/16 v2, 0x19

    if-eq p1, v2, :cond_0

    const/16 v2, 0x30

    if-eq p1, v2, :cond_0

    .line 269
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "type must be KEY or DNSKEY"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 272
    :cond_0
    move-object/from16 v0, p8

    instance-of v0, v0, Ljava/security/interfaces/RSAPublicKey;

    move v2, v0

    if-eqz v2, :cond_1

    .line 273
    check-cast p8, Ljava/security/interfaces/RSAPublicKey;

    invoke-static/range {p8 .. p8}, Lorg/xbill/DNS/security/KEYConverter;->buildRSA(Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object p8

    move-object/from16 v10, p8

    .line 284
    :goto_0
    if-nez v10, :cond_4

    .line 285
    const/4 p0, 0x0

    .line 291
    :goto_1
    return-object p0

    .line 275
    :cond_1
    move-object/from16 v0, p8

    instance-of v0, v0, Ljavax/crypto/interfaces/DHPublicKey;

    move v2, v0

    if-eqz v2, :cond_2

    .line 276
    check-cast p8, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-static/range {p8 .. p8}, Lorg/xbill/DNS/security/KEYConverter;->buildDH(Ljavax/crypto/interfaces/DHPublicKey;)[B

    move-result-object p8

    move-object/from16 v10, p8

    goto :goto_0

    .line 278
    :cond_2
    move-object/from16 v0, p8

    instance-of v0, v0, Ljava/security/interfaces/DSAPublicKey;

    move v2, v0

    if-eqz v2, :cond_3

    .line 279
    check-cast p8, Ljava/security/interfaces/DSAPublicKey;

    invoke-static/range {p8 .. p8}, Lorg/xbill/DNS/security/KEYConverter;->buildDSA(Ljava/security/interfaces/DSAPublicKey;)[B

    move-result-object p8

    move-object/from16 v10, p8

    goto :goto_0

    .line 282
    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    .line 287
    :cond_4
    const/16 p8, 0x30

    move v0, p1

    move/from16 v1, p8

    if-ne v0, v1, :cond_5

    .line 288
    new-instance v2, Lorg/xbill/DNS/DNSKEYRecord;

    move-object v3, p0

    move v4, p2

    move-wide v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lorg/xbill/DNS/DNSKEYRecord;-><init>(Lorg/xbill/DNS/Name;IJIII[B)V

    move-object p0, v2

    goto :goto_1

    .line 291
    :cond_5
    new-instance v2, Lorg/xbill/DNS/KEYRecord;

    move-object v3, p0

    move v4, p2

    move-wide v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lorg/xbill/DNS/KEYRecord;-><init>(Lorg/xbill/DNS/Name;IJIII[B)V

    move-object p0, v2

    goto :goto_1
.end method

.method static parseDH(Ljava/io/DataInputStream;)Ljavax/crypto/interfaces/DHPublicKey;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 72
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    if-eq v1, v3, :cond_0

    if-eq v1, v4, :cond_0

    move-object v0, v5

    .line 104
    :goto_0
    return-object v0

    .line 75
    :cond_0
    if-eq v1, v3, :cond_1

    if-ne v1, v4, :cond_5

    .line 76
    :cond_1
    if-ne v1, v3, :cond_2

    .line 77
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 80
    :goto_1
    if-eq v0, v3, :cond_3

    if-eq v0, v4, :cond_3

    move-object v0, v5

    .line 81
    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    goto :goto_1

    .line 82
    :cond_3
    if-ne v0, v3, :cond_4

    .line 83
    sget-object v1, Lorg/xbill/DNS/security/KEYConverter;->DHPRIME768:Ljava/math/BigInteger;

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    .line 90
    :goto_2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 92
    if-nez v2, :cond_7

    .line 93
    if-eqz v1, :cond_6

    .line 94
    sget-object v1, Lorg/xbill/DNS/security/KEYConverter;->TWO:Ljava/math/BigInteger;

    .line 101
    :goto_3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 102
    invoke-static {p0, v2}, Lorg/xbill/DNS/security/KEYConverter;->readBigInteger(Ljava/io/DataInputStream;I)Ljava/math/BigInteger;

    move-result-object v2

    .line 104
    new-instance v3, Lorg/xbill/DNS/security/DHPubKey;

    invoke-direct {v3, v0, v1, v2}, Lorg/xbill/DNS/security/DHPubKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v0, v3

    goto :goto_0

    .line 85
    :cond_4
    sget-object v1, Lorg/xbill/DNS/security/KEYConverter;->DHPRIME1024:Ljava/math/BigInteger;

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_2

    .line 88
    :cond_5
    invoke-static {p0, v1}, Lorg/xbill/DNS/security/KEYConverter;->readBigInteger(Ljava/io/DataInputStream;I)Ljava/math/BigInteger;

    move-result-object v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_2

    :cond_6
    move-object v0, v5

    .line 96
    goto :goto_0

    .line 99
    :cond_7
    invoke-static {p0, v2}, Lorg/xbill/DNS/security/KEYConverter;->readBigInteger(Ljava/io/DataInputStream;I)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_3
.end method

.method static parseDSA(Ljava/io/DataInputStream;)Ljava/security/interfaces/DSAPublicKey;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 111
    const/16 v1, 0x14

    invoke-static {p0, v1}, Lorg/xbill/DNS/security/KEYConverter;->readBigInteger(Ljava/io/DataInputStream;I)Ljava/math/BigInteger;

    move-result-object v1

    .line 112
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x40

    invoke-static {p0, v2}, Lorg/xbill/DNS/security/KEYConverter;->readBigInteger(Ljava/io/DataInputStream;I)Ljava/math/BigInteger;

    move-result-object v2

    .line 113
    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x40

    invoke-static {p0, v3}, Lorg/xbill/DNS/security/KEYConverter;->readBigInteger(Ljava/io/DataInputStream;I)Ljava/math/BigInteger;

    move-result-object v3

    .line 114
    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x40

    invoke-static {p0, v0}, Lorg/xbill/DNS/security/KEYConverter;->readBigInteger(Ljava/io/DataInputStream;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 116
    new-instance v4, Lorg/xbill/DNS/security/DSAPubKey;

    invoke-direct {v4, v2, v1, v3, v0}, Lorg/xbill/DNS/security/DSAPubKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 117
    return-object v4
.end method

.method static parseRSA(Ljava/io/DataInputStream;)Ljava/security/interfaces/RSAPublicKey;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 59
    :cond_0
    invoke-static {p0, v0}, Lorg/xbill/DNS/security/KEYConverter;->readBigInteger(Ljava/io/DataInputStream;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Ljava/io/DataInputStream;->available()I

    move-result v1

    .line 62
    invoke-static {p0, v1}, Lorg/xbill/DNS/security/KEYConverter;->readBigInteger(Ljava/io/DataInputStream;I)Ljava/math/BigInteger;

    move-result-object v1

    .line 64
    new-instance v2, Lorg/xbill/DNS/security/RSAPubKey;

    invoke-direct {v2, v1, v0}, Lorg/xbill/DNS/security/RSAPubKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 65
    return-object v2
.end method

.method static parseRecord(I[B)Ljava/security/PublicKey;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 123
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 124
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 126
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move-object v0, v2

    .line 145
    :goto_0
    return-object v0

    .line 132
    :pswitch_1
    :try_start_0
    invoke-static {v1}, Lorg/xbill/DNS/security/KEYConverter;->parseRSA(Ljava/io/DataInputStream;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    goto :goto_0

    .line 134
    :pswitch_2
    invoke-static {v1}, Lorg/xbill/DNS/security/KEYConverter;->parseDH(Ljava/io/DataInputStream;)Ljavax/crypto/interfaces/DHPublicKey;

    move-result-object v0

    goto :goto_0

    .line 137
    :pswitch_3
    invoke-static {v1}, Lorg/xbill/DNS/security/KEYConverter;->parseDSA(Ljava/io/DataInputStream;)Ljava/security/interfaces/DSAPublicKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string v1, "verboseexceptions"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    move-object v0, v2

    .line 145
    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseRecord(Lorg/xbill/DNS/DNSKEYRecord;)Ljava/security/PublicKey;
    .locals 2
    .parameter

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSKEYRecord;->getAlgorithm()I

    move-result v0

    .line 153
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSKEYRecord;->getKey()[B

    move-result-object v1

    .line 154
    invoke-static {v0, v1}, Lorg/xbill/DNS/security/KEYConverter;->parseRecord(I[B)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static parseRecord(Lorg/xbill/DNS/KEYRecord;)Ljava/security/PublicKey;
    .locals 2
    .parameter

    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/xbill/DNS/KEYRecord;->getAlgorithm()I

    move-result v0

    .line 161
    invoke-virtual {p0}, Lorg/xbill/DNS/KEYRecord;->getKey()[B

    move-result-object v1

    .line 162
    invoke-static {v0, v1}, Lorg/xbill/DNS/security/KEYConverter;->parseRecord(I[B)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method static readBigInteger(Ljava/io/DataInputStream;I)Ljava/math/BigInteger;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    new-array v0, p1, [B

    .line 33
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v1

    .line 34
    if-ge v1, p1, :cond_0

    .line 35
    new-instance v0, Ljava/io/IOException;

    const-string v1, "end of input"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method static writeBigInteger(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 42
    aget-byte v1, v0, v2

    if-nez v1, :cond_0

    .line 43
    array-length v1, v0

    sub-int/2addr v1, v3

    invoke-virtual {p0, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method static writeShort(Ljava/io/ByteArrayOutputStream;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 51
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 52
    return-void
.end method
