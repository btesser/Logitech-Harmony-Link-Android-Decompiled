.class public Lorg/xbill/DNS/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/Cache$CacheMap;,
        Lorg/xbill/DNS/Cache$NegativeElement;,
        Lorg/xbill/DNS/Cache$CacheRRset;,
        Lorg/xbill/DNS/Cache$Element;
    }
.end annotation


# static fields
.field private static final defaultMaxEntries:I = 0xc350


# instance fields
.field private data:Lorg/xbill/DNS/Cache$CacheMap;

.field private dclass:I

.field private maxcache:I

.field private maxncache:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Cache;-><init>(I)V

    .line 182
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput v0, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    .line 158
    iput v0, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    .line 171
    iput p1, p0, Lorg/xbill/DNS/Cache;->dclass:I

    .line 172
    new-instance v0, Lorg/xbill/DNS/Cache$CacheMap;

    const v1, 0xc350

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Cache$CacheMap;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput v0, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    .line 158
    iput v0, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    .line 189
    new-instance v0, Lorg/xbill/DNS/Cache$CacheMap;

    const v1, 0xc350

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Cache$CacheMap;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 190
    new-instance v0, Lorg/xbill/DNS/Master;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Master;-><init>(Ljava/lang/String;)V

    .line 192
    :goto_0
    invoke-virtual {v0}, Lorg/xbill/DNS/Master;->nextRecord()Lorg/xbill/DNS/Record;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/xbill/DNS/Cache;->addRecord(Lorg/xbill/DNS/Record;ILjava/lang/Object;)V

    goto :goto_0

    .line 194
    :cond_0
    return-void
.end method

.method static synthetic access$000(JJ)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-static {p0, p1, p2, p3}, Lorg/xbill/DNS/Cache;->limitExpire(JJ)I

    move-result v0

    return v0
.end method

