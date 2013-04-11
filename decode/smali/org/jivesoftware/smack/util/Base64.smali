.class public Lorg/jivesoftware/smack/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/util/Base64$OutputStream;,
        Lorg/jivesoftware/smack/util/Base64$InputStream;
    }
.end annotation


# static fields
.field public static final DECODE:I = 0x0

.field public static final DONT_BREAK_LINES:I = 0x8

.field public static final ENCODE:I = 0x1

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field public static final GZIP:I = 0x2

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final NEW_LINE:B = 0xat

.field public static final NO_OPTIONS:I = 0x0

.field public static final ORDERED:I = 0x20

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final URL_SAFE:I = 0x10

.field private static final WHITE_SPACE_ENC:B = -0x5t

.field private static final _ORDERED_ALPHABET:[B

.field private static final _ORDERED_DECODABET:[B

.field private static final _STANDARD_ALPHABET:[B

.field private static final _STANDARD_DECODABET:[B

.field private static final _URL_SAFE_ALPHABET:[B

.field private static final _URL_SAFE_DECODABET:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x7f

    const/16 v1, 0x40

    .line 141
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jivesoftware/smack/util/Base64;->_STANDARD_ALPHABET:[B

    .line 160
    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jivesoftware/smack/util/Base64;->_STANDARD_DECODABET:[B

    .line 203
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/jivesoftware/smack/util/Base64;->_URL_SAFE_ALPHABET:[B

    .line 220
    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/jivesoftware/smack/util/Base64;->_URL_SAFE_DECODABET:[B

    .line 267
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lorg/jivesoftware/smack/util/Base64;->_ORDERED_ALPHABET:[B

    .line 286
    new-array v0, v2, [B

    fill-array-data v0, :array_5

    sput-object v0, Lorg/jivesoftware/smack/util/Base64;->_ORDERED_DECODABET:[B

    return-void

    .line 141
    nop

    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 160
    :array_1
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3et
        0xf7t
        0xf7t
        0xf7t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data

    .line 203
    :array_2
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    .line 220
    :array_3
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3et
        0xf7t
        0xf7t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3ft
        0xf7t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data

    .line 267
    :array_4
    .array-data 0x1
        0x2dt
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data

    .line 286
    :array_5
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0xf7t
        0xf7t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x25t
        0xf7t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0x3et
        0x3ft
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)[B
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-static {p0}, Lorg/jivesoftware/smack/util/Base64;->getAlphabet(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(I)[B
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-static {p0}, Lorg/jivesoftware/smack/util/Base64;->getDecodabet(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200([BII[BII)[B
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-static/range {p0 .. p5}, Lorg/jivesoftware/smack/util/Base64;->encode3to4([BII[BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300([BI[BII)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-static {p0, p1, p2, p3, p4}, Lorg/jivesoftware/smack/util/Base64;->decode4to3([BI[BII)I

    move-result v0

    return v0
.end method

.method static synthetic access$400([B[BII)[B
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-static {p0, p1, p2, p3}, Lorg/jivesoftware/smack/util/Base64;->encode3to4([B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 943
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 961
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 970
    :goto_0
    array-length v1, v0

    invoke-static {v0, v3, v1, p1}, Lorg/jivesoftware/smack/util/Base64;->decode([BIII)[B

    move-result-object v0

    .line 975
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 978
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 979
    const v2, 0x8b1f

    if-ne v2, v1, :cond_0

    .line 984
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 989
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    .line 990
    :try_start_2
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c

    .line 991
    :try_start_3
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d

    .line 993
    :goto_1
    :try_start_4
    invoke-virtual {v4, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v5

    if-ltz v5, :cond_1

    .line 995
    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1002
    :catch_0
    move-exception v1

    move-object v1, v2

    move-object v2, v4

    .line 1008
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1009
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1010
    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 1016
    :cond_0
    :goto_5
    return-object v0

    .line 963
    :catch_1
    move-exception v0

    .line 965
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 999
    :cond_1
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v0

    .line 1008
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 1009
    :goto_6
    :try_start_a
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 1010
    :goto_7
    :try_start_b
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_5

    .line 1008
    :catchall_0
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    move-object v3, v5

    :goto_8
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 1009
    :goto_9
    :try_start_d
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 1010
    :goto_a
    :try_start_e
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    :goto_b
    throw v0

    .line 1008
    :catch_3
    move-exception v1

    goto :goto_6

    .line 1009
    :catch_4
    move-exception v1

    goto :goto_7

    .line 1008
    :catch_5
    move-exception v1

    goto :goto_3

    .line 1009
    :catch_6
    move-exception v1

    goto :goto_4

    .line 1010
    :catch_7
    move-exception v1

    goto :goto_5

    .line 1008
    :catch_8
    move-exception v1

    goto :goto_9

    .line 1009
    :catch_9
    move-exception v1

    goto :goto_a

    .line 1010
    :catch_a
    move-exception v1

    goto :goto_b

    .line 1008
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v5

    move-object v2, v5

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v5

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v1, v2

    move-object v2, v4

    goto :goto_8

    .line 1002
    :catch_b
    move-exception v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v5

    goto :goto_2

    :catch_c
    move-exception v1

    move-object v1, v2

    move-object v3, v5

    move-object v2, v5

    goto :goto_2

    :catch_d
    move-exception v1

    move-object v1, v2

    move-object v2, v5

    goto :goto_2
.end method

.method public static decode([BIII)[B
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 884
    invoke-static {p3}, Lorg/jivesoftware/smack/util/Base64;->getDecodabet(I)[B

    move-result-object v0

    .line 886
    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    .line 887
    new-array v1, v1, [B

    .line 890
    const/4 v2, 0x4

    new-array v2, v2, [B

    move v3, p1

    move v4, v9

    move v5, v9

    .line 895
    :goto_0
    add-int v6, p1, p2

    if-ge v3, v6, :cond_4

    .line 897
    aget-byte v6, p0, v3

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    .line 898
    aget-byte v7, v0, v6

    .line 900
    const/4 v8, -0x5

    if-lt v7, v8, :cond_0

    .line 902
    const/4 v8, -0x1

    if-lt v7, v8, :cond_2

    .line 904
    add-int/lit8 v7, v4, 0x1

    aput-byte v6, v2, v4

    .line 905
    const/4 v4, 0x3

    if-le v7, v4, :cond_3

    .line 907
    invoke-static {v2, v9, v1, v5, p3}, Lorg/jivesoftware/smack/util/Base64;->decode4to3([BI[BII)I

    move-result v4

    add-int/2addr v4, v5

    .line 911
    const/16 v5, 0x3d

    if-ne v6, v5, :cond_1

    move v0, v4

    .line 925
    :goto_1
    new-array v2, v0, [B

    .line 926
    invoke-static {v1, v9, v2, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 927
    :goto_2
    return-object v0

    .line 920
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad Base64 input character at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(decimal)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 921
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    move v5, v4

    move v4, v9

    .line 895
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v4, v7

    goto :goto_3

    :cond_4
    move v0, v5

    goto :goto_1
.end method

.method private static decode4to3([BI[BII)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x3d

    .line 807
    invoke-static {p4}, Lorg/jivesoftware/smack/util/Base64;->getDecodabet(I)[B

    move-result-object v0

    .line 810
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    if-ne v1, v2, :cond_0

    .line 815
    aget-byte v1, p0, p1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0xc

    or-int/2addr v0, v1

    .line 818
    ushr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 819
    const/4 v0, 0x1

    .line 863
    :goto_0
    return v0

    .line 823
    :cond_0
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    if-ne v1, v2, :cond_1

    .line 829
    aget-byte v1, p0, p1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v1

    .line 833
    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 834
    add-int/lit8 v1, p3, 0x1

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    .line 835
    const/4 v0, 0x2

    goto :goto_0

    .line 847
    :cond_1
    :try_start_0
    aget-byte v1, p0, p1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 853
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 854
    add-int/lit8 v2, p3, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 855
    add-int/lit8 v2, p3, 0x2

    int-to-byte v1, v1

    aput-byte v1, p2, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    const/4 v0, 0x3

    goto :goto_0

    .line 858
    :catch_0
    move-exception v1

    .line 859
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, p1

    aget-byte v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 860
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 861
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 862
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    aget-byte v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 863
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static decodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1274
    invoke-static {p0}, Lorg/jivesoftware/smack/util/Base64;->decodeFromFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 1275
    const/4 v1, 0x0

    .line 1277
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1279
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1285
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1288
    :goto_0
    return-void

    .line 1281
    :catch_0
    move-exception v0

    .line 1282
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1285
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1286
    :catch_1
    move-exception v0

    goto :goto_0

    .line 1285
    :catchall_0
    move-exception v0

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1286
    :goto_3
    throw v0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 1285
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 1281
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public static decodeFromFile(Ljava/lang/String;)[B
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1147
    .line 1148
    const/4 v0, 0x0

    .line 1152
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1160
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File is too big for this convenience method ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes)."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1185
    :try_start_1
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/Base64$InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    move-object v0, v7

    .line 1188
    :goto_1
    return-object v0

    .line 1163
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    .line 1166
    new-instance v2, Lorg/jivesoftware/smack/util/Base64$InputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    invoke-direct {v2, v3, v1}, Lorg/jivesoftware/smack/util/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v1, v6

    .line 1171
    :goto_2
    const/16 v3, 0x1000

    :try_start_3
    invoke-virtual {v2, v0, v1, v3}, Lorg/jivesoftware/smack/util/Base64$InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_1

    .line 1172
    add-int/2addr v1, v3

    goto :goto_2

    .line 1175
    :cond_1
    new-array v3, v1, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 1176
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_4
    invoke-static {v0, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 1185
    :try_start_5
    invoke-virtual {v2}, Lorg/jivesoftware/smack/util/Base64$InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v0, v3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v3

    .line 1186
    goto :goto_1

    .line 1179
    :catch_1
    move-exception v0

    move-object v0, v7

    move-object v1, v7

    .line 1181
    :goto_3
    :try_start_6
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error decoding from file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1185
    :try_start_7
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/Base64$InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    .line 1186
    goto :goto_1

    .line 1185
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_4
    :try_start_8
    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/Base64$InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :goto_5
    throw v0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    .line 1179
    :catch_5
    move-exception v0

    move-object v0, v2

    move-object v1, v7

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v0, v2

    move-object v1, v3

    goto :goto_3
.end method

.method public static decodeToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1112
    .line 1113
    const/4 v0, 0x0

    .line 1116
    :try_start_0
    new-instance v1, Lorg/jivesoftware/smack/util/Base64$OutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smack/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    :try_start_1
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1119
    const/4 v0, 0x1

    .line 1127
    :try_start_2
    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1130
    :goto_0
    return v0

    .line 1121
    :catch_0
    move-exception v1

    .line 1127
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v0, v4

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v4

    .line 1128
    goto :goto_0

    .line 1127
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1121
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static decodeToObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1033
    invoke-static {p0}, Lorg/jivesoftware/smack/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 1041
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1042
    :try_start_1
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_a

    .line 1044
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_b

    move-result-object v2

    .line 1058
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1059
    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v2

    .line 1062
    :goto_1
    return-object v0

    .line 1059
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 1060
    goto :goto_1

    .line 1046
    :catch_1
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    .line 1048
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1058
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1059
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-object v0, v3

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v3

    .line 1060
    goto :goto_1

    .line 1051
    :catch_3
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    .line 1053
    :goto_4
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1058
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 1059
    :goto_5
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    move-object v0, v3

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v0, v3

    .line 1060
    goto :goto_1

    .line 1058
    :catchall_0
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    :goto_6
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 1059
    :goto_7
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    :goto_8
    throw v0

    .line 1058
    :catch_5
    move-exception v1

    goto :goto_0

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v2

    goto :goto_7

    .line 1059
    :catch_9
    move-exception v1

    goto :goto_8

    .line 1058
    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto :goto_6

    :catchall_2
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_6

    .line 1051
    :catch_a
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto :goto_4

    :catch_b
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    .line 1046
    :catch_c
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto :goto_2

    :catch_d
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2
.end method

.method private static encode3to4([BII[BII)[B
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x3d

    const/4 v3, 0x0

    .line 456
    invoke-static {p5}, Lorg/jivesoftware/smack/util/Base64;->getAlphabet(I)[B

    move-result-object v0

    .line 469
    if-lez p2, :cond_0

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    :goto_0
    const/4 v2, 0x1

    if-le p2, v2, :cond_1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    const/4 v2, 0x2

    if-le p2, v2, :cond_2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x18

    :goto_2
    or-int/2addr v1, v2

    .line 473
    packed-switch p2, :pswitch_data_0

    move-object v0, p3

    .line 497
    :goto_3
    return-object v0

    :cond_0
    move v1, v3

    .line 469
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    .line 476
    :pswitch_0
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 477
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 478
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 479
    add-int/lit8 v2, p4, 0x3

    and-int/lit8 v1, v1, 0x3f

    aget-byte v0, v0, v1

    aput-byte v0, p3, v2

    move-object v0, p3

    .line 480
    goto :goto_3

    .line 483
    :pswitch_1
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 484
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 485
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v1, v1, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-byte v0, v0, v1

    aput-byte v0, p3, v2

    .line 486
    add-int/lit8 v0, p4, 0x3

    aput-byte v4, p3, v0

    move-object v0, p3

    .line 487
    goto :goto_3

    .line 490
    :pswitch_2
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 491
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v1, v1, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-byte v0, v0, v1

    aput-byte v0, p3, v2

    .line 492
    add-int/lit8 v0, p4, 0x2

    aput-byte v4, p3, v0

    .line 493
    add-int/lit8 v0, p4, 0x3

    aput-byte v4, p3, v0

    move-object v0, p3

    .line 494
    goto :goto_3

    .line 473
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static encode3to4([B[BII)[B
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 424
    move-object v0, p1

    move v2, p2

    move-object v3, p0

    move v4, v1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/jivesoftware/smack/util/Base64;->encode3to4([BII[BII)[B

    .line 425
    return-object p0
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 609
    array-length v0, p0

    invoke-static {p0, v1, v0, v1}, Lorg/jivesoftware/smack/util/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BI)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 636
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/jivesoftware/smack/util/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 651
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/jivesoftware/smack/util/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 681
    and-int/lit8 v0, p3, 0x8

    .line 682
    and-int/lit8 v1, p3, 0x2

    .line 685
    if-ne v1, v2, :cond_0

    .line 695
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :try_start_1
    new-instance v1, Lorg/jivesoftware/smack/util/Base64$OutputStream;

    or-int/lit8 v2, p3, 0x1

    invoke-direct {v1, v0, v2}, Lorg/jivesoftware/smack/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c

    .line 697
    :try_start_2
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d

    .line 699
    :try_start_3
    invoke-virtual {v2, p0, p1, p2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 700
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e

    .line 709
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 710
    :goto_0
    :try_start_5
    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 711
    :goto_1
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 717
    :goto_2
    :try_start_7
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1

    move-object v0, v1

    .line 766
    :goto_3
    return-object v0

    .line 702
    :catch_0
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    move-object v3, v4

    .line 704
    :goto_4
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 709
    :try_start_9
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 710
    :goto_5
    :try_start_a
    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 711
    :goto_6
    :try_start_b
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    :goto_7
    move-object v0, v4

    goto :goto_3

    .line 709
    :catchall_0
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    move-object v3, v4

    :goto_8
    :try_start_c
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 710
    :goto_9
    :try_start_d
    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 711
    :goto_a
    :try_start_e
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    :goto_b
    throw v0

    .line 719
    :catch_1
    move-exception v1

    .line 721
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    goto :goto_3

    .line 729
    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v6, v0

    .line 731
    :goto_c
    mul-int/lit8 v0, p2, 0x4

    div-int/lit8 v0, v0, 0x3

    .line 732
    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_2

    const/4 v1, 0x4

    :goto_d
    add-int/2addr v1, v0

    if-eqz v6, :cond_3

    div-int/lit8 v0, v0, 0x4c

    :goto_e
    add-int/2addr v0, v1

    new-array v3, v0, [B

    .line 737
    sub-int v7, p2, v2

    move v8, v10

    move v4, v10

    move v9, v10

    .line 739
    :goto_f
    if-ge v9, v7, :cond_4

    .line 741
    add-int v1, v9, p1

    const/4 v2, 0x3

    move-object v0, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/jivesoftware/smack/util/Base64;->encode3to4([BII[BII)[B

    .line 743
    add-int/lit8 v0, v8, 0x4

    .line 744
    if-eqz v6, :cond_6

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_6

    .line 746
    add-int/lit8 v0, v4, 0x4

    const/16 v1, 0xa

    aput-byte v1, v3, v0

    .line 747
    add-int/lit8 v0, v4, 0x1

    move v1, v0

    move v0, v10

    .line 739
    :goto_10
    add-int/lit8 v2, v9, 0x3

    add-int/lit8 v1, v1, 0x4

    move v8, v0

    move v4, v1

    move v9, v2

    goto :goto_f

    :cond_1
    move v6, v10

    .line 729
    goto :goto_c

    :cond_2
    move v1, v10

    .line 732
    goto :goto_d

    :cond_3
    move v0, v10

    goto :goto_e

    .line 752
    :cond_4
    if-ge v9, p2, :cond_5

    .line 754
    add-int v1, v9, p1

    sub-int v2, p2, v9

    move-object v0, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/jivesoftware/smack/util/Base64;->encode3to4([BII[BII)[B

    .line 755
    add-int/lit8 v0, v4, 0x4

    .line 762
    :goto_11
    :try_start_f
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_f} :catch_2

    move-object v0, v1

    goto/16 :goto_3

    .line 764
    :catch_2
    move-exception v1

    .line 766
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3, v10, v0}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v1

    goto/16 :goto_3

    .line 709
    :catch_3
    move-exception v2

    goto/16 :goto_0

    .line 710
    :catch_4
    move-exception v1

    goto/16 :goto_1

    .line 711
    :catch_5
    move-exception v1

    goto/16 :goto_2

    .line 709
    :catch_6
    move-exception v0

    goto/16 :goto_5

    .line 710
    :catch_7
    move-exception v0

    goto/16 :goto_6

    .line 711
    :catch_8
    move-exception v0

    goto/16 :goto_7

    .line 709
    :catch_9
    move-exception v2

    goto/16 :goto_9

    .line 710
    :catch_a
    move-exception v1

    goto/16 :goto_a

    .line 711
    :catch_b
    move-exception v1

    goto/16 :goto_b

    .line 709
    :catchall_1
    move-exception v1

    move-object v2, v4

    move-object v3, v0

    move-object v0, v1

    move-object v1, v4

    goto/16 :goto_8

    :catchall_2
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v4

    goto/16 :goto_8

    :catchall_3
    move-exception v3

    move-object v11, v3

    move-object v3, v0

    move-object v0, v11

    goto/16 :goto_8

    :catchall_4
    move-exception v0

    goto/16 :goto_8

    .line 702
    :catch_c
    move-exception v1

    move-object v2, v4

    move-object v3, v0

    move-object v0, v1

    move-object v1, v4

    goto/16 :goto_4

    :catch_d
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v4

    goto/16 :goto_4

    :catch_e
    move-exception v3

    move-object v11, v3

    move-object v3, v0

    move-object v0, v11

    goto/16 :goto_4

    :cond_5
    move v0, v4

    goto :goto_11

    :cond_6
    move v1, v4

    goto :goto_10
.end method

.method public static encodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1248
    invoke-static {p0}, Lorg/jivesoftware/smack/util/Base64;->encodeFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1249
    const/4 v1, 0x0

    .line 1251
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    :try_start_1
    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1259
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1262
    :goto_0
    return-void

    .line 1255
    :catch_0
    move-exception v0

    .line 1256
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1259
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1260
    :catch_1
    move-exception v0

    goto :goto_0

    .line 1259
    :catchall_0
    move-exception v0

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1260
    :goto_3
    throw v0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 1259
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 1255
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public static encodeFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1204
    .line 1209
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x3ff6666666666666L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/16 v2, 0x28

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    .line 1215
    new-instance v2, Lorg/jivesoftware/smack/util/Base64$InputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x1

    invoke-direct {v2, v3, v0}, Lorg/jivesoftware/smack/util/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v5

    .line 1220
    :goto_0
    const/16 v3, 0x1000

    :try_start_1
    invoke-virtual {v2, v1, v0, v3}, Lorg/jivesoftware/smack/util/Base64$InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1221
    add-int/2addr v0, v3

    goto :goto_0

    .line 1224
    :cond_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "UTF-8"

    invoke-direct {v3, v1, v4, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1233
    :try_start_2
    invoke-virtual {v2}, Lorg/jivesoftware/smack/util/Base64$InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v3

    .line 1236
    :goto_1
    return-object v0

    .line 1233
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 1234
    goto :goto_1

    .line 1227
    :catch_1
    move-exception v0

    move-object v0, v6

    .line 1229
    :goto_2
    :try_start_3
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error encoding from file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1233
    :try_start_4
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/Base64$InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v6

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v6

    .line 1234
    goto :goto_1

    .line 1233
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    :try_start_5
    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/Base64$InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_4
    throw v0

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    .line 1227
    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method public static encodeObject(Ljava/io/Serializable;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 516
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/util/Base64;->encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 547
    .line 553
    and-int/lit8 v0, p1, 0x2

    .line 554
    and-int/lit8 v1, p1, 0x8

    .line 559
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :try_start_1
    new-instance v2, Lorg/jivesoftware/smack/util/Base64$OutputStream;

    or-int/lit8 v3, p1, 0x1

    invoke-direct {v2, v1, v3}, Lorg/jivesoftware/smack/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e

    .line 563
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 565
    :try_start_2
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f

    .line 566
    :try_start_3
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10

    .line 571
    :goto_0
    :try_start_4
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11

    .line 580
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 581
    :goto_1
    :try_start_6
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 582
    :goto_2
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 583
    :goto_3
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 589
    :goto_4
    :try_start_9
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_1

    .line 593
    :goto_5
    return-object v0

    .line 569
    :cond_0
    :try_start_a
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f

    move-object v3, v0

    move-object v0, v5

    goto :goto_0

    .line 573
    :catch_0
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    move-object v3, v5

    move-object v4, v5

    .line 575
    :goto_6
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 580
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 581
    :goto_7
    :try_start_d
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 582
    :goto_8
    :try_start_e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 583
    :goto_9
    :try_start_f
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    :goto_a
    move-object v0, v5

    goto :goto_5

    .line 580
    :catchall_0
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    move-object v3, v5

    move-object v4, v5

    :goto_b
    :try_start_10
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    .line 581
    :goto_c
    :try_start_11
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    .line 582
    :goto_d
    :try_start_12
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    .line 583
    :goto_e
    :try_start_13
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    :goto_f
    throw v0

    .line 591
    :catch_1
    move-exception v0

    .line 593
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_5

    .line 580
    :catch_2
    move-exception v3

    goto :goto_1

    .line 581
    :catch_3
    move-exception v0

    goto :goto_2

    .line 582
    :catch_4
    move-exception v0

    goto :goto_3

    .line 583
    :catch_5
    move-exception v0

    goto :goto_4

    .line 580
    :catch_6
    move-exception v0

    goto :goto_7

    .line 581
    :catch_7
    move-exception v0

    goto :goto_8

    .line 582
    :catch_8
    move-exception v0

    goto :goto_9

    .line 583
    :catch_9
    move-exception v0

    goto :goto_a

    .line 580
    :catch_a
    move-exception v2

    goto :goto_c

    .line 581
    :catch_b
    move-exception v1

    goto :goto_d

    .line 582
    :catch_c
    move-exception v1

    goto :goto_e

    .line 583
    :catch_d
    move-exception v1

    goto :goto_f

    .line 580
    :catchall_1
    move-exception v0

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    move-object v1, v5

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v3, v2

    move-object v4, v1

    move-object v1, v5

    move-object v2, v5

    goto :goto_b

    :catchall_3
    move-exception v3

    move-object v4, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_b

    :catchall_4
    move-exception v4

    move-object v6, v4

    move-object v4, v1

    move-object v1, v0

    move-object v0, v6

    move-object v7, v2

    move-object v2, v3

    move-object v3, v7

    goto :goto_b

    :catchall_5
    move-exception v0

    goto :goto_b

    .line 573
    :catch_e
    move-exception v0

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    move-object v1, v5

    goto :goto_6

    :catch_f
    move-exception v0

    move-object v3, v2

    move-object v4, v1

    move-object v1, v5

    move-object v2, v5

    goto :goto_6

    :catch_10
    move-exception v3

    move-object v4, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_6

    :catch_11
    move-exception v4

    move-object v6, v4

    move-object v4, v1

    move-object v1, v0

    move-object v0, v6

    move-object v7, v2

    move-object v2, v3

    move-object v3, v7

    goto :goto_6
.end method

.method public static encodeToFile([BLjava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1078
    .line 1079
    const/4 v0, 0x0

    .line 1082
    :try_start_0
    new-instance v1, Lorg/jivesoftware/smack/util/Base64$OutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smack/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1084
    :try_start_1
    invoke-virtual {v1, p0}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1094
    :try_start_2
    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v4

    .line 1097
    :goto_0
    return v0

    .line 1094
    :catch_0
    move-exception v0

    move v0, v4

    .line 1095
    goto :goto_0

    .line 1087
    :catch_1
    move-exception v1

    .line 1090
    :goto_1
    const/4 v1, 0x0

    .line 1094
    :try_start_3
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move v0, v1

    .line 1095
    goto :goto_0

    .line 1094
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1087
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private static final getAlphabet(I)[B
    .locals 2
    .parameter

    .prologue
    .line 338
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/jivesoftware/smack/util/Base64;->_URL_SAFE_ALPHABET:[B

    .line 340
    :goto_0
    return-object v0

    .line 339
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/jivesoftware/smack/util/Base64;->_ORDERED_ALPHABET:[B

    goto :goto_0

    .line 340
    :cond_1
    sget-object v0, Lorg/jivesoftware/smack/util/Base64;->_STANDARD_ALPHABET:[B

    goto :goto_0
.end method

.method private static final getDecodabet(I)[B
    .locals 2
    .parameter

    .prologue
    .line 354
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/jivesoftware/smack/util/Base64;->_URL_SAFE_DECODABET:[B

    .line 356
    :goto_0
    return-object v0

    .line 355
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/jivesoftware/smack/util/Base64;->_ORDERED_DECODABET:[B

    goto :goto_0

    .line 356
    :cond_1
    sget-object v0, Lorg/jivesoftware/smack/util/Base64;->_STANDARD_DECODABET:[B

    goto :goto_0
.end method

.method public static final main([Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 373
    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 374
    const-string v0, "Not enough arguments."

    invoke-static {v0}, Lorg/jivesoftware/smack/util/Base64;->usage(Ljava/lang/String;)V

    .line 390
    :goto_0
    return-void

    .line 377
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 378
    const/4 v1, 0x1

    aget-object v1, p0, v1

    .line 379
    const/4 v2, 0x2

    aget-object v2, p0, v2

    .line 380
    const-string v3, "-e"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 381
    invoke-static {v1, v2}, Lorg/jivesoftware/smack/util/Base64;->encodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_1
    const-string v3, "-d"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 384
    invoke-static {v1, v2}, Lorg/jivesoftware/smack/util/Base64;->decodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/Base64;->usage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static final usage(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 399
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 400
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: java Base64 -e|-d inputfile outputfile"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 401
    return-void
.end method
