.class public Lorg/xbill/DNS/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final MAXLENGTH:I = 0xffff

.field static final TSIG_FAILED:I = 0x4

.field static final TSIG_INTERMEDIATE:I = 0x2

.field static final TSIG_SIGNED:I = 0x3

.field static final TSIG_UNSIGNED:I = 0x0

.field static final TSIG_VERIFIED:I = 0x1

.field private static emptyRRsetArray:[Lorg/xbill/DNS/RRset;

.field private static emptyRecordArray:[Lorg/xbill/DNS/Record;


# instance fields
.field private header:Lorg/xbill/DNS/Header;

.field private querytsig:Lorg/xbill/DNS/TSIGRecord;

.field private sections:[Ljava/util/List;

.field private size:I

.field tsigState:I

.field private tsigerror:I

.field private tsigkey:Lorg/xbill/DNS/TSIG;

.field tsigstart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    new-array v0, v1, [Lorg/xbill/DNS/Record;

    sput-object v0, Lorg/xbill/DNS/Message;->emptyRecordArray:[Lorg/xbill/DNS/Record;

    .line 53
    new-array v0, v1, [Lorg/xbill/DNS/RRset;

    sput-object v0, Lorg/xbill/DNS/Message;->emptyRRsetArray:[Lorg/xbill/DNS/RRset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lorg/xbill/DNS/Header;

    invoke-direct {v0}, Lorg/xbill/DNS/Header;-><init>()V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/Header;)V

    .line 71
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 64
    new-instance v0, Lorg/xbill/DNS/Header;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Header;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/Header;)V

    .line 65
    return-void
.end method

.method constructor <init>(Lorg/xbill/DNS/DNSInput;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 98
    new-instance v0, Lorg/xbill/DNS/Header;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Header;-><init>(Lorg/xbill/DNS/DNSInput;)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/Header;)V

    .line 99
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 100
    :goto_0
    iget-object v1, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v1

    move v2, v8

    .line 102
    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_4

    .line 103
    :try_start_0
    iget-object v3, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v3

    .line 104
    if-lez v3, :cond_0

    .line 105
    iget-object v4, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v5, v4, v2

    :cond_0
    move v4, v8

    .line 106
    :goto_2
    if-ge v4, v3, :cond_3

    .line 107
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v5

    .line 108
    invoke-static {p1, v2, v0}, Lorg/xbill/DNS/Record;->fromWire(Lorg/xbill/DNS/DNSInput;IZ)Lorg/xbill/DNS/Record;

    move-result-object v6

    .line 109
    iget-object v7, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v7, v7, v2

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v6}, Lorg/xbill/DNS/Record;->getType()I

    move-result v6

    const/16 v7, 0xfa

    if-ne v6, v7, :cond_1

    .line 111
    iput v5, p0, Lorg/xbill/DNS/Message;->tsigstart:I
    :try_end_0
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move v0, v8

    .line 99
    goto :goto_0

    .line 102
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    if-nez v1, :cond_4

    .line 116
    throw v0

    .line 118
    :cond_4
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/Message;->size:I

    .line 119
    return-void
.end method

.method private constructor <init>(Lorg/xbill/DNS/Header;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 58
    iput-object p1, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 59
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 128
    return-void
.end method

.method public static newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 80
    new-instance v0, Lorg/xbill/DNS/Message;

    invoke-direct {v0}, Lorg/xbill/DNS/Message;-><init>()V

    .line 81
    iget-object v1, v0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v1, v3}, Lorg/xbill/DNS/Header;->setOpcode(I)V

    .line 82
    iget-object v1, v0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 83
    invoke-virtual {v0, p0, v3}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 84
    return-object v0
.end method

.method public static newUpdate(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Message;
    .locals 1
    .parameter

    .prologue
    .line 94
    new-instance v0, Lorg/xbill/DNS/Update;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/Update;-><init>(Lorg/xbill/DNS/Name;)V

    return-object v0
.end method

.method private static sameSet(Lorg/xbill/DNS/Record;Lorg/xbill/DNS/Record;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 335
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sectionToWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;I)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 397
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 398
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    .line 400
    const/4 v2, 0x0

    move-object v3, v2

    move v4, v6

    move v5, v0

    move v2, v6

    .line 402
    :goto_0
    if-ge v2, v1, :cond_1

    .line 403
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    .line 404
    if-eqz v3, :cond_2

    invoke-static {v0, v3}, Lorg/xbill/DNS/Message;->sameSet(Lorg/xbill/DNS/Record;Lorg/xbill/DNS/Record;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 405
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v3

    move v4, v3

    move v3, v2

    .line 409
    :goto_1
    invoke-virtual {v0, p1, p2, p3}, Lorg/xbill/DNS/Record;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    .line 410
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v5

    if-le v5, p4, :cond_0

    .line 411
    invoke-virtual {p1, v4}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    .line 412
    sub-int v0, v1, v3

    .line 415
    :goto_2
    return v0

    .line 402
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    move v4, v3

    move-object v3, v0

    goto :goto_0

    :cond_1
    move v0, v6

    .line 415
    goto :goto_2

    :cond_2
    move v3, v4

    move v4, v5

    goto :goto_1
.end method

.method private toWire(Lorg/xbill/DNS/DNSOutput;I)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 421
    const/16 v0, 0xc

    if-ge p2, v0, :cond_0

    move v0, v6

    .line 472
    :goto_0
    return v0

    .line 424
    :cond_0
    const/4 v0, 0x0

    .line 427
    iget-object v1, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    if-eqz v1, :cond_8

    .line 428
    iget-object v1, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    invoke-virtual {v1}, Lorg/xbill/DNS/TSIG;->recordLength()I

    move-result v1

    sub-int v1, p2, v1

    .line 430
    :goto_1
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v2

    .line 431
    iget-object v3, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v3, p1}, Lorg/xbill/DNS/Header;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 432
    new-instance v3, Lorg/xbill/DNS/Compression;

    invoke-direct {v3}, Lorg/xbill/DNS/Compression;-><init>()V

    move v4, v6

    .line 433
    :goto_2
    if-ge v4, v8, :cond_5

    .line 435
    iget-object v5, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v5, v5, v4

    if-nez v5, :cond_2

    .line 433
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 437
    :cond_2
    invoke-direct {p0, p1, v4, v3, v1}, Lorg/xbill/DNS/Message;->sectionToWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;I)I

    move-result v5

    .line 438
    if-eqz v5, :cond_1

    .line 439
    if-eq v4, v7, :cond_5

    .line 440
    if-nez v0, :cond_3

    .line 441
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Header;

    .line 442
    :cond_3
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 443
    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v1

    .line 444
    sub-int/2addr v1, v5

    invoke-virtual {v0, v4, v1}, Lorg/xbill/DNS/Header;->setCount(II)V

    .line 445
    add-int/lit8 v1, v4, 0x1

    :goto_3
    if-ge v1, v8, :cond_4

    .line 446
    invoke-virtual {v0, v1, v6}, Lorg/xbill/DNS/Header;->setCount(II)V

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 448
    :cond_4
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->save()V

    .line 449
    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    .line 450
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Header;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 451
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->restore()V

    .line 457
    :cond_5
    iget-object v1, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    if-eqz v1, :cond_7

    .line 458
    iget-object v1, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v4

    iget v5, p0, Lorg/xbill/DNS/Message;->tsigerror:I

    iget-object v6, p0, Lorg/xbill/DNS/Message;->querytsig:Lorg/xbill/DNS/TSIGRecord;

    invoke-virtual {v1, p0, v4, v5, v6}, Lorg/xbill/DNS/TSIG;->generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;

    move-result-object v1

    .line 461
    if-nez v0, :cond_6

    .line 462
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xbill/DNS/Header;

    move-object v0, p0

    .line 463
    :cond_6
    invoke-virtual {v1, p1, v7, v3}, Lorg/xbill/DNS/TSIGRecord;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    .line 464
    invoke-virtual {v0, v7}, Lorg/xbill/DNS/Header;->incCount(I)V

    .line 466
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->save()V

    .line 467
    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    .line 468
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Header;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 469
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->restore()V

    .line 472
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_8
    move v1, p2

    goto/16 :goto_1
.end method


# virtual methods
.method public addRecord(Lorg/xbill/DNS/Record;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    aput-object v1, v0, p2

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, p2}, Lorg/xbill/DNS/Header;->incCount(I)V

    .line 158
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 594
    new-instance v1, Lorg/xbill/DNS/Message;

    invoke-direct {v1}, Lorg/xbill/DNS/Message;-><init>()V

    .line 595
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 596
    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 597
    iget-object v2, v1, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    new-instance v3, Ljava/util/LinkedList;

    iget-object v4, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v0

    .line 595
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Header;

    iput-object v0, v1, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 600
    iget v0, p0, Lorg/xbill/DNS/Message;->size:I

    iput v0, v1, Lorg/xbill/DNS/Message;->size:I

    .line 601
    return-object v1
.end method

.method public findRRset(Lorg/xbill/DNS/Name;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 236
    invoke-virtual {p0, p1, p2, v1}, Lorg/xbill/DNS/Message;->findRRset(Lorg/xbill/DNS/Name;II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lorg/xbill/DNS/Message;->findRRset(Lorg/xbill/DNS/Name;II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lorg/xbill/DNS/Message;->findRRset(Lorg/xbill/DNS/Name;II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findRRset(Lorg/xbill/DNS/Name;II)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p3

    if-nez v0, :cond_0

    move v0, v3

    .line 225
    :goto_0
    return v0

    :cond_0
    move v1, v3

    .line 220
    :goto_1
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 221
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    .line 222
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getType()I

    move-result v2

    if-ne v2, p2, :cond_1

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    const/4 v0, 0x1

    goto :goto_0

    .line 220
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v3

    .line 225
    goto :goto_0
.end method

.method public findRecord(Lorg/xbill/DNS/Record;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 204
    move v0, v2

    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 205
    iget-object v1, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 207
    :goto_1
    return v0

    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findRecord(Lorg/xbill/DNS/Record;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeader()Lorg/xbill/DNS/Header;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    return-object v0
.end method

.method public getOPT()Lorg/xbill/DNS/OPTRecord;
    .locals 3

    .prologue
    .line 299
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 300
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 301
    aget-object v2, v0, v1

    instance-of v2, v2, Lorg/xbill/DNS/OPTRecord;

    if-eqz v2, :cond_0

    .line 302
    aget-object p0, v0, v1

    check-cast p0, Lorg/xbill/DNS/OPTRecord;

    move-object v0, p0

    .line 303
    :goto_1
    return-object v0

    .line 300
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getQuestion()Lorg/xbill/DNS/Record;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, v2

    .line 249
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 250
    :cond_0
    const/4 v0, 0x0

    .line 251
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xbill/DNS/Record;

    move-object v0, p0

    goto :goto_0
.end method

.method public getRcode()I
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v0

    .line 313
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v1

    .line 314
    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {v1}, Lorg/xbill/DNS/OPTRecord;->getExtendedRcode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 316
    :cond_0
    return v0
.end method

.method public getSectionArray(I)[Lorg/xbill/DNS/Record;
    .locals 2
    .parameter

    .prologue
    .line 327
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 328
    sget-object v0, Lorg/xbill/DNS/Message;->emptyRecordArray:[Lorg/xbill/DNS/Record;

    .line 330
    :goto_0
    return-object v0

    .line 329
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p1

    .line 330
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/xbill/DNS/Record;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/xbill/DNS/Record;

    check-cast p0, [Lorg/xbill/DNS/Record;

    move-object v0, p0

    goto :goto_0
.end method

.method public getSectionRRsets(I)[Lorg/xbill/DNS/RRset;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 348
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 349
    sget-object v0, Lorg/xbill/DNS/Message;->emptyRRsetArray:[Lorg/xbill/DNS/RRset;

    .line 375
    :goto_0
    return-object v0

    .line 350
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 351
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 352
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move v3, v8

    .line 353
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 354
    aget-object v4, v1, v3

    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    .line 356
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 357
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v9

    :goto_2
    if-ltz v5, :cond_4

    .line 358
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xbill/DNS/RRset;

    .line 359
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v6

    aget-object v7, v1, v3

    invoke-virtual {v7}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v7

    if-ne v6, v7, :cond_2

    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v6

    aget-object v7, v1, v3

    invoke-virtual {v7}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v7

    if-ne v6, v7, :cond_2

    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 363
    aget-object v5, v1, v3

    invoke-virtual {p0, v5}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    move v5, v8

    .line 369
    :goto_3
    if-eqz v5, :cond_1

    .line 370
    new-instance v5, Lorg/xbill/DNS/RRset;

    aget-object v6, v1, v3

    invoke-direct {v5, v6}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/Record;)V

    .line 371
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 357
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 375
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/xbill/DNS/RRset;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/xbill/DNS/RRset;

    check-cast p0, [Lorg/xbill/DNS/RRset;

    move-object v0, p0

    goto :goto_0

    :cond_4
    move v5, v9

    goto :goto_3
.end method

.method public getTSIG()Lorg/xbill/DNS/TSIGRecord;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 262
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v0

    .line 263
    if-nez v0, :cond_0

    move-object v0, v3

    .line 269
    :goto_0
    return-object v0

    .line 265
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v1, v1, v2

    .line 266
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xbill/DNS/Record;

    .line 267
    iget v0, p0, Lorg/xbill/DNS/Record;->type:I

    const/16 v1, 0xfa

    if-eq v0, v1, :cond_1

    move-object v0, v3

    .line 268
    goto :goto_0

    .line 269
    :cond_1
    check-cast p0, Lorg/xbill/DNS/TSIGRecord;

    move-object v0, p0

    goto :goto_0
.end method

.method public isSigned()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 278
    iget v0, p0, Lorg/xbill/DNS/Message;->tsigState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/xbill/DNS/Message;->tsigState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lorg/xbill/DNS/Message;->tsigState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerified()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 289
    iget v0, p0, Lorg/xbill/DNS/Message;->tsigState:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public numBytes()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lorg/xbill/DNS/Message;->size:I

    return v0
.end method

.method public removeAllRecords(I)V
    .locals 2
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 184
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/xbill/DNS/Header;->setCount(II)V

    .line 185
    return-void
.end method

.method public removeRecord(Lorg/xbill/DNS/Record;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, p2}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 170
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sectionToString(I)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 535
    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    .line 536
    const/4 v0, 0x0

    .line 552
    :goto_0
    return-object v0

    .line 538
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 540
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 541
    const/4 v2, 0x0

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 542
    aget-object v3, v1, v2

    .line 543
    if-nez p1, :cond_1

    .line 544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ";;\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lorg/xbill/DNS/Record;->type:I

    invoke-static {v5}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", class = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v3, v3, Lorg/xbill/DNS/Record;->dclass:I

    invoke-static {v3}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 550
    :goto_2
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 541
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 549
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 552
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setHeader(Lorg/xbill/DNS/Header;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 137
    return-void
.end method

.method public setTSIG(Lorg/xbill/DNS/TSIG;ILorg/xbill/DNS/TSIGRecord;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    .line 516
    iput p2, p0, Lorg/xbill/DNS/Message;->tsigerror:I

    .line 517
    iput-object p3, p0, Lorg/xbill/DNS/Message;->querytsig:Lorg/xbill/DNS/TSIGRecord;

    .line 518
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 560
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 561
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v1

    .line 562
    if-eqz v1, :cond_1

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getRcode()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->toStringWithRcode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 566
    :goto_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->isSigned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    const-string v1, ";; TSIG "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 568
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->isVerified()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 569
    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 572
    :goto_1
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 574
    :cond_0
    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_4

    .line 575
    iget-object v2, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ";; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lorg/xbill/DNS/Section;->longString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/Message;->sectionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 574
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 565
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 571
    :cond_2
    const-string v1, "invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 578
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ";; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lorg/xbill/DNS/Section;->updString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 581
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";; Message size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->numBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 582
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toWire(Lorg/xbill/DNS/DNSOutput;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 380
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Header;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 381
    new-instance v1, Lorg/xbill/DNS/Compression;

    invoke-direct {v1}, Lorg/xbill/DNS/Compression;-><init>()V

    move v2, v4

    .line 382
    :goto_0
    const/4 v0, 0x4

    if-ge v2, v0, :cond_2

    .line 383
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, v2

    if-nez v0, :cond_1

    .line 382
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v3, v4

    .line 385
    :goto_1
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 386
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    .line 387
    invoke-virtual {v0, p1, v2, v1}, Lorg/xbill/DNS/Record;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    .line 385
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 390
    :cond_2
    return-void
.end method

.method public toWire()[B
    .locals 2

    .prologue
    .line 480
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 481
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Message;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 482
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/Message;->size:I

    .line 483
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toWire(I)[B
    .locals 2
    .parameter

    .prologue
    .line 501
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 502
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/Message;->toWire(Lorg/xbill/DNS/DNSOutput;I)Z

    .line 503
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/Message;->size:I

    .line 504
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
