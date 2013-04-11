.class public Lcom/logitech/harmonylink/ka1x/DeviceCommandsActivity$ItemSelectionViewDelegate;
.super Landroid/view/View;
.source "DeviceCommandsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/ka1x/DeviceCommandsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemSelectionViewDelegate"
.end annotation


# instance fields
.field private mGridView:Landroid/widget/GridView;


# direct methods
.method public constructor <init>(Landroid/widget/GridView;I)V
    .locals 1
    .parameter "gridView"
    .parameter "itemIndex"

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 177
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/DeviceCommandsActivity$ItemSelectionViewDelegate;->mGridView:Landroid/widget/GridView;

    .line 178
    return-void
.end method


# virtual methods
.method public isPressed()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1
    .parameter "action"
    .parameter "delayMillis"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/DeviceCommandsActivity$ItemSelectionViewDelegate;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/GridView;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method
