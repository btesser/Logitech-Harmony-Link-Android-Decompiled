.class public Lorg/xbill/DNS/ExtendedResolver;
.super Ljava/lang/Object;
.source "ExtendedResolver.java"

# interfaces
.implements Lorg/xbill/DNS/Resolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/ExtendedResolver$Resolution;
    }
.end annotation


# static fields
.field private static final quantum:I = 0x5


# instance fields
.field private lbStart:I

.field private loadBalance:Z

.field private resolvers:Ljava/util/List;

.field private retries:I


# direct methods
.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-boolean v1, p0, Lorg/xbill/DNS/ExtendedResolver;->loadBalance:Z

    .line 238
    iput v1, p0, Lorg/xbill/DNS/ExtendedResolver;->lbStart:I

    .line 239
    const/4 v0, 0x3

    iput v0, p0, Lorg/xbill/DNS/ExtendedResolver;->retries:I

    .line 256
    invoke-direct {p0}, Lorg/xbill/DNS/ExtendedResolver;->init()V

    .line 257
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/ResolverConfig;->servers()[Ljava/lang/String;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_0

    .line 259
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 260
    new-instance v2, Lorg/xbill/DNS/SimpleResolver;

    aget-object v3, v0, v1

    invoke-direct {v2, v3}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    .line 261
    const/4 v3, 0x5

    invoke-interface {v2, v3}, Lorg/xbill/DNS/Resolver;->setTimeout(I)V

    .line 262
    iget-object v3, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    new-instance v1, Lorg/xbill/DNS/SimpleResolver;

    invoke-direct {v1}, Lorg/xbill/DNS/SimpleResolver;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_1
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-boolean v1, p0, Lorg/xbill/DNS/ExtendedResolver;->loadBalance:Z

    .line 238
    iput v1, p0, Lorg/xbill/DNS/ExtendedResolver;->lbStart:I

    .line 239
    const/4 v0, 0x3

    iput v0, p0, Lorg/xbill/DNS/ExtendedResolver;->retries:I

    .line 278
    invoke-direct {p0}, Lorg/xbill/DNS/ExtendedResolver;->init()V

    move v0, v1

    .line 279
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 280
    new-instance v1, Lorg/xbill/DNS/SimpleResolver;

    aget-object v2, p1, v0

    invoke-direct {v1, v2}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    .line 281
    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lorg/xbill/DNS/Resolver;->setTimeout(I)V

    .line 282
    iget-object v2, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_0
    return-void
.end method

.method public constructor <init>([Lorg/xbill/DNS/Resolver;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-boolean v1, p0, Lorg/xbill/DNS/ExtendedResolver;->loadBalance:Z

    .line 238
    iput v1, p0, Lorg/xbill/DNS/ExtendedResolver;->lbStart:I

    .line 239
    const/4 v0, 0x3

    iput v0, p0, Lorg/xbill/DNS/ExtendedResolver;->retries:I

    .line 294
    invoke-direct {p0}, Lorg/xbill/DNS/ExtendedResolver;->init()V

    move v0, v1

    .line 295
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 296
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/xbill/DNS/ExtendedResolver;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lorg/xbill/DNS/ExtendedResolver;)Z
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-boolean v0, p0, Lorg/xbill/DNS/ExtendedResolver;->loadBalance:Z

    return v0
.end method

.method static synthetic access$200(Lorg/xbill/DNS/ExtendedResolver;)I
    .locals 1
    .parameter

    .prologue
    .line 17
    iget v0, p0, Lorg/xbill/DNS/ExtendedResolver;->lbStart:I

    return v0
.end method

.method static synthetic access$208(Lorg/xbill/DNS/ExtendedResolver;)I
    .locals 2
    .parameter

    .prologue
    .line 17
    iget v0, p0, Lorg/xbill/DNS/ExtendedResolver;->lbStart:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/xbill/DNS/ExtendedResolver;->lbStart:I

    return v0
.end method

.method static synthetic access$244(Lorg/xbill/DNS/ExtendedResolver;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 17
    iget v0, p0, Lorg/xbill/DNS/ExtendedResolver;->lbStart:I

    rem-int/2addr v0, p1

    iput v0, p0, Lorg/xbill/DNS/ExtendedResolver;->lbStart:I

    return v0
.end method

.method static synthetic access$300(Lorg/xbill/DNS/ExtendedResolver;)I
    .locals 1
    .parameter

    .prologue
    .line 17
    iget v0, p0, Lorg/xbill/DNS/ExtendedResolver;->retries:I

    return v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    .line 244
    return-void
.end method


# virtual methods
.method public addResolver(Lorg/xbill/DNS/Resolver;)V
    .locals 1
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    return-void
.end method

.method public deleteResolver(Lorg/xbill/DNS/Resolver;)V
    .locals 1
    .parameter

    .prologue
    .line 401
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 402
    return-void
.end method

.method public getResolver(I)Lorg/xbill/DNS/Resolver;
    .locals 1
    .parameter

    .prologue
    .line 381
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 382
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xbill/DNS/Resolver;

    move-object v0, p0

    .line 383
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResolvers()[Lorg/xbill/DNS/Resolver;
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/xbill/DNS/Resolver;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/xbill/DNS/Resolver;

    check-cast p0, [Lorg/xbill/DNS/Resolver;

    return-object p0
.end method

.method public send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    new-instance v0, Lorg/xbill/DNS/ExtendedResolver$Resolution;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/ExtendedResolver$Resolution;-><init>(Lorg/xbill/DNS/ExtendedResolver;Lorg/xbill/DNS/Message;)V

    .line 358
    invoke-virtual {v0}, Lorg/xbill/DNS/ExtendedResolver$Resolution;->start()Lorg/xbill/DNS/Message;

    move-result-object v0

    return-object v0
.end method

.method public sendAsync(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/ResolverListener;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 373
    new-instance v0, Lorg/xbill/DNS/ExtendedResolver$Resolution;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/ExtendedResolver$Resolution;-><init>(Lorg/xbill/DNS/ExtendedResolver;Lorg/xbill/DNS/Message;)V

    .line 374
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/ExtendedResolver$Resolution;->startAsync(Lorg/xbill/DNS/ResolverListener;)V

    .line 375
    return-object v0
.end method

.method public setEDNS(I)V
    .locals 2
    .parameter

    .prologue
    .line 319
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 320
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Resolver;

    invoke-interface {v0, p1}, Lorg/xbill/DNS/Resolver;->setEDNS(I)V

    .line 319
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 321
    :cond_0
    return-void
.end method

.method public setEDNS(IIILjava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Resolver;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xbill/DNS/Resolver;->setEDNS(IIILjava/util/List;)V

    .line 325
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 328
    :cond_0
    return-void
.end method

.method public setIgnoreTruncation(Z)V
    .locals 2
    .parameter

    .prologue
    .line 313
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 314
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Resolver;

    invoke-interface {v0, p1}, Lorg/xbill/DNS/Resolver;->setIgnoreTruncation(Z)V

    .line 313
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 315
    :cond_0
    return-void
.end method

.method public setLoadBalance(Z)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-boolean p1, p0, Lorg/xbill/DNS/ExtendedResolver;->loadBalance:Z

    .line 411
    return-void
.end method

.method public setPort(I)V
    .locals 2
    .parameter

    .prologue
    .line 301
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 302
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Resolver;

    invoke-interface {v0, p1}, Lorg/xbill/DNS/Resolver;->setPort(I)V

    .line 301
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 303
    :cond_0
    return-void
.end method

.method public setRetries(I)V
    .locals 0
    .parameter

    .prologue
    .line 416
    iput p1, p0, Lorg/xbill/DNS/ExtendedResolver;->retries:I

    .line 417
    return-void
.end method

.method public setTCP(Z)V
    .locals 2
    .parameter

    .prologue
    .line 307
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 308
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Resolver;

    invoke-interface {v0, p1}, Lorg/xbill/DNS/Resolver;->setTCP(Z)V

    .line 307
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 309
    :cond_0
    return-void
.end method

.method public setTSIGKey(Lorg/xbill/DNS/TSIG;)V
    .locals 2
    .parameter

    .prologue
    .line 332
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 333
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Resolver;

    invoke-interface {v0, p1}, Lorg/xbill/DNS/Resolver;->setTSIGKey(Lorg/xbill/DNS/TSIG;)V

    .line 332
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 334
    :cond_0
    return-void
.end method

.method public setTimeout(I)V
    .locals 1
    .parameter

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/xbill/DNS/ExtendedResolver;->setTimeout(II)V

    .line 345
    return-void
.end method

.method public setTimeout(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 338
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 339
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Resolver;

    invoke-interface {v0, p1, p2}, Lorg/xbill/DNS/Resolver;->setTimeout(II)V

    .line 338
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 340
    :cond_0
    return-void
.end method