.method private declared-synchronized addElement(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Cache$Element;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 260
    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1, p2}, Lorg/xbill/DNS/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :goto_0
    monitor-exit p0

    return-void

    .line 264
    :cond_0
    :try_start_1
    invoke-interface {p2}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v2

    .line 265
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 266
    check-cast v0, Ljava/util/List;

    .line 267
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 268
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Cache$Element;

    .line 269
    invoke-interface {v1}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 270
    invoke-interface {v0, v3, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 267
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 274
    :cond_2
    :try_start_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    :cond_3
    check-cast v0, Lorg/xbill/DNS/Cache$Element;

    .line 277
    invoke-interface {v0}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 278
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1, p2}, Lorg/xbill/DNS/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 280
    :cond_4
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 281
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1, v1}, Lorg/xbill/DNS/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized allElements(Ljava/lang/Object;)[Lorg/xbill/DNS/Cache$Element;
    .locals 2
    .parameter

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 209
    check-cast p1, Ljava/util/List;

    .line 210
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 211
    new-array v0, v0, [Lorg/xbill/DNS/Cache$Element;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/Cache$Element;

    check-cast v0, [Lorg/xbill/DNS/Cache$Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :goto_0
    monitor-exit p0

    return-object v0

    .line 213
    :cond_0
    :try_start_1
    check-cast p1, Lorg/xbill/DNS/Cache$Element;

    .line 214
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/xbill/DNS/Cache$Element;

    const/4 v1, 0x0

    aput-object p1, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Cache;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 252
    if-nez v0, :cond_0

    .line 253
    const/4 v0, 0x0

    .line 254
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private findRecords(Lorg/xbill/DNS/Name;II)[Lorg/xbill/DNS/RRset;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 520
    invoke-virtual {p0, p1, p2, p3}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Lorg/xbill/DNS/SetResponse;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    invoke-virtual {v0}, Lorg/xbill/DNS/SetResponse;->answers()[Lorg/xbill/DNS/RRset;

    move-result-object v0

    .line 524
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final getCred(IZ)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x3

    .line 555
    if-ne p1, v2, :cond_1

    .line 556
    if-eqz p2, :cond_0

    move v0, v3

    .line 566
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 559
    goto :goto_0

    .line 560
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 561
    if-eqz p2, :cond_2

    move v0, v3

    .line 562
    goto :goto_0

    :cond_2
    move v0, v1

    .line 564
    goto :goto_0

    .line 565
    :cond_3
    if-ne p1, v1, :cond_4

    move v0, v2

    .line 566
    goto :goto_0

    .line 568
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getCred: invalid section"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static limitExpire(JJ)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 30
    cmp-long v0, p2, v6

    if-ltz v0, :cond_2

    cmp-long v0, p2, p0

    if-gez v0, :cond_2

    move-wide v0, p2

    .line 32
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 33
    cmp-long v2, v0, v6

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 34
    :cond_0
    const v0, 0x7fffffff

    .line 35
    :goto_1
    return v0

    :cond_1
    long-to-int v0, v0

    goto :goto_1

    :cond_2
    move-wide v0, p0

    goto :goto_0
.end method

.method private static markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 573
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 574
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getAdditionalName()Lorg/xbill/DNS/Name;

    move-result-object v0

    if-nez v0, :cond_1

    .line 584
    :cond_0
    return-void

    .line 577
    :cond_1
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v0

    .line 578
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xbill/DNS/Record;

    .line 580
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getAdditionalName()Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 581
    if-eqz v1, :cond_2

    .line 582
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private declared-synchronized oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 220
    monitor-enter p0

    .line 222
    const/16 v0, 0xff

    if-ne p3, v0, :cond_0

    .line 223
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "oneElement(ANY)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 224
    :cond_0
    :try_start_1
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 225
    check-cast p2, Ljava/util/List;

    .line 226
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 227
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Cache$Element;

    .line 228
    invoke-interface {v0}, Lorg/xbill/DNS/Cache$Element;->getType()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ne v2, p3, :cond_2

    .line 238
    :goto_1
    if-nez v0, :cond_4

    move-object v0, v3

    .line 246
    :cond_1
    :goto_2
    monitor-exit p0

    return-object v0

    .line 226
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 234
    :cond_3
    :try_start_2
    check-cast p2, Lorg/xbill/DNS/Cache$Element;

    .line 235
    invoke-interface {p2}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v0

    if-ne v0, p3, :cond_6

    move-object v0, p2

    .line 236
    goto :goto_1

    .line 240
    :cond_4
    invoke-interface {v0}, Lorg/xbill/DNS/Cache$Element;->expired()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 241
    invoke-direct {p0, p1, p3}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    move-object v0, v3

    .line 242
    goto :goto_2

    .line 244
    :cond_5
    invoke-interface {v0, p4}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-gez v1, :cond_1

    move-object v0, v3

    .line 245
    goto :goto_2

    :cond_6
    move-object v0, v3

    goto :goto_1
.end method

.method private declared-synchronized removeElement(Lorg/xbill/DNS/Name;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 291
    if-nez v0, :cond_1

    .line 311
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 294
    :cond_1
    :try_start_1
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 295
    check-cast v0, Ljava/util/List;

    .line 296
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 297
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Cache$Element;

    .line 298
    invoke-interface {v1}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v1

    if-ne v1, p2, :cond_2

    .line 299
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 300
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 296
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 306
    :cond_3
    :try_start_2
    check-cast v0, Lorg/xbill/DNS/Cache$Element;

    .line 307
    invoke-interface {v0}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 309
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized removeName(Lorg/xbill/DNS/Name;)V
    .locals 1
    .parameter

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addMessage(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/SetResponse;
    .locals 22
    .parameter

    .prologue
    .line 596
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v6

    .line 597
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v5

    .line 603
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v7

    invoke-virtual {v7}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v7

    .line 604
    const/4 v8, 0x0

    .line 606
    const/4 v9, 0x0

    .line 607
    const-string v10, "verbosecache"

    invoke-static {v10}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v10

    .line 610
    if-eqz v7, :cond_0

    const/4 v11, 0x3

    if-ne v7, v11, :cond_1

    :cond_0
    if-nez v5, :cond_3

    .line 612
    :cond_1
    const/4 v5, 0x0

    .line 724
    :cond_2
    :goto_0
    return-object v5

    .line 614
    :cond_3
    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v11

    .line 615
    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getType()I

    move-result v12

    .line 616
    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v13

    .line 620
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 622
    const/4 v5, 0x1

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)[Lorg/xbill/DNS/RRset;

    move-result-object v15

    .line 623
    const/4 v5, 0x0

    move-object/from16 v16, v11

    move-object/from16 v21, v9

    move v9, v8

    move v8, v5

    move-object/from16 v5, v21

    :goto_1
    move-object v0, v15

    array-length v0, v0

    move/from16 v17, v0

    move v0, v8

    move/from16 v1, v17

    if-ge v0, v1, :cond_1a

    .line 624
    aget-object v17, v15, v8

    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v17

    move/from16 v0, v17

    move v1, v13

    if-eq v0, v1, :cond_5

    .line 623
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 626
    :cond_5
    aget-object v17, v15, v8

    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v17

    .line 627
    aget-object v18, v15, v8

    invoke-virtual/range {v18 .. v18}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v18

    .line 628
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move v2, v6

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v19

    .line 629
    move/from16 v0, v17

    move v1, v12

    if-eq v0, v1, :cond_6

    const/16 v20, 0xff

    move v0, v12

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    :cond_6
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 632
    aget-object v9, v15, v8

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 633
    const/4 v9, 0x1

    .line 634
    move-object/from16 v0, v16

    move-object v1, v11

    if-ne v0, v1, :cond_8

    .line 635
    if-nez v5, :cond_7

    .line 636
    new-instance v5, Lorg/xbill/DNS/SetResponse;

    const/16 v17, 0x6

    move-object v0, v5

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 638
    :cond_7
    aget-object v17, v15, v8

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V

    .line 640
    :cond_8
    aget-object v17, v15, v8

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-static {v0, v1}, Lorg/xbill/DNS/Cache;->markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V

    goto :goto_2

    .line 641
    :cond_9
    const/16 v20, 0x5

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 643
    aget-object v17, v15, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 644
    move-object/from16 v0, v16

    move-object v1, v11

    if-ne v0, v1, :cond_19

    .line 645
    new-instance v5, Lorg/xbill/DNS/SetResponse;

    const/16 v16, 0x4

    aget-object v17, v15, v8

    move-object v0, v5

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    move-object/from16 v16, v5

    .line 647
    :goto_3
    aget-object v5, v15, v8

    invoke-virtual {v5}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v5

    check-cast v5, Lorg/xbill/DNS/CNAMERecord;

    .line 648
    invoke-virtual {v5}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v5

    move-object/from16 v21, v16

    move-object/from16 v16, v5

    move-object/from16 v5, v21

    .line 649
    goto/16 :goto_2

    :cond_a
    const/16 v20, 0x27

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 651
    aget-object v17, v15, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 652
    move-object/from16 v0, v16

    move-object v1, v11

    if-ne v0, v1, :cond_18

    .line 653
    new-instance v5, Lorg/xbill/DNS/SetResponse;

    const/16 v17, 0x5

    aget-object v18, v15, v8

    move-object v0, v5

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    move-object/from16 v17, v5

    .line 655
    :goto_4
    aget-object v5, v15, v8

    invoke-virtual {v5}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v5

    check-cast v5, Lorg/xbill/DNS/DNAMERecord;

    .line 657
    :try_start_0
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object/from16 v16, v5

    move-object/from16 v5, v17

    .line 661
    goto/16 :goto_2

    .line 659
    :catch_0
    move-exception v5

    move-object/from16 v8, v17

    .line 665
    :goto_5
    const/4 v5, 0x2

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)[Lorg/xbill/DNS/RRset;

    move-result-object v5

    .line 666
    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 667
    const/4 v15, 0x0

    move/from16 v21, v15

    move-object v15, v11

    move/from16 v11, v21

    :goto_6
    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    move v0, v11

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    .line 668
    aget-object v17, v5, v11

    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v17

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    aget-object v17, v5, v11

    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 670
    aget-object v15, v5, v11

    .line 667
    :cond_b
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 671
    :cond_c
    aget-object v17, v5, v11

    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    aget-object v17, v5, v11

    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 673
    aget-object v13, v5, v11

    goto :goto_7

    .line 675
    :cond_d
    if-nez v9, :cond_14

    .line 677
    const/4 v5, 0x3

    if-ne v7, v5, :cond_11

    const/4 v5, 0x0

    move v9, v5

    .line 678
    :goto_8
    const/4 v5, 0x3

    if-eq v7, v5, :cond_e

    if-nez v15, :cond_e

    if-nez v13, :cond_13

    .line 680
    :cond_e
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v11

    .line 681
    const/4 v5, 0x0

    .line 682
    if-eqz v15, :cond_f

    .line 683
    invoke-virtual {v15}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v5

    check-cast v5, Lorg/xbill/DNS/SOARecord;

    .line 684
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v9

    move-object v3, v5

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/xbill/DNS/Cache;->addNegative(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;I)V

    .line 685
    if-nez v8, :cond_15

    .line 687
    const/4 v5, 0x3

    if-ne v7, v5, :cond_12

    .line 688
    const/4 v5, 0x1

    .line 691
    :goto_9
    invoke-static {v5}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    move-result-object v5

    .line 711
    :goto_a
    const/4 v7, 0x3

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)[Lorg/xbill/DNS/RRset;

    move-result-object v7

    .line 712
    const/4 v8, 0x0

    :goto_b
    array-length v9, v7

    if-ge v8, v9, :cond_17

    .line 713
    aget-object v9, v7, v8

    invoke-virtual {v9}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v9

    .line 714
    const/4 v11, 0x1

    if-eq v9, v11, :cond_16

    const/16 v11, 0x1c

    if-eq v9, v11, :cond_16

    const/16 v11, 0x26

    if-eq v9, v11, :cond_16

    .line 712
    :cond_10
    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_11
    move v9, v12

    .line 677
    goto :goto_8

    .line 690
    :cond_12
    const/4 v5, 0x2

    goto :goto_9

    .line 696
    :cond_13
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v5

    .line 697
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 698
    invoke-static {v13, v14}, Lorg/xbill/DNS/Cache;->markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V

    .line 699
    if-nez v8, :cond_15

    .line 700
    new-instance v5, Lorg/xbill/DNS/SetResponse;

    const/4 v7, 0x3

    invoke-direct {v5, v7, v13}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    goto :goto_a

    .line 704
    :cond_14
    if-nez v7, :cond_15

    if-eqz v13, :cond_15

    .line 706
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v5

    .line 707
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 708
    invoke-static {v13, v14}, Lorg/xbill/DNS/Cache;->markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V

    :cond_15
    move-object v5, v8

    goto :goto_a

    .line 716
    :cond_16
    aget-object v9, v7, v8

    invoke-virtual {v9}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v9

    .line 717
    invoke-virtual {v14, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 719
    const/4 v9, 0x3

    move-object/from16 v0, p0

    move v1, v9

    move v2, v6

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v9

    .line 720
    aget-object v11, v7, v8

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    goto :goto_c

    .line 722
    :cond_17
    if-eqz v10, :cond_2

    .line 723
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addMessage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    move-object/from16 v17, v5

    goto/16 :goto_4

    :cond_19
    move-object/from16 v16, v5

    goto/16 :goto_3

    :cond_1a
    move-object v8, v5

    goto/16 :goto_5
.end method

.method public declared-synchronized addNegative(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 383
    monitor-enter p0

    .line 384
    if-eqz p3, :cond_3

    .line 385
    :try_start_0
    invoke-virtual {p3}, Lorg/xbill/DNS/SOARecord;->getTTL()J

    move-result-wide v0

    .line 386
    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lorg/xbill/DNS/Cache;->findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v2

    .line 387
    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    .line 388
    if-eqz v2, :cond_0

    invoke-interface {v2, p4}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v0

    if-gtz v0, :cond_0

    .line 389
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 391
    :cond_1
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2, p4}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v0

    if-gtz v0, :cond_2

    .line 392
    const/4 v0, 0x0

    .line 393
    :goto_2
    if-nez v0, :cond_0

    .line 394
    new-instance v0, Lorg/xbill/DNS/Cache$NegativeElement;

    iget v1, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    int-to-long v5, v1

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/xbill/DNS/Cache$NegativeElement;-><init>(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;IJ)V

    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/Cache;->addElement(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Cache$Element;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, v2

    goto :goto_2

    :cond_3
    move-wide v0, v3

    goto :goto_0
.end method

.method public declared-synchronized addRRset(Lorg/xbill/DNS/RRset;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v0

    .line 353
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 354
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v3

    .line 355
    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lorg/xbill/DNS/Cache;->findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v4

    .line 356
    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-nez v0, :cond_1

    .line 357
    if-eqz v4, :cond_0

    invoke-interface {v4, p2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v0

    if-gtz v0, :cond_0

    .line 358
    invoke-direct {p0, v2, v3}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 360
    :cond_1
    if-eqz v4, :cond_3

    :try_start_1
    invoke-interface {v4, p2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v0

    if-gtz v0, :cond_3

    .line 361
    const/4 v0, 0x0

    .line 362
    :goto_1
    if-nez v0, :cond_0

    .line 364
    instance-of v0, p1, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v0, :cond_2

    .line 365
    check-cast p1, Lorg/xbill/DNS/Cache$CacheRRset;

    move-object v0, p1

    .line 368
    :goto_2
    invoke-direct {p0, v2, v0}, Lorg/xbill/DNS/Cache;->addElement(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Cache$Element;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 367
    :cond_2
    :try_start_2
    new-instance v0, Lorg/xbill/DNS/Cache$CacheRRset;

    iget v1, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    int-to-long v3, v1

    invoke-direct {v0, p1, p2, v3, v4}, Lorg/xbill/DNS/Cache$CacheRRset;-><init>(Lorg/xbill/DNS/RRset;IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_3
    move-object v0, v4

    goto :goto_1
.end method

.method public declared-synchronized addRecord(Lorg/xbill/DNS/Record;ILjava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 329
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v1

    .line 330
    invoke-static {v1}, Lorg/xbill/DNS/Type;->isRR(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 342
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 332
    :cond_1
    :try_start_1
    invoke-direct {p0, v0, v1, p2}, Lorg/xbill/DNS/Cache;->findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v0

    .line 333
    if-nez v0, :cond_2

    .line 334
    new-instance v0, Lorg/xbill/DNS/Cache$CacheRRset;

    iget v1, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    int-to-long v1, v1

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/xbill/DNS/Cache$CacheRRset;-><init>(Lorg/xbill/DNS/Record;IJ)V

    .line 335
    invoke-virtual {p0, v0, p2}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 336
    :cond_2
    :try_start_2
    invoke-interface {v0, p2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 337
    instance-of v1, v0, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v1, :cond_0

    .line 338
    check-cast v0, Lorg/xbill/DNS/Cache$CacheRRset;

    .line 339
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheRRset;->addRR(Lorg/xbill/DNS/Record;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized clearCache()V
    .locals 1

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    monitor-exit p0

    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findAnyRecords(Lorg/xbill/DNS/Name;I)[Lorg/xbill/DNS/RRset;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 550
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Cache;->findRecords(Lorg/xbill/DNS/Name;II)[Lorg/xbill/DNS/RRset;

    move-result-object v0

    return-object v0
.end method

.method public findRecords(Lorg/xbill/DNS/Name;I)[Lorg/xbill/DNS/RRset;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 537
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Cache;->findRecords(Lorg/xbill/DNS/Name;II)[Lorg/xbill/DNS/RRset;

    move-result-object v0

    return-object v0
.end method

.method public flushName(Lorg/xbill/DNS/Name;)V
    .locals 0
    .parameter

    .prologue
    .line 745
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Cache;->removeName(Lorg/xbill/DNS/Name;)V

    .line 746
    return-void
.end method

.method public flushSet(Lorg/xbill/DNS/Name;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 735
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    .line 736
    return-void
.end method

.method public getDClass()I
    .locals 1

    .prologue
    .line 826
    iget v0, p0, Lorg/xbill/DNS/Cache;->dclass:I

    return v0
.end method

.method public getMaxCache()I
    .locals 1

    .prologue
    .line 782
    iget v0, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    return v0
.end method

.method public getMaxEntries()I
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheMap;->getMaxSize()I

    move-result v0

    return v0
.end method

.method public getMaxNCache()I
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheMap;->size()I

    move-result v0

    return v0
.end method

.method protected declared-synchronized lookup(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    move v3, v2

    .line 414
    :goto_0
    const/4 v1, 0x1

    if-lt v3, v1, :cond_10

    .line 415
    const/4 v1, 0x1

    if-ne v3, v1, :cond_1

    const/4 v1, 0x1

    .line 416
    :goto_1
    if-ne v3, v2, :cond_2

    const/4 v4, 0x1

    .line 418
    :goto_2
    if-eqz v1, :cond_3

    .line 419
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    move-object v5, v1

    .line 425
    :goto_3
    iget-object v1, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v1, v5}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 426
    if-nez v6, :cond_5

    .line 414
    :cond_0
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_0

    .line 415
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 416
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 420
    :cond_3
    if-eqz v4, :cond_4

    move-object v5, p1

    .line 421
    goto :goto_3

    .line 423
    :cond_4
    new-instance v1, Lorg/xbill/DNS/Name;

    sub-int v5, v2, v3

    invoke-direct {v1, p1, v5}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    move-object v5, v1

    goto :goto_3

    .line 430
    :cond_5
    if-eqz v4, :cond_a

    const/16 v1, 0xff

    if-ne p2, v1, :cond_a

    .line 431
    new-instance v7, Lorg/xbill/DNS/SetResponse;

    const/4 v1, 0x6

    invoke-direct {v7, v1}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 432
    invoke-direct {p0, v6}, Lorg/xbill/DNS/Cache;->allElements(Ljava/lang/Object;)[Lorg/xbill/DNS/Cache$Element;

    move-result-object v8

    .line 433
    const/4 v1, 0x0

    .line 434
    const/4 v9, 0x0

    move v10, v1

    :goto_4
    array-length v1, v8

    if-ge v9, v1, :cond_9

    .line 435
    aget-object v1, v8, v9

    .line 436
    invoke-interface {v1}, Lorg/xbill/DNS/Cache$Element;->expired()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 437
    invoke-interface {v1}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v1

    invoke-direct {p0, v5, v1}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    move v1, v10

    .line 434
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move v10, v1

    goto :goto_4

    .line 440
    :cond_6
    instance-of v11, v1, Lorg/xbill/DNS/Cache$CacheRRset;

    if-nez v11, :cond_7

    move v1, v10

    .line 441
    goto :goto_5

    .line 442
    :cond_7
    invoke-interface {v1, p3}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v11

    if-gez v11, :cond_8

    move v1, v10

    .line 443
    goto :goto_5

    .line 444
    :cond_8
    check-cast v1, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-virtual {v7, v1}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    add-int/lit8 v1, v10, 0x1

    goto :goto_5

    .line 448
    :cond_9
    if-lez v10, :cond_a

    move-object v1, v7

    .line 500
    :goto_6
    monitor-exit p0

    return-object v1

    .line 456
    :cond_a
    if-eqz v4, :cond_d

    .line 457
    :try_start_1
    invoke-direct {p0, v5, v6, p2, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v1

    .line 458
    if-eqz v1, :cond_b

    instance-of v7, v1, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v7, :cond_b

    .line 461
    new-instance v2, Lorg/xbill/DNS/SetResponse;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 462
    move-object v0, v1

    check-cast v0, Lorg/xbill/DNS/Cache$CacheRRset;

    move-object p1, v0

    invoke-virtual {v2, p1}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V

    move-object v1, v2

    .line 463
    goto :goto_6

    .line 464
    :cond_b
    if-eqz v1, :cond_c

    .line 465
    new-instance v1, Lorg/xbill/DNS/SetResponse;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/xbill/DNS/SetResponse;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 412
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 469
    :cond_c
    const/4 v1, 0x5

    :try_start_2
    invoke-direct {p0, v5, v6, v1, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v1

    .line 470
    if-eqz v1, :cond_e

    instance-of v7, v1, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v7, :cond_e

    .line 473
    new-instance v2, Lorg/xbill/DNS/SetResponse;

    const/4 v3, 0x4

    move-object v0, v1

    check-cast v0, Lorg/xbill/DNS/Cache$CacheRRset;

    move-object p1, v0

    invoke-direct {v2, v3, p1}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    move-object v1, v2

    goto :goto_6

    .line 477
    :cond_d
    const/16 v1, 0x27

    invoke-direct {p0, v5, v6, v1, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v1

    .line 478
    if-eqz v1, :cond_e

    instance-of v7, v1, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v7, :cond_e

    .line 481
    new-instance v2, Lorg/xbill/DNS/SetResponse;

    const/4 v3, 0x5

    move-object v0, v1

    check-cast v0, Lorg/xbill/DNS/Cache$CacheRRset;

    move-object p1, v0

    invoke-direct {v2, v3, p1}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    move-object v1, v2

    goto :goto_6

    .line 487
    :cond_e
    const/4 v1, 0x2

    invoke-direct {p0, v5, v6, v1, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v1

    .line 488
    if-eqz v1, :cond_f

    instance-of v7, v1, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v7, :cond_f

    .line 489
    new-instance v2, Lorg/xbill/DNS/SetResponse;

    const/4 v3, 0x3

    move-object v0, v1

    check-cast v0, Lorg/xbill/DNS/Cache$CacheRRset;

    move-object p1, v0

    invoke-direct {v2, v3, p1}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    move-object v1, v2

    goto :goto_6

    .line 493
    :cond_f
    if-eqz v4, :cond_0

    .line 494
    const/4 v1, 0x0

    invoke-direct {p0, v5, v6, v1, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v1

    .line 495
    if-eqz v1, :cond_0

    .line 496
    const/4 v1, 0x1

    invoke-static {v1}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    move-result-object v1

    goto :goto_6

    .line 500
    :cond_10
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto/16 :goto_6
.end method

.method public lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 515
    invoke-virtual {p0, p1, p2, p3}, Lorg/xbill/DNS/Cache;->lookup(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    return-object v0
.end method

.method public setMaxCache(I)V
    .locals 0
    .parameter

    .prologue
    .line 773
    iput p1, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    .line 774
    return-void
.end method

.method public setMaxEntries(I)V
    .locals 1
    .parameter

    .prologue
    .line 818
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->setMaxSize(I)V

    .line 819
    return-void
.end method

.method public setMaxNCache(I)V
    .locals 0
    .parameter

    .prologue
    .line 755
    iput p1, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    .line 756
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 834
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 835
    monitor-enter p0

    .line 836
    :try_start_0
    iget-object v1, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v1}, Lorg/xbill/DNS/Cache$CacheMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 837
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 838
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/xbill/DNS/Cache;->allElements(Ljava/lang/Object;)[Lorg/xbill/DNS/Cache$Element;

    move-result-object v2

    .line 839
    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 840
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 841
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 839
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 844
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 844
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
