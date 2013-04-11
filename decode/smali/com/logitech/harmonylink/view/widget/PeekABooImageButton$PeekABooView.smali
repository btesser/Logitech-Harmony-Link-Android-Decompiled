.class Lcom/logitech/harmonylink/view/widget/PeekABooImageButton$PeekABooView;
.super Ljava/lang/Object;
.source "PeekABooImageButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/view/widget/PeekABooImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeekABooView"
.end annotation


# instance fields
.field private mRegion:Landroid/graphics/Region;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/graphics/Region;Landroid/view/View;)V
    .locals 0
    .parameter "region"
    .parameter "view"

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton$PeekABooView;->mRegion:Landroid/graphics/Region;

    .line 177
    iput-object p2, p0, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton$PeekABooView;->mView:Landroid/view/View;

    .line 178
    return-void
.end method


# virtual methods
.method public getRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton$PeekABooView;->mRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton$PeekABooView;->mView:Landroid/view/View;

    return-object v0
.end method
