.class public Lcom/logitech/harmonylink/util/UnicodeEncodeDecodeUtil;
.super Ljava/lang/Object;
.source "UnicodeEncodeDecodeUtil.java"


# static fields
.field private static final HEX:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/logitech/harmonylink/util/UnicodeEncodeDecodeUtil;->HEX:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeEncodedNonAsciiCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "htmlString"

    .prologue
    .line 51
    const-string v4, "\\\\u([a-zA-Z0-9]{4})"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 52
    .local v1, patt:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 53
    .local v0, m:Ljava/util/regex/Matcher;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 54
    .local v2, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, text:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 58
    .end local v3           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static encodeNonAsciiCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "value"

    .prologue
    const/4 v9, 0x4

    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 27
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 28
    .local v0, c:C
    const/16 v7, 0x7f

    if-le v0, v7, :cond_1

    .line 30
    const-string v7, "\\u"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move v6, v0

    .line 35
    .local v6, value2:I
    new-array v2, v9, [C

    .line 36
    .local v2, hexs:[C
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    array-length v7, v2

    if-ge v4, v7, :cond_0

    .line 37
    and-int/lit8 v1, v6, 0xf

    .line 38
    .local v1, cx:I
    sub-int v7, v9, v4

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    sget-object v8, Lcom/logitech/harmonylink/util/UnicodeEncodeDecodeUtil;->HEX:[C

    aget-char v8, v8, v1

    aput-char v8, v2, v7

    .line 39
    shr-int/lit8 v6, v6, 0x4

    .line 36
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 41
    .end local v1           #cx:I
    :cond_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 26
    .end local v2           #hexs:[C
    .end local v4           #j:I
    .end local v6           #value2:I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 47
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
