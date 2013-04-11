.class public Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;
.super Lcom/logitech/harmonylink/view/widget/ImageButtonDef;
.source "PrimaryControlInflator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrimaryControlButtonDef"
.end annotation


# instance fields
.field private mPageNumber:Ljava/lang/Integer;

.field private mTabNumber:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "id"
    .parameter "iconResourceID"

    .prologue
    const/4 v0, 0x0

    .line 496
    invoke-direct {p0, p1, p2}, Lcom/logitech/harmonylink/view/widget/ImageButtonDef;-><init>(Ljava/lang/String;I)V

    .line 497
    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;->mTabNumber:Ljava/lang/Integer;

    .line 498
    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;->mPageNumber:Ljava/lang/Integer;

    .line 499
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .parameter "id"
    .parameter "iconResourceID"
    .parameter "tabNumber"
    .parameter "pageNumber"

    .prologue
    .line 502
    invoke-direct {p0, p1, p2}, Lcom/logitech/harmonylink/view/widget/ImageButtonDef;-><init>(Ljava/lang/String;I)V

    .line 504
    iput-object p3, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;->mTabNumber:Ljava/lang/Integer;

    .line 505
    iput-object p4, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;->mPageNumber:Ljava/lang/Integer;

    .line 506
    return-void
.end method


# virtual methods
.method public getPageNumber()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;->mPageNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTabNumber()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;->mTabNumber:Ljava/lang/Integer;

    return-object v0
.end method
