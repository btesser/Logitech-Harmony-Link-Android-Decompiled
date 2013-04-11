.class public Lorg/xbill/DNS/CNAMERecord;
.super Lorg/xbill/DNS/SingleCompressedNameBase;
.source "CNAMERecord.java"


# static fields
.field private static final serialVersionUID:J = -0x37cb3cbfd07c7ad4L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/xbill/DNS/SingleCompressedNameBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    const/4 v2, 0x5

    const-string v7, "alias"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/SingleCompressedNameBase;-><init>(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Name;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getAlias()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/xbill/DNS/CNAMERecord;->getSingleName()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lorg/xbill/DNS/CNAMERecord;

    invoke-direct {v0}, Lorg/xbill/DNS/CNAMERecord;-><init>()V

    return-object v0
.end method

.method public getTarget()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lorg/xbill/DNS/CNAMERecord;->getSingleName()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method
