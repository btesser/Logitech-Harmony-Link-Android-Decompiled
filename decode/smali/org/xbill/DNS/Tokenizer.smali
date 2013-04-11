.class public Lorg/xbill/DNS/Tokenizer;
.super Ljava/lang/Object;
.source "Tokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/Tokenizer$1;,
        Lorg/xbill/DNS/Tokenizer$TokenizerException;,
        Lorg/xbill/DNS/Tokenizer$Token;
    }
.end annotation


# static fields
.field public static final COMMENT:I = 0x5

.field public static final EOF:I = 0x0

.field public static final EOL:I = 0x1

.field public static final IDENTIFIER:I = 0x3

.field public static final QUOTED_STRING:I = 0x4

.field public static final WHITESPACE:I = 0x2

.field private static delim:Ljava/lang/String;

.field private static quotes:Ljava/lang/String;


# instance fields
.field private current:Lorg/xbill/DNS/Tokenizer$Token;

.field private delimiters:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private is:Ljava/io/PushbackInputStream;

.field private line:I

.field private multiline:I

.field private quoting:Z

.field private sb:Ljava/lang/StringBuffer;

.field private ungottenToken:Z

.field private wantClose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, " \t\n;()\""

    sput-object v0, Lorg/xbill/DNS/Tokenizer;->delim:Ljava/lang/String;

    .line 35
    const-string v0, "\""

    sput-object v0, Lorg/xbill/DNS/Tokenizer;->quotes:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/io/InputStream;)V

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/Tokenizer;->wantClose:Z

    .line 177
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer;->filename:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 149
    :goto_0
    new-instance v1, Ljava/io/PushbackInputStream;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    .line 150
    iput-boolean v3, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    .line 151
    iput v3, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    .line 152
    iput-boolean v3, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    .line 153
    sget-object v0, Lorg/xbill/DNS/Tokenizer;->delim:Ljava/lang/String;

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer;->delimiters:Ljava/lang/String;

    .line 154
    new-instance v0, Lorg/xbill/DNS/Tokenizer$Token;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer$Token;-><init>(Lorg/xbill/DNS/Tokenizer$1;)V

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    .line 155
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    .line 156
    const-string v0, "<none>"

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer;->filename:Ljava/lang/String;

    .line 157
    const/4 v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    .line 158
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 166
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/io/InputStream;)V

    .line 167
    return-void
.end method

.method private _getIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 382
    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 384
    :cond_0
    iget-object v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    return-object v0
.end method

.method private checkUnbalancedParens()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 220
    iget v0, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    if-lez v0, :cond_0

    .line 221
    const-string v0, "unbalanced parentheses"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 222
    :cond_0
    return-void
.end method

.method private getChar()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xa

    .line 182
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 183
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 184
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 185
    if-eq v0, v2, :cond_0

    .line 186
    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    :cond_0
    move v0, v2

    .line 189
    :cond_1
    if-ne v0, v2, :cond_2

    .line 190
    iget v1, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    .line 191
    :cond_2
    return v0
.end method

.method private remainingStrings()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 562
    move-object v0, v3

    .line 564
    :goto_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v1

    .line 565
    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v2

    if-nez v2, :cond_0

    .line 571
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 572
    if-nez v0, :cond_2

    move-object v0, v3

    .line 574
    :goto_1
    return-object v0

    .line 567
    :cond_0
    if-nez v0, :cond_1

    .line 568
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 569
    :cond_1
    iget-object v1, v1, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 574
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private skipWhitespace()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 207
    :goto_0
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->getChar()I

    move-result v1

    .line 208
    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    .line 209
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget v2, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    if-gtz v2, :cond_1

    .line 210
    :cond_0
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Tokenizer;->ungetChar(I)V

    .line 211
    return v0

    .line 214
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 215
    goto :goto_0
.end method

