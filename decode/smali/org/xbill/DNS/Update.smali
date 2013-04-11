.class public Lorg/xbill/DNS/Update;
.super Lorg/xbill/DNS/Message;
.source "Update.java"


# instance fields
.field private dclass:I

.field private origin:Lorg/xbill/DNS/Name;


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/Name;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/Update;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/xbill/DNS/Message;-><init>()V

    .line 27
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    .line 29
    :cond_0
    invoke-static {p2}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 30
    invoke-virtual {p0}, Lorg/xbill/DNS/Update;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->setOpcode(I)V

    .line 31
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 32
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/Update;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 33
    iput-object p1, p0, Lorg/xbill/DNS/Update;->origin:Lorg/xbill/DNS/Name;

    .line 34
    iput p2, p0, Lorg/xbill/DNS/Update;->dclass:I

    .line 35
    return-void
.end method

.method private newPrereq(Lorg/xbill/DNS/Record;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/xbill/DNS/Update;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 49
    return-void
.end method

.method private newUpdate(Lorg/xbill/DNS/Record;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/xbill/DNS/Update;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 54
    return-void
.end method


# virtual methods
.method public absent(Lorg/xbill/DNS/Name;)V
    .locals 4
    .parameter

    .prologue
    .line 117
    const/16 v0, 0xff

    const/16 v1, 0xfe

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newPrereq(Lorg/xbill/DNS/Record;)V

    .line 118
    return-void
.end method

.method public absent(Lorg/xbill/DNS/Name;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 126
    const/16 v0, 0xfe

    const-wide/16 v1, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newPrereq(Lorg/xbill/DNS/Record;)V

    .line 127
    return-void
.end method

.method public add(Lorg/xbill/DNS/Name;IJLjava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget v2, p0, Lorg/xbill/DNS/Update;->dclass:I

    iget-object v6, p0, Lorg/xbill/DNS/Update;->origin:Lorg/xbill/DNS/Name;

    move-object v0, p1

    move v1, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newUpdate(Lorg/xbill/DNS/Record;)V

    .line 137
    return-void
.end method

.method public add(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Tokenizer;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget v2, p0, Lorg/xbill/DNS/Update;->dclass:I

    iget-object v6, p0, Lorg/xbill/DNS/Update;->origin:Lorg/xbill/DNS/Name;

    move-object v0, p1

    move v1, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newUpdate(Lorg/xbill/DNS/Record;)V

    .line 148
    return-void
.end method

.method public add(Lorg/xbill/DNS/RRset;)V
    .locals 2
    .parameter

    .prologue
    .line 173
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Update;->add(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method

.method public add(Lorg/xbill/DNS/Record;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Update;->newUpdate(Lorg/xbill/DNS/Record;)V

    .line 156
    return-void
.end method

.method public add([Lorg/xbill/DNS/Record;)V
    .locals 2
    .parameter

    .prologue
    .line 163
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 164
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/Update;->add(Lorg/xbill/DNS/Record;)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    return-void
.end method

.method public delete(Lorg/xbill/DNS/Name;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xff

    .line 183
    const-wide/16 v0, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newUpdate(Lorg/xbill/DNS/Record;)V

    .line 184
    return-void
.end method

.method public delete(Lorg/xbill/DNS/Name;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 192
    const/16 v0, 0xff

    const-wide/16 v1, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newUpdate(Lorg/xbill/DNS/Record;)V

    .line 193
    return-void
.end method

.method public delete(Lorg/xbill/DNS/Name;ILjava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    const/16 v2, 0xfe

    const-wide/16 v3, 0x0

    iget-object v6, p0, Lorg/xbill/DNS/Update;->origin:Lorg/xbill/DNS/Name;

    move-object v0, p1

    move v1, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newUpdate(Lorg/xbill/DNS/Record;)V

    .line 204
    return-void
.end method

.method public delete(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/Tokenizer;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    const/16 v2, 0xfe

    const-wide/16 v3, 0x0

    iget-object v6, p0, Lorg/xbill/DNS/Update;->origin:Lorg/xbill/DNS/Name;

    move-object v0, p1

    move v1, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newUpdate(Lorg/xbill/DNS/Record;)V

    .line 215
    return-void
.end method

.method public delete(Lorg/xbill/DNS/RRset;)V
    .locals 2
    .parameter

    .prologue
    .line 240
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Update;->delete(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    .line 242
    :cond_0
    return-void
.end method

.method public delete(Lorg/xbill/DNS/Record;)V
    .locals 3
    .parameter

    .prologue
    .line 222
    const/16 v0, 0xfe

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/xbill/DNS/Record;->withDClass(IJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newUpdate(Lorg/xbill/DNS/Record;)V

    .line 223
    return-void
.end method

.method public delete([Lorg/xbill/DNS/Record;)V
    .locals 2
    .parameter

    .prologue
    .line 230
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 231
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/Update;->delete(Lorg/xbill/DNS/Record;)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method

.method public present(Lorg/xbill/DNS/Name;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xff

    .line 62
    const-wide/16 v0, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newPrereq(Lorg/xbill/DNS/Record;)V

    .line 63
    return-void
.end method

.method public present(Lorg/xbill/DNS/Name;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 71
    const/16 v0, 0xff

    const-wide/16 v1, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newPrereq(Lorg/xbill/DNS/Record;)V

    .line 72
    return-void
.end method

.method public present(Lorg/xbill/DNS/Name;ILjava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget v2, p0, Lorg/xbill/DNS/Update;->dclass:I

    const-wide/16 v3, 0x0

    iget-object v6, p0, Lorg/xbill/DNS/Update;->origin:Lorg/xbill/DNS/Name;

    move-object v0, p1

    move v1, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newPrereq(Lorg/xbill/DNS/Record;)V

    .line 85
    return-void
.end method

.method public present(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/Tokenizer;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget v2, p0, Lorg/xbill/DNS/Update;->dclass:I

    const-wide/16 v3, 0x0

    iget-object v6, p0, Lorg/xbill/DNS/Update;->origin:Lorg/xbill/DNS/Name;

    move-object v0, p1

    move v1, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newPrereq(Lorg/xbill/DNS/Record;)V

    .line 98
    return-void
.end method

.method public present(Lorg/xbill/DNS/Record;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Update;->newPrereq(Lorg/xbill/DNS/Record;)V

    .line 109
    return-void
.end method

.method public replace(Lorg/xbill/DNS/Name;IJLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0, p1, p2}, Lorg/xbill/DNS/Update;->delete(Lorg/xbill/DNS/Name;I)V

    .line 253
    invoke-virtual/range {p0 .. p5}, Lorg/xbill/DNS/Update;->add(Lorg/xbill/DNS/Name;IJLjava/lang/String;)V

    .line 254
    return-void
.end method

.method public replace(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Tokenizer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p0, p1, p2}, Lorg/xbill/DNS/Update;->delete(Lorg/xbill/DNS/Name;I)V

    .line 266
    invoke-virtual/range {p0 .. p5}, Lorg/xbill/DNS/Update;->add(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Tokenizer;)V

    .line 267
    return-void
.end method

.method public replace(Lorg/xbill/DNS/RRset;)V
    .locals 2
    .parameter

    .prologue
    .line 295
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/Update;->delete(Lorg/xbill/DNS/Name;I)V

    .line 296
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Update;->add(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    .line 298
    :cond_0
    return-void
.end method

.method public replace(Lorg/xbill/DNS/Record;)V
    .locals 2
    .parameter

    .prologue
    .line 275
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/Update;->delete(Lorg/xbill/DNS/Name;I)V

    .line 276
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Update;->add(Lorg/xbill/DNS/Record;)V

    .line 277
    return-void
.end method

.method public replace([Lorg/xbill/DNS/Record;)V
    .locals 2
    .parameter

    .prologue
    .line 285
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 286
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/Update;->replace(Lorg/xbill/DNS/Record;)V

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_0
    return-void
.end method
