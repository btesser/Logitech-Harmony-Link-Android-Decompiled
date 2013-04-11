.class public Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;
.super Lcom/logitech/harmonylink/view/widget/ImageButtonDef;
.source "PrimaryControlInflator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrimaryControlButtonDef"
.end annotation


# instance fields
.field private mPageNumber:Ljava/lang/Integer;

.field private mTabNumber:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter "id"
    .parameter "iconResourceID"
    .parameter "viewID"

    .prologue
    const/4 v0, 0x0

    .line 403
    invoke-direct {p0, p1, p2, p3}, Lcom/logitech/harmonylink/view/widget/ImageButtonDef;-><init>(Ljava/lang/String;II)V

    .line 404
    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;->mTabNumber:Ljava/lang/Integer;

    .line 405
    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;->mPageNumber:Ljava/lang/Integer;

    .line 406
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .parameter "id"
    .parameter "iconResourceID"
    .parameter "viewID"
    .parameter "tabNumber"
    .parameter "pageNumber"

    .prologue
    .line 410
    invoke-direct {p0, p1, p2, p3}, Lcom/logitech/harmonylink/view/widget/ImageButtonDef;-><init>(Ljava/lang/String;II)V

    .line 412
    iput-object p4, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;->mTabNumber:Ljava/lang/Integer;

    .line 413
    iput-object p5, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;->mPageNumber:Ljava/lang/Integer;

    .line 414
    return-void
.end method


# virtual methods
.method public getPageNumber()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;->mPageNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTabNumber()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;->mTabNumber:Ljava/lang/Integer;

    return-object v0
.end method
