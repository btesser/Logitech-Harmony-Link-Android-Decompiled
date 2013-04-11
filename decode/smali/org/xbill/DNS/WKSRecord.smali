.class public Lorg/xbill/DNS/WKSRecord;
.super Lorg/xbill/DNS/Record;
.source "WKSRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/WKSRecord$Service;,
        Lorg/xbill/DNS/WKSRecord$Protocol;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7e58d404d2af4f3dL


# instance fields
.field private address:[B

.field private protocol:I

.field private services:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 581
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;I[I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 598
    const/16 v2, 0xb

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 599
    invoke-static {p5}, Lorg/xbill/DNS/Address;->familyOf(Ljava/net/InetAddress;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 600
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid IPv4 address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_0
    invoke-virtual {p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    .line 602
    const-string v0, "protocol"

    invoke-static {v0, p6}, Lorg/xbill/DNS/WKSRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    move v0, v6

    .line 603
    :goto_0
    array-length v1, p7

    if-ge v0, v1, :cond_1

    .line 604
    const-string v1, "service"

    aget v2, p7, v0

    invoke-static {v1, v2}, Lorg/xbill/DNS/WKSRecord;->checkU16(Ljava/lang/String;I)I

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    :cond_1
    array-length v0, p7

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    .line 607
    iget-object v0, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    array-length v1, p7

    invoke-static {p7, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 608
    iget-object v0, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 609
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 684
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 686
    :goto_0
    return-object v0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 585
    new-instance v0, Lorg/xbill/DNS/WKSRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/WKSRecord;-><init>()V

    return-object v0
.end method

.method public getProtocol()I
    .locals 1

    .prologue
    .line 695
    iget v0, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    return v0
.end method

.method public getServices()[I
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 634
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    .line 635
    iget-object v0, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    if-nez v0, :cond_0

    .line 636
    const-string v0, "invalid address"

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 638
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 639
    invoke-static {v0}, Lorg/xbill/DNS/WKSRecord$Protocol;->value(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    .line 640
    iget v1, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    if-gez v1, :cond_1

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IP protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 644
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 646
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 647
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v2

    if-nez v2, :cond_2

    .line 656
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 657
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    .line 658
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 659
    iget-object v3, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v2

    .line 658
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 649
    :cond_2
    iget-object v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v2}, Lorg/xbill/DNS/WKSRecord$Service;->value(Ljava/lang/String;)I

    move-result v2

    .line 650
    if-gez v2, :cond_3

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid TCP/UDP service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 654
    :cond_3
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 661
    :cond_4
    return-void
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 613
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    .line 614
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    .line 615
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    .line 616
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v7

    .line 617
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    move v3, v7

    .line 618
    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    .line 619
    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    .line 620
    const/4 v5, 0x1

    const/4 v6, 0x7

    sub-int/2addr v6, v3

    shl-int/2addr v5, v6

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 621
    new-instance v4, Ljava/lang/Integer;

    mul-int/lit8 v5, v2, 0x8

    add-int/2addr v5, v3

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 617
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 625
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    move v2, v7

    .line 626
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 627
    iget-object v3, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v2

    .line 626
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 629
    :cond_3
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 668
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 669
    iget-object v1, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    invoke-static {v1}, Lorg/xbill/DNS/Address;->toDottedQuad([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 670
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 671
    iget v1, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 672
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 672
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 675
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 708
    iget-object v0, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 709
    iget v0, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 710
    iget-object v0, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    iget-object v1, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    array-length v1, v1

    sub-int/2addr v1, v6

    aget v0, v0, v1

    .line 711
    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 712
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 713
    iget-object v2, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    aget v2, v2, v1

    .line 714
    div-int/lit8 v3, v2, 0x8

    aget-byte v4, v0, v3

    const/4 v5, 0x7

    rem-int/lit8 v2, v2, 0x8

    sub-int v2, v5, v2

    shl-int v2, v6, v2

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 712
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 716
    :cond_0
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 717
    return-void
.end method
