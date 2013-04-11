.class public Lorg/xbill/DNS/MRRecord;
.super Lorg/xbill/DNS/SingleNameBase;
.source "MRRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x4df6edd75029996dL


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/xbill/DNS/SingleNameBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    const/16 v2, 0x9

    const-string v7, "new name"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/SingleNameBase;-><init>(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Name;Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getNewName()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/xbill/DNS/MRRecord;->getSingleName()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lorg/xbill/DNS/MRRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/MRRecord;-><init>()V

    return-object v0
.end method
