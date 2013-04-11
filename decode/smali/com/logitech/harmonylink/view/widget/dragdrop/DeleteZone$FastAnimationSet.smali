.class Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone$FastAnimationSet;
.super Landroid/view/animation/AnimationSet;
.source "DeleteZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FastAnimationSet"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 250
    return-void
.end method


# virtual methods
.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    return v0
.end method
