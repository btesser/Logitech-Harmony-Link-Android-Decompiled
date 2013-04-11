.class public Lorg/xbill/DNS/SIGRecord;
.super Lorg/xbill/DNS/SIGBase;
.source "SIGRecord.java"


# static fields
.field private static final serialVersionUID:J = 0x44e217f07be03542L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/xbill/DNS/SIGBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    const/16 v2, 0x18

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lorg/xbill/DNS/SIGBase;-><init>(Lorg/xbill/DNS/Name;IIJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V

    .line 48
    return-void
.end method


# virtual methods
.method public bridge synthetic getAlgorithm()I
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lorg/xbill/DNS/SIGBase;->getAlgorithm()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getExpire()Ljava/util/Date;
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lorg/xbill/DNS/SIGBase;->getExpire()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFootprint()I
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lorg/xbill/DNS/SIGBase;->getFootprint()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLabels()I
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lorg/xbill/DNS/SIGBase;->getLabels()I

    move-result v0

    return v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lorg/xbill/DNS/SIGRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/SIGRecord;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getOrigTTL()J
    .locals 2

    .prologue
    .line 18
    invoke-super {p0}, Lorg/xbill/DNS/SIGBase;->getOrigTTL()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getSignature()[B
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lorg/xbill/DNS/SIGBase;->getSignature()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSigner()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lorg/xbill/DNS/SIGBase;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimeSigned()Ljava/util/Date;
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lorg/xbill/DNS/SIGBase;->getTimeSigned()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTypeCovered()I
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lorg/xbill/DNS/SIGBase;->getTypeCovered()I

    move-result v0

    return v0
.end method
