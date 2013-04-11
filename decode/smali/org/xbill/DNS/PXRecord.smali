.class public Lorg/xbill/DNS/PXRecord;
.super Lorg/xbill/DNS/Record;
.source "PXRecord.java"


# static fields
.field private static final serialVersionUID:J = 0x1923e20a41543a3bL


# instance fields
.field private map822:Lorg/xbill/DNS/Name;

.field private mapX400:Lorg/xbill/DNS/Name;

.field private preference:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJILorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    const/16 v2, 0x1a

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 40
    const-string v0, "preference"

    invoke-static {v0, p5}, Lorg/xbill/DNS/PXRecord;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/PXRecord;->preference:I

    .line 41
    const-string v0, "map822"

    invoke-static {v0, p6}, Lorg/xbill/DNS/PXRecord;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/PXRecord;->map822:Lorg/xbill/DNS/Name;

    .line 42
    const-string v0, "mapX400"

    invoke-static {v0, p7}, Lorg/xbill/DNS/PXRecord;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/PXRecord;->mapX400:Lorg/xbill/DNS/Name;

    .line 43
    return-void
.end method


# virtual methods
.method public getMap822()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/xbill/DNS/PXRecord;->map822:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getMapX400()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/xbill/DNS/PXRecord;->mapX400:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lorg/xbill/DNS/PXRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/PXRecord;-><init>()V

    return-object v0
.end method

.method public getPreference()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lorg/xbill/DNS/PXRecord;->preference:I

    return v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/PXRecord;->preference:I

    .line 55
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/PXRecord;->map822:Lorg/xbill/DNS/Name;

    .line 56
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/PXRecord;->mapX400:Lorg/xbill/DNS/Name;

    .line 57
    return-void
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/PXRecord;->preference:I

    .line 48
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v0, p0, Lorg/xbill/DNS/PXRecord;->map822:Lorg/xbill/DNS/Name;

    .line 49
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v0, p0, Lorg/xbill/DNS/PXRecord;->mapX400:Lorg/xbill/DNS/Name;

    .line 50
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    iget v1, p0, Lorg/xbill/DNS/PXRecord;->preference:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 64
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    iget-object v1, p0, Lorg/xbill/DNS/PXRecord;->map822:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 66
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    iget-object v1, p0, Lorg/xbill/DNS/PXRecord;->mapX400:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 73
    iget v0, p0, Lorg/xbill/DNS/PXRecord;->preference:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 74
    iget-object v0, p0, Lorg/xbill/DNS/PXRecord;->map822:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, p1, v1, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 75
    iget-object v0, p0, Lorg/xbill/DNS/PXRecord;->mapX400:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, p1, v1, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 76
    return-void
.end method
