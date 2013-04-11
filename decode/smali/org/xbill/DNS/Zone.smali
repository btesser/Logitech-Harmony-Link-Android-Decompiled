.class public Lorg/xbill/DNS/Zone;
.super Ljava/lang/Object;
.source "Zone.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/Zone$ZoneIterator;
    }
.end annotation


# static fields
.field public static final PRIMARY:I = 0x1

.field public static final SECONDARY:I = 0x2

.field private static final serialVersionUID:J = -0x7ff5d5cd9cf8a31eL


# instance fields
.field private NS:Lorg/xbill/DNS/RRset;

.field private SOA:Lorg/xbill/DNS/SOARecord;

.field private data:Ljava/util/Map;

.field private dclass:I

.field private hasWild:Z

.field private origin:Lorg/xbill/DNS/Name;

.field private originNode:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/Name;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/Zone;->dclass:I

    .line 200
    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Lorg/xbill/DNS/ZoneTransferIn;->newAXFR(Lorg/xbill/DNS/Name;Ljava/lang/String;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v0

    .line 201
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/ZoneTransferIn;->setDClass(I)V

    .line 202
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Zone;->fromXFR(Lorg/xbill/DNS/ZoneTransferIn;)V

    .line 203
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/Zone;->dclass:I

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    .line 137
    if-nez p1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no zone name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    new-instance v0, Lorg/xbill/DNS/Master;

    invoke-direct {v0, p2, p1}, Lorg/xbill/DNS/Master;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    .line 142
    iput-object p1, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 143
    :goto_0
    invoke-virtual {v0}, Lorg/xbill/DNS/Master;->nextRecord()Lorg/xbill/DNS/Record;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 144
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Zone;->maybeAddRecord(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-direct {p0}, Lorg/xbill/DNS/Zone;->validate()V

    .line 146
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;[Lorg/xbill/DNS/Record;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/Zone;->dclass:I

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    .line 158
    if-nez p1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no zone name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iput-object p1, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 161
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 162
    aget-object v1, p2, v0

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Zone;->maybeAddRecord(Lorg/xbill/DNS/Record;)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_1
    invoke-direct {p0}, Lorg/xbill/DNS/Zone;->validate()V

    .line 164
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/ZoneTransferIn;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/Zone;->dclass:I

    .line 189
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Zone;->fromXFR(Lorg/xbill/DNS/ZoneTransferIn;)V

    .line 190
    return-void
.end method

.method static synthetic access$000(Lorg/xbill/DNS/Zone;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lorg/xbill/DNS/Zone;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->originNode:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lorg/xbill/DNS/Zone;Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Zone;->allRRsets(Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/xbill/DNS/Zone;Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/xbill/DNS/Zone;)Lorg/xbill/DNS/Name;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method private declared-synchronized addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/RRset;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/xbill/DNS/Zone;->hasWild:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/Zone;->hasWild:Z

    .line 276
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 277
    if-nez v0, :cond_1

    .line 278
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :goto_0
    monitor-exit p0

    return-void

    .line 281
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v2

    .line 282
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 283
    check-cast v0, Ljava/util/List;

    .line 284
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    .line 285
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/RRset;

    .line 286
    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 287
    invoke-interface {v0, v3, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 284
    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 291
    :cond_3
    :try_start_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    :cond_4
    check-cast v0, Lorg/xbill/DNS/RRset;

    .line 294
    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 295
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 297
    :cond_5
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 298
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized allRRsets(Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;
    .locals 2
    .parameter

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 237
    check-cast p1, Ljava/util/List;

    .line 238
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/xbill/DNS/RRset;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/RRset;

    check-cast v0, [Lorg/xbill/DNS/RRset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :goto_0
    monitor-exit p0

    return-object v0

    .line 240
    :cond_0
    :try_start_1
    check-cast p1, Lorg/xbill/DNS/RRset;

    .line 241
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/xbill/DNS/RRset;

    const/4 v1, 0x0

    aput-object p1, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
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

.method private declared-synchronized findRRset(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Zone;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 267
    if-nez v0, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 269
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0, v0, p2}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private fromXFR(Lorg/xbill/DNS/ZoneTransferIn;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    .line 170
    invoke-virtual {p1}, Lorg/xbill/DNS/ZoneTransferIn;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 171
    invoke-virtual {p1}, Lorg/xbill/DNS/ZoneTransferIn;->run()Ljava/util/List;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    .line 174
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Zone;->maybeAddRecord(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/ZoneTransferIn;->isAXFR()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "zones can only be created from AXFRs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    invoke-direct {p0}, Lorg/xbill/DNS/Zone;->validate()V

    .line 180
    return-void
.end method

.method private declared-synchronized lookup(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/SetResponse;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 340
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 422
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 343
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 344
    iget-object v1, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    move v2, v1

    .line 346
    :goto_1
    if-gt v2, v0, :cond_d

    .line 347
    if-ne v2, v1, :cond_3

    move v3, v8

    .line 348
    :goto_2
    if-ne v2, v0, :cond_4

    move v4, v8

    .line 350
    :goto_3
    if-eqz v3, :cond_5

    .line 351
    iget-object v5, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 357
    :goto_4
    invoke-direct {p0, v5}, Lorg/xbill/DNS/Zone;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;

    move-result-object v5

    .line 358
    if-nez v5, :cond_7

    .line 346
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v3, v7

    .line 347
    goto :goto_2

    :cond_4
    move v4, v7

    .line 348
    goto :goto_3

    .line 352
    :cond_5
    if-eqz v4, :cond_6

    move-object v5, p1

    .line 353
    goto :goto_4

    .line 355
    :cond_6
    new-instance v5, Lorg/xbill/DNS/Name;

    sub-int v6, v0, v2

    invoke-direct {v5, p1, v6}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 362
    :cond_7
    if-nez v3, :cond_8

    .line 363
    const/4 v3, 0x2

    :try_start_2
    invoke-direct {p0, v5, v3}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v3

    .line 364
    if-eqz v3, :cond_8

    .line 365
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v3}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    goto :goto_0

    .line 370
    :cond_8
    if-eqz v4, :cond_9

    const/16 v3, 0xff

    if-ne p2, v3, :cond_9

    .line 371
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 372
    invoke-direct {p0, v5}, Lorg/xbill/DNS/Zone;->allRRsets(Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;

    move-result-object v1

    move v2, v7

    .line 373
    :goto_5
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 374
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 382
    :cond_9
    if-eqz v4, :cond_b

    .line 383
    invoke-direct {p0, v5, p2}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v3

    .line 384
    if-eqz v3, :cond_a

    .line 385
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 386
    invoke-virtual {v0, v3}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V

    goto :goto_0

    .line 389
    :cond_a
    const/4 v3, 0x5

    invoke-direct {p0, v5, v3}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v3

    .line 390
    if-eqz v3, :cond_c

    .line 391
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    const/4 v1, 0x4

    invoke-direct {v0, v1, v3}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    goto :goto_0

    .line 394
    :cond_b
    const/16 v3, 0x27

    invoke-direct {p0, v5, v3}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v3

    .line 395
    if-eqz v3, :cond_c

    .line 396
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v3}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    goto/16 :goto_0

    .line 401
    :cond_c
    if-eqz v4, :cond_2

    .line 402
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    goto/16 :goto_0

    .line 405
    :cond_d
    iget-boolean v2, p0, Lorg/xbill/DNS/Zone;->hasWild:Z

    if-eqz v2, :cond_10

    move v2, v7

    .line 406
    :goto_6
    sub-int v3, v0, v1

    if-ge v2, v3, :cond_10

    .line 407
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/Name;->wild(I)Lorg/xbill/DNS/Name;

    move-result-object v3

    .line 409
    invoke-direct {p0, v3}, Lorg/xbill/DNS/Zone;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;

    move-result-object v3

    .line 410
    if-nez v3, :cond_f

    .line 406
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 413
    :cond_f
    invoke-direct {p0, v3, p2}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v3

    .line 414
    if-eqz v3, :cond_e

    .line 415
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 416
    invoke-virtual {v0, v3}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V

    goto/16 :goto_0

    .line 422
    :cond_10
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto/16 :goto_0
.end method

.method private final maybeAddRecord(Lorg/xbill/DNS/Record;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v0

    .line 116
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 118
    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SOA owner "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match zone origin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Zone;->addRecord(Lorg/xbill/DNS/Record;)V

    .line 125
    :cond_1
    return-void
.end method

.method private nodeToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 523
    invoke-direct {p0, p2}, Lorg/xbill/DNS/Zone;->allRRsets(Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;

    move-result-object v0

    .line 524
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 525
    aget-object v2, v0, v1

    .line 526
    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v3

    .line 527
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 528
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 529
    :cond_0
    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->sigs()Ljava/util/Iterator;

    move-result-object v2

    .line 530
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 524
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 533
    :cond_2
    return-void
.end method

.method private declared-synchronized oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 247
    monitor-enter p0

    const/16 v0, 0xff

    if-ne p2, v0, :cond_0

    .line 248
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "oneRRset(ANY)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 249
    :cond_0
    :try_start_1
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 250
    check-cast p1, Ljava/util/List;

    .line 251
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 252
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/RRset;

    .line 253
    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getType()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ne v2, p2, :cond_1

    .line 261
    :goto_1
    monitor-exit p0

    return-object v0

    .line 251
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 257
    :cond_2
    :try_start_2
    check-cast p1, Lorg/xbill/DNS/RRset;

    .line 258
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-ne v0, p2, :cond_3

    move-object v0, p1

    .line 259
    goto :goto_1

    .line 261
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private declared-synchronized removeRRset(Lorg/xbill/DNS/Name;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 308
    if-nez v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 311
    :cond_1
    :try_start_1
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 312
    check-cast v0, Ljava/util/List;

    .line 313
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 314
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/RRset;

    .line 315
    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v1

    if-ne v1, p2, :cond_2

    .line 316
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 317
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 313
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 323
    :cond_3
    :try_start_2
    check-cast v0, Lorg/xbill/DNS/RRset;

    .line 324
    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 326
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Zone;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->originNode:Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->originNode:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": no data specified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->originNode:Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 103
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": exactly 1 SOA must be specified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_2
    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/SOARecord;

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->SOA:Lorg/xbill/DNS/SOARecord;

    .line 108
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->originNode:Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Zone;->NS:Lorg/xbill/DNS/RRset;

    .line 109
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->NS:Lorg/xbill/DNS/RRset;

    if-nez v0, :cond_3

    .line 110
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": no NS set specified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_3
    return-void
.end method


# virtual methods
.method public AXFR()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 518
    new-instance v0, Lorg/xbill/DNS/Zone$ZoneIterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/xbill/DNS/Zone$ZoneIterator;-><init>(Lorg/xbill/DNS/Zone;Z)V

    return-object v0
.end method

.method public addRRset(Lorg/xbill/DNS/RRset;)V
    .locals 1
    .parameter

    .prologue
    .line 459
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 460
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/Zone;->addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/RRset;)V

    .line 461
    return-void
.end method

.method public addRecord(Lorg/xbill/DNS/Record;)V
    .locals 2
    .parameter

    .prologue
    .line 470
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 471
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v1

    .line 472
    monitor-enter p0

    .line 473
    :try_start_0
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Zone;->findRRset(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;

    move-result-object v1

    .line 474
    if-nez v1, :cond_0

    .line 475
    new-instance v1, Lorg/xbill/DNS/RRset;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/Record;)V

    .line 476
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Zone;->addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/RRset;)V

    .line 480
    :goto_0
    monitor-exit p0

    .line 481
    return-void

    .line 478
    :cond_0
    invoke-virtual {v1, p1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public findExactMatch(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 446
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Zone;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;

    move-result-object v0

    .line 447
    if-nez v0, :cond_0

    .line 448
    const/4 v0, 0x0

    .line 449
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v0

    goto :goto_0
.end method

.method public findRecords(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/SetResponse;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 434
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Zone;->lookup(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDClass()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lorg/xbill/DNS/Zone;->dclass:I

    return v0
.end method

.method public getNS()Lorg/xbill/DNS/RRset;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->NS:Lorg/xbill/DNS/RRset;

    return-object v0
.end method

.method public getOrigin()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getSOA()Lorg/xbill/DNS/SOARecord;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->SOA:Lorg/xbill/DNS/SOARecord;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 508
    new-instance v0, Lorg/xbill/DNS/Zone$ZoneIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/xbill/DNS/Zone$ZoneIterator;-><init>(Lorg/xbill/DNS/Zone;Z)V

    return-object v0
.end method

.method public removeRecord(Lorg/xbill/DNS/Record;)V
    .locals 5
    .parameter

    .prologue
    .line 490
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 491
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v1

    .line 492
    monitor-enter p0

    .line 493
    :try_start_0
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Zone;->findRRset(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;

    move-result-object v2

    .line 494
    if-nez v2, :cond_0

    .line 495
    monitor-exit p0

    .line 501
    :goto_0
    return-void

    .line 496
    :cond_0
    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/xbill/DNS/Record;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 497
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Zone;->removeRRset(Lorg/xbill/DNS/Name;I)V

    .line 500
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 499
    :cond_1
    :try_start_1
    invoke-virtual {v2, p1}, Lorg/xbill/DNS/RRset;->deleteRR(Lorg/xbill/DNS/Record;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized toMasterFile()Ljava/lang/String;
    .locals 5

    .prologue
    .line 540
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 541
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 542
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->originNode:Ljava/lang/Object;

    invoke-direct {p0, v2, v0}, Lorg/xbill/DNS/Zone;->nodeToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 543
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 545
    iget-object v3, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 546
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lorg/xbill/DNS/Zone;->nodeToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 548
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    invoke-virtual {p0}, Lorg/xbill/DNS/Zone;->toMasterFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
