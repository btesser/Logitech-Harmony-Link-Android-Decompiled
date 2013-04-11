.class public Lcom/logitech/harmonylink/context/DeviceCommandsActivity$ItemSelectionViewDelegate;
.super Landroid/view/View;
.source "DeviceCommandsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/DeviceCommandsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemSelectionViewDelegate"
.end annotation


# instance fields
.field private mGridView:Landroid/widget/GridView;

.field private mItemIndex:I


# direct methods
.method public constructor <init>(Landroid/widget/GridView;I)V
    .locals 1
    .parameter "gridView"
    .parameter "itemIndex"

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 145
    iput-object p1, p0, Lcom/logitech/harmonylink/context/DeviceCommandsActivity$ItemSelectionViewDelegate;->mGridView:Landroid/widget/GridView;

    .line 146
    iput p2, p0, Lcom/logitech/harmonylink/context/DeviceCommandsActivity$ItemSelectionViewDelegate;->mItemIndex:I

    .line 147
    return-void
.end method


# virtual methods
.method public isPressed()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1
    .parameter "action"
    .parameter "delayMillis"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/logitech/harmonylink/context/DeviceCommandsActivity$ItemSelectionViewDelegate;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/GridView;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method
