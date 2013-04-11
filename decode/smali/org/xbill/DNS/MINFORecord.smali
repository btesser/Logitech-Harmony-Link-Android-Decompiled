.class public Lorg/xbill/DNS/MINFORecord;
.super Lorg/xbill/DNS/Record;
.source "MINFORecord.java"


# static fields
.field private static final serialVersionUID:J = -0x36fc5fdc632a4b04L


# instance fields
.field private errorAddress:Lorg/xbill/DNS/Name;

.field private responsibleAddress:Lorg/xbill/DNS/Name;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    const/16 v2, 0xe

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 42
    const-string v0, "responsibleAddress"

    invoke-static {v0, p5}, Lorg/xbill/DNS/MINFORecord;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/MINFORecord;->responsibleAddress:Lorg/xbill/DNS/Name;

    .line 44
    const-string v0, "errorAddress"

    invoke-static {v0, p6}, Lorg/xbill/DNS/MINFORecord;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/MINFORecord;->errorAddress:Lorg/xbill/DNS/Name;

    .line 45
    return-void
.end method


# virtual methods
.method public getErrorAddress()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/xbill/DNS/MINFORecord;->errorAddress:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lorg/xbill/DNS/MINFORecord;

    invoke-direct {v0}, Lorg/xbill/DNS/MINFORecord;-><init>()V

    return-object v0
.end method

.method public getResponsibleAddress()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/xbill/DNS/MINFORecord;->responsibleAddress:Lorg/xbill/DNS/Name;

    return-object v0
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
    .line 55
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/MINFORecord;->responsibleAddress:Lorg/xbill/DNS/Name;

    .line 56
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/MINFORecord;->errorAddress:Lorg/xbill/DNS/Name;

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
    .line 49
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v0, p0, Lorg/xbill/DNS/MINFORecord;->responsibleAddress:Lorg/xbill/DNS/Name;

    .line 50
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v0, p0, Lorg/xbill/DNS/MINFORecord;->errorAddress:Lorg/xbill/DNS/Name;

    .line 51
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    iget-object v1, p0, Lorg/xbill/DNS/MINFORecord;->responsibleAddress:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 64
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    iget-object v1, p0, Lorg/xbill/DNS/MINFORecord;->errorAddress:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 66
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

    .line 86
    iget-object v0, p0, Lorg/xbill/DNS/MINFORecord;->responsibleAddress:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, p1, v1, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 87
    iget-object v0, p0, Lorg/xbill/DNS/MINFORecord;->errorAddress:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, p1, v1, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 88
    return-void
.end method
