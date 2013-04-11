.class public Lcom/logitech/harmonylink/ka1x/util/Display;
.super Ljava/lang/Object;
.source "Display.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertPointFromScreen([ILandroid/view/View;)V
    .locals 5
    .parameter "point"
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 115
    .local v0, v_location:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 116
    aget v1, p0, v3

    aget v2, v0, v3

    sub-int/2addr v1, v2

    aput v1, p0, v3

    .line 117
    aget v1, p0, v4

    aget v2, v0, v4

    sub-int/2addr v1, v2

    aput v1, p0, v4

    .line 118
    return-void
.end method

.method public static dipToPixels(Landroid/content/Context;I)I
    .locals 3
    .parameter "ctx"
    .parameter "dipValue"

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 25
    .local v0, scale:F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getDisplayHeight(Landroid/content/Context;)I
    .locals 1
    .parameter "ctx"

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getHitRect(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 10
    .parameter "hitView"
    .parameter "ancestorView"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 87
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 88
    .local v2, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 90
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 92
    .local v1, location:[I
    aput v8, v1, v8

    .line 93
    aput v8, v1, v9

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 96
    .local v4, viewParent:Landroid/view/ViewParent;
    :cond_0
    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_1

    .line 97
    move-object v0, v4

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    .line 98
    .local v3, view:Landroid/view/View;
    aget v5, v1, v8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    aput v5, v1, v8

    .line 99
    aget v5, v1, v9

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    aput v5, v1, v9

    .line 101
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 103
    if-ne v4, p1, :cond_0

    .line 108
    .end local v3           #view:Landroid/view/View;
    :cond_1
    aget v5, v1, v8

    aget v6, v1, v9

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 110
    return-object v2
.end method

.method public static getStatusAndTitleBarHeight(Landroid/app/Activity;)I
    .locals 4
    .parameter "activity"

    .prologue
    .line 72
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 73
    .local v1, rect:Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 74
    .local v2, win:Landroid/view/Window;
    if-eqz p0, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 76
    :cond_0
    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 78
    :cond_1
    const/4 v0, 0x0

    .line 79
    .local v0, contentViewTop:I
    if-eqz v2, :cond_2

    .line 80
    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    .line 82
    :cond_2
    return v0
.end method

.method public static getStatusBarHeight(Landroid/app/Activity;)I
    .locals 4
    .parameter "activity"

    .prologue
    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 43
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 44
    .local v2, win:Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 47
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 49
    .local v1, statusBarHeight:I
    return v1
.end method

.method public static getTitleBarHeight(Landroid/app/Activity;)I
    .locals 7
    .parameter "activity"

    .prologue
    .line 54
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 55
    .local v1, rect:Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 56
    .local v5, win:Landroid/view/Window;
    if-eqz p0, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 58
    :cond_0
    if-eqz v5, :cond_1

    .line 59
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 60
    :cond_1
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 62
    .local v3, statusBarHeight:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 63
    .local v2, rectContent:Landroid/graphics/Rect;
    if-eqz v5, :cond_2

    .line 64
    const v6, 0x1020002

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 65
    :cond_2
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 66
    .local v0, contentViewTop:I
    sub-int v4, v0, v3

    .line 68
    .local v4, titleBarHeight:I
    return v4
.end method

.method public static pixelsToDip(Landroid/content/Context;I)I
    .locals 3
    .parameter "ctx"
    .parameter "pixelValue"

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 31
    .local v0, scale:F
    int-to-float v1, p1

    div-float/2addr v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method
