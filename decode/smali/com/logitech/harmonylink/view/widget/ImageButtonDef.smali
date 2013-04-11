.class public Lcom/logitech/harmonylink/view/widget/ImageButtonDef;
.super Lcom/logitech/harmonylink/view/widget/ButtonDef;
.source "ImageButtonDef.java"


# instance fields
.field private mIconResourceID:I

.field private mViewId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "id"
    .parameter "iconResourceID"

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/logitech/harmonylink/view/widget/ButtonDef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iput p2, p0, Lcom/logitech/harmonylink/view/widget/ImageButtonDef;->mIconResourceID:I

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter "id"
    .parameter "iconResourceID"
    .parameter "viewID"

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lcom/logitech/harmonylink/view/widget/ButtonDef;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    iput p2, p0, Lcom/logitech/harmonylink/view/widget/ImageButtonDef;->mIconResourceID:I

    .line 20
    iput p3, p0, Lcom/logitech/harmonylink/view/widget/ImageButtonDef;->mViewId:I

    .line 22
    return-void
.end method


# virtual methods
.method public getIconResourceID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/ImageButtonDef;->mIconResourceID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getViewID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/ImageButtonDef;->mViewId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