.method private ungetChar(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 199
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 200
    iget v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 699
    iget-boolean v0, p0, Lorg/xbill/DNS/Tokenizer;->wantClose:Z

    if-eqz v0, :cond_0

    .line 701
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 703
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;
    .locals 3
    .parameter

    .prologue
    .line 691
    new-instance v0, Lorg/xbill/DNS/Tokenizer$TokenizerException;

    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->filename:Ljava/lang/String;

    iget v2, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    invoke-direct {v0, v1, v2, p1}, Lorg/xbill/DNS/Tokenizer$TokenizerException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 710
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->close()V

    .line 711
    return-void
.end method

.method public get()Lorg/xbill/DNS/Tokenizer$Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 346
    invoke-virtual {p0, v0, v0}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    return-object v0
.end method

.method public get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 238
    iget-boolean v0, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    if-eqz v0, :cond_3

    .line 239
    iput-boolean v4, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    .line 240
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 241
    if-eqz p1, :cond_3

    .line 242
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    .line 335
    :goto_0
    return-object v0

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 244
    if-eqz p2, :cond_3

    .line 245
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-ne v0, v7, :cond_2

    .line 248
    iget v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    .line 249
    :cond_2
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    goto :goto_0

    .line 252
    :cond_3
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    move-result v0

    .line 253
    if-lez v0, :cond_4

    if-eqz p1, :cond_4

    .line 254
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    const/4 v1, 0x2

    #calls: Lorg/xbill/DNS/Tokenizer$Token;->set(ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;
    invoke-static {v0, v1, v6}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    goto :goto_0

    .line 255
    :cond_4
    const/4 v0, 0x3

    .line 256
    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 258
    :goto_1
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->getChar()I

    move-result v1

    .line 259
    if-eq v1, v5, :cond_5

    iget-object v2, p0, Lorg/xbill/DNS/Tokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v5, :cond_16

    .line 260
    :cond_5
    if-ne v1, v5, :cond_8

    .line 261
    iget-boolean v1, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    if-eqz v1, :cond_6

    .line 262
    const-string v0, "EOF in quoted string"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 264
    :cond_6
    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_7

    .line 265
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    #calls: Lorg/xbill/DNS/Tokenizer$Token;->set(ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;
    invoke-static {v0, v4, v6}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    goto :goto_0

    .line 267
    :cond_7
    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget-object v2, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    #calls: Lorg/xbill/DNS/Tokenizer$Token;->set(ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;
    invoke-static {v1, v0, v2}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    goto :goto_0

    .line 269
    :cond_8
    iget-object v2, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_15

    if-eq v0, v8, :cond_15

    .line 270
    const/16 v2, 0x28

    if-ne v1, v2, :cond_9

    .line 271
    iget v1, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    .line 272
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    goto :goto_1

    .line 274
    :cond_9
    const/16 v2, 0x29

    if-ne v1, v2, :cond_b

    .line 275
    iget v1, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    if-gtz v1, :cond_a

    .line 276
    const-string v0, "invalid close parenthesis"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 279
    :cond_a
    iget v1, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    sub-int/2addr v1, v7

    iput v1, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    .line 280
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    goto :goto_1

    .line 282
    :cond_b
    const/16 v2, 0x22

    if-ne v1, v2, :cond_d

    .line 283
    iget-boolean v1, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    if-nez v1, :cond_c

    .line 284
    iput-boolean v7, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    .line 285
    sget-object v0, Lorg/xbill/DNS/Tokenizer;->quotes:Ljava/lang/String;

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer;->delimiters:Ljava/lang/String;

    move v0, v8

    .line 286
    goto :goto_1

    .line 288
    :cond_c
    iput-boolean v4, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    .line 289
    sget-object v1, Lorg/xbill/DNS/Tokenizer;->delim:Ljava/lang/String;

    iput-object v1, p0, Lorg/xbill/DNS/Tokenizer;->delimiters:Ljava/lang/String;

    .line 290
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    goto :goto_1

    .line 293
    :cond_d
    const/16 v2, 0xa

    if-ne v1, v2, :cond_e

    .line 294
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    #calls: Lorg/xbill/DNS/Tokenizer$Token;->set(ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;
    invoke-static {v0, v7, v6}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    goto/16 :goto_0

    .line 295
    :cond_e
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_14

    .line 297
    :goto_2
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->getChar()I

    move-result v1

    .line 298
    const/16 v2, 0xa

    if-eq v1, v2, :cond_f

    if-ne v1, v5, :cond_10

    .line 302
    :cond_f
    if-eqz p2, :cond_11

    .line 303
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Tokenizer;->ungetChar(I)V

    .line 304
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    const/4 v1, 0x5

    iget-object v2, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    #calls: Lorg/xbill/DNS/Tokenizer$Token;->set(ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;
    invoke-static {v0, v1, v2}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    goto/16 :goto_0

    .line 300
    :cond_10
    iget-object v2, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 305
    :cond_11
    if-ne v1, v5, :cond_12

    if-eq v0, v8, :cond_12

    .line 308
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->checkUnbalancedParens()V

    .line 309
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    #calls: Lorg/xbill/DNS/Tokenizer$Token;->set(ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;
    invoke-static {v0, v4, v6}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    goto/16 :goto_0

    .line 310
    :cond_12
    iget v1, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    if-lez v1, :cond_13

    .line 311
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    .line 312
    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_1

    .line 315
    :cond_13
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    #calls: Lorg/xbill/DNS/Tokenizer$Token;->set(ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;
    invoke-static {v0, v7, v6}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    goto/16 :goto_0

    .line 317
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 319
    :cond_15
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Tokenizer;->ungetChar(I)V

    .line 331
    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_1a

    if-eq v0, v8, :cond_1a

    .line 332
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->checkUnbalancedParens()V

    .line 333
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    #calls: Lorg/xbill/DNS/Tokenizer$Token;->set(ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;
    invoke-static {v0, v4, v6}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    goto/16 :goto_0

    .line 321
    :cond_16
    const/16 v2, 0x5c

    if-ne v1, v2, :cond_19

    .line 322
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->getChar()I

    move-result v1

    .line 323
    if-ne v1, v5, :cond_17

    .line 324
    const-string v0, "unterminated escape sequence"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 325
    :cond_17
    iget-object v2, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 329
    :cond_18
    iget-object v2, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 326
    :cond_19
    iget-boolean v2, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    if-eqz v2, :cond_18

    const/16 v2, 0xa

    if-ne v1, v2, :cond_18

    .line 327
    const-string v0, "newline in quoted string"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 335
    :cond_1a
    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget-object v2, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    #calls: Lorg/xbill/DNS/Tokenizer$Token;->set(ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;
    invoke-static {v1, v0, v2}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getAddress(I)Ljava/net/InetAddress;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    const-string v0, "an address"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    :try_start_0
    invoke-static {v0, p1}, Lorg/xbill/DNS/Address;->getByAddress(Ljava/lang/String;I)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method public getBase32String(Lorg/xbill/DNS/utils/base32;)[B
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    const-string v0, "a base32 string"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/utils/base32;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    .line 679
    if-nez v0, :cond_0

    .line 680
    const-string v0, "invalid base32 encoding"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 681
    :cond_0
    return-object v0
.end method

.method public getBase64()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 612
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->getBase64(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getBase64(Z)[B
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->remainingStrings()Ljava/lang/String;

    move-result-object v0

    .line 590
    if-nez v0, :cond_2

    .line 591
    if-eqz p1, :cond_0

    .line 592
    const-string v0, "expected base64 encoded string"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 594
    :cond_0
    const/4 v0, 0x0

    .line 599
    :cond_1
    return-object v0

    .line 596
    :cond_2
    invoke-static {v0}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    .line 597
    if-nez v0, :cond_1

    .line 598
    const-string v0, "invalid base64 encoding"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method public getEOL()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 552
    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-eqz v0, :cond_0

    .line 553
    const-string v0, "expected EOL or EOF"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 555
    :cond_0
    return-void
.end method

.method public getHex()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 650
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->getHex(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getHex(Z)[B
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 627
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->remainingStrings()Ljava/lang/String;

    move-result-object v0

    .line 628
    if-nez v0, :cond_2

    .line 629
    if-eqz p1, :cond_0

    .line 630
    const-string v0, "expected hex encoded string"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 632
    :cond_0
    const/4 v0, 0x0

    .line 637
    :cond_1
    return-object v0

    .line 634
    :cond_2
    invoke-static {v0}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    .line 635
    if-nez v0, :cond_1

    .line 636
    const-string v0, "invalid hex encoding"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method public getHexString()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    const-string v0, "a hex string"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-static {v0}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    .line 663
    if-nez v0, :cond_0

    .line 664
    const-string v0, "invalid hex encoding"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 665
    :cond_0
    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    const-string v0, "an identifier"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    const-string v0, "an integer"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 409
    const-string v0, "expected an integer"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 411
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    const-string v0, "expected an integer"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method public getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    const-string v0, "a name"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    :try_start_0
    invoke-static {v0, p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 516
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    .line 517
    new-instance v1, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v1, v0}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v1
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    invoke-virtual {v0}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 518
    :cond_0
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    const-string v0, "expected a string"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 376
    :cond_0
    iget-object v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getTTL()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    const-string v0, "a TTL value"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    :try_start_0
    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    const-string v0, "expected a TTL value"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method public getTTLLike()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    const-string v0, "a TTL-like value"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lorg/xbill/DNS/TTL;->parse(Ljava/lang/String;Z)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    const-string v0, "expected a TTL-like value"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method public getUInt16()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->getLong()J

    move-result-wide v0

    .line 444
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0xffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 445
    :cond_0
    const-string v0, "expected an 16 bit unsigned integer"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 446
    :cond_1
    long-to-int v0, v0

    return v0
.end method

.method public getUInt32()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->getLong()J

    move-result-wide v0

    .line 428
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 429
    :cond_0
    const-string v0, "expected an 32 bit unsigned integer"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 430
    :cond_1
    return-wide v0
.end method

.method public getUInt8()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->getLong()J

    move-result-wide v0

    .line 460
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0xff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 461
    :cond_0
    const-string v0, "expected an 8 bit unsigned integer"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 462
    :cond_1
    long-to-int v0, v0

    return v0
.end method

.method public unget()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 356
    iget-boolean v0, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    if-eqz v0, :cond_0

    .line 357
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot unget multiple tokens"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-ne v0, v1, :cond_1

    .line 360
    iget v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    .line 361
    :cond_1
    iput-boolean v1, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    .line 362
    return-void
.end method
