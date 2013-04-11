.class public Lorg/xbill/DNS/TSIG$StreamVerifier;
.super Ljava/lang/Object;
.source "TSIG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/TSIG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamVerifier"
.end annotation


# instance fields
.field private key:Lorg/xbill/DNS/TSIG;

.field private lastTSIG:Lorg/xbill/DNS/TSIGRecord;

.field private lastsigned:I

.field private nresponses:I

.field private verifier:Lorg/xbill/DNS/utils/HMAC;


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/TSIG;Lorg/xbill/DNS/TSIGRecord;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    .line 439
    new-instance v0, Lorg/xbill/DNS/utils/HMAC;

    iget-object v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    #getter for: Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;
    invoke-static {v1}, Lorg/xbill/DNS/TSIG;->access$000(Lorg/xbill/DNS/TSIG;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    #getter for: Lorg/xbill/DNS/TSIG;->key:[B
    invoke-static {v2}, Lorg/xbill/DNS/TSIG;->access$100(Lorg/xbill/DNS/TSIG;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;[B)V

    iput-object v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    .line 440
    const/4 v0, 0x0

    iput v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    .line 441
    iput-object p2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    .line 442
    return-void
.end method


# virtual methods
.method public verify(Lorg/xbill/DNS/Message;[B)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 458
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v0

    .line 460
    iget v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    .line 462
    iget v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    if-ne v1, v4, :cond_1

    .line 463
    iget-object v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    iget-object v2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    invoke-virtual {v1, p1, p2, v2}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I

    move-result v1

    .line 464
    if-nez v1, :cond_0

    .line 465
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v2

    .line 466
    new-instance v3, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v3}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 467
    array-length v4, v2

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 468
    iget-object v4, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v3}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 469
    iget-object v3, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 471
    :cond_0
    iput-object v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    move v0, v1

    .line 534
    :goto_0
    return v0

    .line 475
    :cond_1
    if-eqz v0, :cond_2

    .line 476
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 477
    :cond_2
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/Header;->toWire()[B

    move-result-object v1

    .line 478
    if-eqz v0, :cond_3

    .line 479
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->incCount(I)V

    .line 480
    :cond_3
    iget-object v2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v2, v1}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 483
    if-nez v0, :cond_6

    .line 484
    array-length v2, p2

    array-length v3, v1

    sub-int/2addr v2, v3

    .line 487
    :goto_1
    iget-object v3, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    array-length v1, v1

    invoke-virtual {v3, p2, v1, v2}, Lorg/xbill/DNS/utils/HMAC;->update([BII)V

    .line 489
    if-eqz v0, :cond_7

    .line 490
    iget v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    iput v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastsigned:I

    .line 491
    iput-object v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    .line 504
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    iget-object v2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    #getter for: Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;
    invoke-static {v2}, Lorg/xbill/DNS/TSIG;->access$200(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v1

    iget-object v2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    #getter for: Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;
    invoke-static {v2}, Lorg/xbill/DNS/TSIG;->access$300(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 507
    :cond_4
    const-string v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 508
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "BADKEY failure"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 509
    :cond_5
    iput v5, p1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 510
    const/16 v0, 0x11

    goto :goto_0

    .line 486
    :cond_6
    iget v2, p1, Lorg/xbill/DNS/Message;->tsigstart:I

    array-length v3, v1

    sub-int/2addr v2, v3

    goto :goto_1

    .line 494
    :cond_7
    iget v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    iget v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastsigned:I

    sub-int/2addr v0, v1

    const/16 v1, 0x64

    if-lt v0, v1, :cond_8

    move v0, v4

    .line 495
    :goto_2
    if-eqz v0, :cond_9

    .line 496
    iput v5, p1, Lorg/xbill/DNS/Message;->tsigState:I

    move v0, v4

    .line 497
    goto :goto_0

    :cond_8
    move v0, v7

    .line 494
    goto :goto_2

    .line 499
    :cond_9
    const/4 v0, 0x2

    iput v0, p1, Lorg/xbill/DNS/Message;->tsigState:I

    move v0, v7

    .line 500
    goto/16 :goto_0

    .line 513
    :cond_a
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 514
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 515
    const/16 v4, 0x20

    shr-long v4, v2, v4

    long-to-int v4, v4

    .line 516
    const-wide v5, 0xffffffffL

    and-long/2addr v2, v5

    .line 517
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 518
    invoke-virtual {v1, v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 519
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 520
    iget-object v2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 522
    iget-object v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/utils/HMAC;->verify([B)Z

    move-result v1

    if-nez v1, :cond_c

    .line 523
    const-string v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 524
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "BADSIG failure"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 525
    :cond_b
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 528
    :cond_c
    iget-object v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v1}, Lorg/xbill/DNS/utils/HMAC;->clear()V

    .line 529
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 530
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 531
    iget-object v2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 532
    iget-object v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    move v0, v7

    .line 534
    goto/16 :goto_0
.end method
