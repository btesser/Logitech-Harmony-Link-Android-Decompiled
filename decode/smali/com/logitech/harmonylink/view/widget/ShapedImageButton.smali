.class public Lcom/logitech/harmonylink/view/widget/ShapedImageButton;
.super Landroid/widget/ImageButton;
.source "ShapedImageButton.java"


# instance fields
.field private mButtonRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const v6, 0x7f070005

    const/4 v5, 0x0

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 109
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_1
    return v4

    .line 81
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 82
    .local v0, posX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 83
    .local v1, posY:F
    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/view/widget/ShapedImageButton;->pointInRegion(FF)Z

    move-result v4

    if-nez v4, :cond_1

    .line 84
    invoke-virtual {p0, v5}, Lcom/logitech/harmonylink/view/widget/ShapedImageButton;->setPressed(Z)V

    move v4, v5

    .line 85
    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {p0, v6}, Lcom/logitech/harmonylink/view/widget/ShapedImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/logitech/harmonylink/harmony/SendCommands;

    .line 91
    .local v2, sender:Lcom/logitech/harmonylink/harmony/SendCommands;
    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/SendCommands;->sendCommand()V

    goto :goto_0

    .line 99
    .end local v0           #posX:F
    .end local v1           #posY:F
    .end local v2           #sender:Lcom/logitech/harmonylink/harmony/SendCommands;
    :pswitch_1
    invoke-virtual {p0, v6}, Lcom/logitech/harmonylink/view/widget/ShapedImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/logitech/harmonylink/harmony/SendCommands;

    .line 101
    .local v3, sender1:Lcom/logitech/harmonylink/harmony/SendCommands;
    if-eqz v3, :cond_0

    .line 102
    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/SendCommands;->sendCancelCommand()V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pointInRegion(FF)Z
    .locals 3
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/ShapedImageButton;->mButtonRegion:Landroid/graphics/Region;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    return v0
.end method

.method public setButtonRegion([[I)V
    .locals 14
    .parameter "buttonShape"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 33
    new-instance v7, Landroid/graphics/Region;

    invoke-direct {v7}, Landroid/graphics/Region;-><init>()V

    .line 34
    .local v7, shapedRegion:Landroid/graphics/Region;
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 36
    .local v6, shapedPath:Landroid/graphics/Path;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/ShapedImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 38
    .local v1, context:Landroid/content/Context;
    aget-object v10, p1, v12

    aget v10, v10, v12

    invoke-static {v1, v10}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->dipToPixels(Landroid/content/Context;I)I

    move-result v8

    .line 40
    .local v8, startX:I
    aget-object v10, p1, v12

    aget v10, v10, v13

    invoke-static {v1, v10}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->dipToPixels(Landroid/content/Context;I)I

    move-result v9

    .line 43
    .local v9, startY:I
    int-to-float v10, v8

    int-to-float v11, v9

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 45
    const/4 v2, 0x0

    .local v2, indexLine:I
    :goto_0
    array-length v10, p1

    if-ge v2, v10, :cond_0

    .line 47
    aget-object v10, p1, v2

    aget v10, v10, v12

    invoke-static {v1, v10}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->dipToPixels(Landroid/content/Context;I)I

    move-result v3

    .line 49
    .local v3, posX:I
    aget-object v10, p1, v2

    aget v10, v10, v13

    invoke-static {v1, v10}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->dipToPixels(Landroid/content/Context;I)I

    move-result v4

    .line 52
    .local v4, posY:I
    int-to-float v10, v3

    int-to-float v11, v4

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .end local v3           #posX:I
    .end local v4           #posY:I
    :cond_0
    int-to-float v10, v8

    int-to-float v11, v9

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 57
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 59
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 60
    .local v5, rectF:Landroid/graphics/RectF;
    invoke-virtual {v6, v5, v13}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 62
    new-instance v0, Landroid/graphics/Region;

    iget v10, v5, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    iget v11, v5, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    iget v12, v5, Landroid/graphics/RectF;->right:F

    float-to-int v12, v12

    iget v13, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v13, v13

    invoke-direct {v0, v10, v11, v12, v13}, Landroid/graphics/Region;-><init>(IIII)V

    .line 65
    .local v0, clipRegion:Landroid/graphics/Region;
    invoke-virtual {v7, v6, v0}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 67
    iput-object v7, p0, Lcom/logitech/harmonylink/view/widget/ShapedImageButton;->mButtonRegion:Landroid/graphics/Region;

    .line 69
    return-void
.end method
