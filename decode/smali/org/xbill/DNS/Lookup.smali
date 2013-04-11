.class public final Lorg/xbill/DNS/Lookup;
.super Ljava/lang/Object;
.source "Lookup.java"


# static fields
.field public static final HOST_NOT_FOUND:I = 0x3

.field public static final SUCCESSFUL:I = 0x0

.field public static final TRY_AGAIN:I = 0x2

.field public static final TYPE_NOT_FOUND:I = 0x4

.field public static final UNRECOVERABLE:I = 0x1

.field private static defaultCaches:Ljava/util/Map;

.field private static defaultResolver:Lorg/xbill/DNS/Resolver;

.field private static defaultSearchPath:[Lorg/xbill/DNS/Name;

.field private static final noAliases:[Lorg/xbill/DNS/Name;


# instance fields
.field private aliases:Ljava/util/List;

.field private answers:[Lorg/xbill/DNS/Record;

.field private badresponse:Z

.field private badresponse_error:Ljava/lang/String;

.field private cache:Lorg/xbill/DNS/Cache;

.field private credibility:I

.field private dclass:I

.field private done:Z

.field private doneCurrent:Z

.field private error:Ljava/lang/String;

.field private foundAlias:Z

.field private iterations:I

.field private name:Lorg/xbill/DNS/Name;

.field private nametoolong:Z

.field private networkerror:Z

.field private nxdomain:Z

.field private referral:Z

.field private resolver:Lorg/xbill/DNS/Resolver;

.field private result:I

.field private searchPath:[Lorg/xbill/DNS/Name;

.field private temporary_cache:Z

.field private timedout:Z

.field private type:I

.field private verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/xbill/DNS/Name;

    sput-object v0, Lorg/xbill/DNS/Lookup;->noAliases:[Lorg/xbill/DNS/Name;

    .line 95
    invoke-static {}, Lorg/xbill/DNS/Lookup;->refreshDefault()V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 298
    invoke-static {p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 299
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 287
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-static {p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 273
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 257
    invoke-direct {p0, p1, v0, v0}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 258
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 246
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 247
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    invoke-static {p2}, Lorg/xbill/DNS/Type;->check(I)V

    .line 219
    invoke-static {p3}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 220
    invoke-static {p2}, Lorg/xbill/DNS/Type;->isRR(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xff

    if-eq p2, v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot query for meta-types other than ANY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    .line 224
    iput p2, p0, Lorg/xbill/DNS/Lookup;->type:I

    .line 225
    iput p3, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    .line 226
    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    .line 227
    :try_start_0
    invoke-static {}, Lorg/xbill/DNS/Lookup;->getDefaultResolver()Lorg/xbill/DNS/Resolver;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->resolver:Lorg/xbill/DNS/Resolver;

    .line 228
    invoke-static {}, Lorg/xbill/DNS/Lookup;->getDefaultSearchPath()[Lorg/xbill/DNS/Name;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    .line 229
    invoke-static {p3}, Lorg/xbill/DNS/Lookup;->getDefaultCache(I)Lorg/xbill/DNS/Cache;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    .line 230
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    const/4 v0, 0x3

    iput v0, p0, Lorg/xbill/DNS/Lookup;->credibility:I

    .line 232
    const-string v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->verbose:Z

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 234
    return-void

    .line 230
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private checkDone()V
    .locals 3

    .prologue
    .line 561
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 562
    return-void

    .line 563
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lookup of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 564
    iget v1, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    invoke-static {v2}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 566
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/xbill/DNS/Lookup;->type:I

    invoke-static {v2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isn\'t done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 567
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private follow(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 368
    iput-boolean v2, p0, Lorg/xbill/DNS/Lookup;->foundAlias:Z

    .line 369
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    .line 370
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    .line 371
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    .line 372
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    .line 373
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    .line 374
    iget v0, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    .line 375
    iget v0, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    :cond_0
    iput v2, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 377
    const-string v0, "CNAME loop"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 378
    iput-boolean v2, p0, Lorg/xbill/DNS/Lookup;->done:Z

    .line 385
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    if-nez v0, :cond_2

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    .line 383
    :cond_2
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Lookup;->lookup(Lorg/xbill/DNS/Name;)V

    goto :goto_0
.end method

.method public static declared-synchronized getDefaultCache(I)Lorg/xbill/DNS/Cache;
    .locals 4
    .parameter

    .prologue
    .line 124
    const-class v1, Lorg/xbill/DNS/Lookup;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 125
    sget-object v0, Lorg/xbill/DNS/Lookup;->defaultCaches:Ljava/util/Map;

    invoke-static {p0}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Cache;

    .line 126
    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lorg/xbill/DNS/Cache;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/Cache;-><init>(I)V

    .line 128
    sget-object v2, Lorg/xbill/DNS/Lookup;->defaultCaches:Ljava/util/Map;

    invoke-static {p0}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_0
    monitor-exit v1

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getDefaultResolver()Lorg/xbill/DNS/Resolver;
    .locals 2

    .prologue
    .line 104
    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/Lookup;->defaultResolver:Lorg/xbill/DNS/Resolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getDefaultSearchPath()[Lorg/xbill/DNS/Name;
    .locals 2

    .prologue
    .line 151
    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/Lookup;->defaultSearchPath:[Lorg/xbill/DNS/Name;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private lookup(Lorg/xbill/DNS/Name;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 435
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    iget v1, p0, Lorg/xbill/DNS/Lookup;->type:I

    iget v2, p0, Lorg/xbill/DNS/Lookup;->credibility:I

    invoke-virtual {v0, p1, v1, v2}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    .line 436
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->verbose:Z

    if-eqz v1, :cond_0

    .line 437
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lookup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/xbill/DNS/Lookup;->type:I

    invoke-static {v3}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 439
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 441
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/Lookup;->processResponse(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/SetResponse;)V

    .line 442
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    if-eqz v0, :cond_2

    .line 484
    :cond_1
    :goto_0
    return-void

    .line 445
    :cond_2
    iget v0, p0, Lorg/xbill/DNS/Lookup;->type:I

    iget v1, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    invoke-static {p1, v0, v1}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 446
    invoke-static {v0}, Lorg/xbill/DNS/Message;->newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;

    move-result-object v0

    .line 449
    :try_start_0
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->resolver:Lorg/xbill/DNS/Resolver;

    invoke-interface {v1, v0}, Lorg/xbill/DNS/Resolver;->send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 459
    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v2

    .line 460
    if-eqz v2, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 463
    iput-boolean v4, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    .line 464
    invoke-static {v2}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    goto :goto_0

    .line 451
    :catch_0
    move-exception v0

    .line 453
    instance-of v0, v0, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_3

    .line 454
    iput-boolean v4, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    goto :goto_0

    .line 456
    :cond_3
    iput-boolean v4, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    goto :goto_0

    .line 468
    :cond_4
    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Record;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 470
    iput-boolean v4, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    .line 471
    const-string v0, "response does not match query"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    goto :goto_0

    .line 475
    :cond_5
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Cache;->addMessage(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    .line 476
    if-nez v0, :cond_6

    .line 477
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    iget v1, p0, Lorg/xbill/DNS/Lookup;->type:I

    iget v2, p0, Lorg/xbill/DNS/Lookup;->credibility:I

    invoke-virtual {v0, p1, v1, v2}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    .line 478
    :cond_6
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->verbose:Z

    if-eqz v1, :cond_7

    .line 479
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queried "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/xbill/DNS/Lookup;->type:I

    invoke-static {v3}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 481
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 483
    :cond_7
    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/Lookup;->processResponse(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/SetResponse;)V

    goto/16 :goto_0
.end method

.method private processResponse(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/SetResponse;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 389
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 390
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->answers()[Lorg/xbill/DNS/RRset;

    move-result-object v0

    .line 391
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v6

    .line 395
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 396
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v3

    .line 397
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 398
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 395
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 401
    :cond_1
    iput v6, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 402
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/xbill/DNS/Record;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/Record;

    check-cast v0, [Lorg/xbill/DNS/Record;

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    .line 403
    iput-boolean v5, p0, Lorg/xbill/DNS/Lookup;->done:Z

    .line 431
    :cond_2
    :goto_2
    return-void

    .line 404
    :cond_3
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isNXDOMAIN()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 405
    iput-boolean v5, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    .line 406
    iput-boolean v5, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    .line 407
    iget v0, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    if-lez v0, :cond_2

    .line 408
    const/4 v0, 0x3

    iput v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 409
    iput-boolean v5, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_2

    .line 411
    :cond_4
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isNXRRSET()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 412
    const/4 v0, 0x4

    iput v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    .line 414
    iput-boolean v5, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_2

    .line 415
    :cond_5
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isCNAME()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 416
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->getCNAME()Lorg/xbill/DNS/CNAMERecord;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/Lookup;->follow(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_2

    .line 418
    :cond_6
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isDNAME()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 419
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->getDNAME()Lorg/xbill/DNS/DNAMERecord;

    move-result-object v0

    .line 421
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Name;->fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/Lookup;->follow(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 422
    :catch_0
    move-exception v0

    .line 423
    iput v5, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 424
    const-string v0, "Invalid DNAME target"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 425
    iput-boolean v5, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_2

    .line 427
    :cond_7
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isDelegation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    iput-boolean v5, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    goto :goto_2
.end method

.method public static declared-synchronized refreshDefault()V
    .locals 3

    .prologue
    .line 85
    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lorg/xbill/DNS/ExtendedResolver;

    invoke-direct {v1}, Lorg/xbill/DNS/ExtendedResolver;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Lookup;->defaultResolver:Lorg/xbill/DNS/Resolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :try_start_1
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/ResolverConfig;->searchPath()[Lorg/xbill/DNS/Name;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/Lookup;->defaultSearchPath:[Lorg/xbill/DNS/Name;

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Lookup;->defaultCaches:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    monitor-exit v0

    return-void

    .line 87
    :catch_0
    move-exception v1

    .line 88
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to initialize resolver"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 182
    iput v1, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    .line 183
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->foundAlias:Z

    .line 184
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    .line 185
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    .line 186
    iput-object v2, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    .line 187
    iput-object v2, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 189
    iput-object v2, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 190
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    .line 191
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    .line 192
    iput-object v2, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    .line 193
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    .line 194
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    .line 195
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->nametoolong:Z

    .line 196
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    .line 197
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->temporary_cache:Z

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache;->clearCache()V

    .line 199
    :cond_0
    return-void
.end method

.method private resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    .line 490
    if-nez p2, :cond_0

    move-object v0, p1

    .line 501
    :goto_0
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Lookup;->lookup(Lorg/xbill/DNS/Name;)V

    .line 502
    :goto_1
    return-void

    .line 494
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lorg/xbill/DNS/Name;->concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->nametoolong:Z

    goto :goto_1
.end method

.method public static declared-synchronized setDefaultCache(Lorg/xbill/DNS/Cache;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 141
    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 142
    sget-object v1, Lorg/xbill/DNS/Lookup;->defaultCaches:Ljava/util/Map;

    invoke-static {p1}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit v0

    return-void

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setDefaultResolver(Lorg/xbill/DNS/Resolver;)V
    .locals 2
    .parameter

    .prologue
    .line 113
    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lorg/xbill/DNS/Lookup;->defaultResolver:Lorg/xbill/DNS/Resolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit v0

    return-void

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setDefaultSearchPath([Ljava/lang/String;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 170
    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 171
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lorg/xbill/DNS/Lookup;->defaultSearchPath:[Lorg/xbill/DNS/Name;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :goto_0
    monitor-exit v0

    return-void

    .line 174
    :cond_0
    :try_start_1
    array-length v1, p0

    new-array v1, v1, [Lorg/xbill/DNS/Name;

    .line 175
    const/4 v2, 0x0

    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 176
    aget-object v3, p0, v2

    sget-object v4, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v3, v4}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 177
    :cond_1
    sput-object v1, Lorg/xbill/DNS/Lookup;->defaultSearchPath:[Lorg/xbill/DNS/Name;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setDefaultSearchPath([Lorg/xbill/DNS/Name;)V
    .locals 2
    .parameter

    .prologue
    .line 160
    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lorg/xbill/DNS/Lookup;->defaultSearchPath:[Lorg/xbill/DNS/Name;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit v0

    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getAliases()[Lorg/xbill/DNS/Name;
    .locals 2

    .prologue
    .line 590
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->checkDone()V

    .line 591
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    if-nez v0, :cond_0

    .line 592
    sget-object v0, Lorg/xbill/DNS/Lookup;->noAliases:[Lorg/xbill/DNS/Name;

    .line 593
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/xbill/DNS/Name;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/xbill/DNS/Name;

    check-cast p0, [Lorg/xbill/DNS/Name;

    move-object v0, p0

    goto :goto_0
.end method

.method public getAnswers()[Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 577
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->checkDone()V

    .line 578
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    return-object v0
.end method

.method public getErrorString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 616
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->checkDone()V

    .line 617
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 624
    :goto_0
    return-object v0

    .line 619
    :cond_0
    iget v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    packed-switch v0, :pswitch_data_0

    .line 626
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :pswitch_0
    const-string v0, "successful"

    goto :goto_0

    .line 621
    :pswitch_1
    const-string v0, "unrecoverable error"

    goto :goto_0

    .line 622
    :pswitch_2
    const-string v0, "try again"

    goto :goto_0

    .line 623
    :pswitch_3
    const-string v0, "host not found"

    goto :goto_0

    .line 624
    :pswitch_4
    const-string v0, "type not found"

    goto :goto_0

    .line 619
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 604
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->checkDone()V

    .line 605
    iget v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    return v0
.end method

.method public run()[Lorg/xbill/DNS/Record;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 510
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-eqz v0, :cond_0

    .line 511
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->reset()V

    .line 512
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 513
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 530
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-nez v0, :cond_2

    .line 531
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    if-eqz v0, :cond_8

    .line 532
    iput v4, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 533
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 534
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    .line 556
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    :goto_2
    return-object v0

    .line 514
    :cond_3
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    if-nez v0, :cond_4

    .line 515
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_0

    .line 517
    :cond_4
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 518
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 519
    :cond_5
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-eqz v0, :cond_6

    .line 520
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    goto :goto_2

    .line 522
    :cond_6
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 523
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    iget-object v2, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    aget-object v2, v2, v0

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 524
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-eqz v1, :cond_7

    .line 525
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    goto :goto_2

    .line 526
    :cond_7
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->foundAlias:Z

    if-nez v1, :cond_1

    .line 522
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 535
    :cond_8
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    if-eqz v0, :cond_9

    .line 536
    iput v4, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 537
    const-string v0, "timed out"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 538
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    .line 539
    :cond_9
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    if-eqz v0, :cond_a

    .line 540
    iput v4, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 541
    const-string v0, "network error"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 542
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    .line 543
    :cond_a
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    if-eqz v0, :cond_b

    .line 544
    const/4 v0, 0x3

    iput v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 545
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    .line 546
    :cond_b
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    if-eqz v0, :cond_c

    .line 547
    iput v3, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 548
    const-string v0, "referral"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 549
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    .line 550
    :cond_c
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->nametoolong:Z

    if-eqz v0, :cond_2

    .line 551
    iput v3, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 552
    const-string v0, "name too long"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 553
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1
.end method

.method public setCache(Lorg/xbill/DNS/Cache;)V
    .locals 2
    .parameter

    .prologue
    .line 347
    if-nez p1, :cond_0

    .line 348
    new-instance v0, Lorg/xbill/DNS/Cache;

    iget v1, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Cache;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->temporary_cache:Z

    .line 354
    :goto_0
    return-void

    .line 351
    :cond_0
    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->temporary_cache:Z

    goto :goto_0
.end method

.method public setCredibility(I)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput p1, p0, Lorg/xbill/DNS/Lookup;->credibility:I

    .line 364
    return-void
.end method

.method public setResolver(Lorg/xbill/DNS/Resolver;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->resolver:Lorg/xbill/DNS/Resolver;

    .line 309
    return-void
.end method

.method public setSearchPath([Ljava/lang/String;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 329
    if-nez p1, :cond_0

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    .line 337
    :goto_0
    return-void

    .line 333
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lorg/xbill/DNS/Name;

    .line 334
    const/4 v1, 0x0

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 335
    aget-object v2, p1, v1

    sget-object v3, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v2, v3}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v2

    aput-object v2, v0, v1

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 336
    :cond_1
    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    goto :goto_0
.end method

.method public setSearchPath([Lorg/xbill/DNS/Name;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    .line 319
    return-void
.end method
