.class public Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;
.super Ljava/lang/Object;
.source "HarmonyRemoteDisplay.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
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

    .line 116
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 117
    .local v0, v_location:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 118
    aget v1, p0, v3

    aget v2, v0, v3

    sub-int/2addr v1, v2

    aput v1, p0, v3

    .line 119
    aget v1, p0, v4

    aget v2, v0, v4

    sub-int/2addr v1, v2

    aput v1, p0, v4

    .line 120
    return-void
.end method

.method public static dipToPixels(Landroid/content/Context;I)I
    .locals 3
    .parameter "ctx"
    .parameter "dipValue"

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 26
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
    .line 36
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

    .line 89
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 90
    .local v2, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 92
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 94
    .local v1, location:[I
    aput v8, v1, v8

    .line 95
    aput v8, v1, v9

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 98
    .local v4, viewParent:Landroid/view/ViewParent;
    :cond_0
    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_1

    .line 99
    move-object v0, v4

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    .line 100
    .local v3, view:Landroid/view/View;
    aget v5, v1, v8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    aput v5, v1, v8

    .line 101
    aget v5, v1, v9

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    aput v5, v1, v9

    .line 103
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 105
    if-ne v4, p1, :cond_0

    .line 110
    .end local v3           #view:Landroid/view/View;
    :cond_1
    aget v5, v1, v8

    aget v6, v1, v9

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 112
    return-object v2
.end method

.method public static getStatusAndTitleBarHeight(Landroid/app/Activity;)I
    .locals 5
    .parameter "activity"

    .prologue
    .line 73
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 74
    .local v1, rect:Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 75
    .local v3, win:Landroid/view/Window;
    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 77
    :cond_0
    if-eqz v3, :cond_1

    .line 78
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 79
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 80
    .local v2, statusBarHeight:I
    const/4 v0, 0x0

    .line 81
    .local v0, contentViewTop:I
    if-eqz v3, :cond_2

    .line 82
    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    .line 84
    :cond_2
    return v0
.end method

.method public static getStatusBarHeight(Landroid/app/Activity;)I
    .locals 4
    .parameter "activity"

    .prologue
    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 45
    .local v2, win:Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 48
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 50
    .local v1, statusBarHeight:I
    return v1
.end method

.method public static getTitleBarHeight(Landroid/app/Activity;)I
    .locals 7
    .parameter "activity"

    .prologue
    .line 55
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 56
    .local v1, rect:Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 57
    .local v5, win:Landroid/view/Window;
    if-eqz p0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 59
    :cond_0
    if-eqz v5, :cond_1

    .line 60
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 61
    :cond_1
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 63
    .local v3, statusBarHeight:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 64
    .local v2, rectContent:Landroid/graphics/Rect;
    if-eqz v5, :cond_2

    .line 65
    const v6, 0x1020002

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 66
    :cond_2
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 67
    .local v0, contentViewTop:I
    sub-int v4, v0, v3

    .line 69
    .local v4, titleBarHeight:I
    return v4
.end method

.method public static hideSoftKeyBoard(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .parameter "context"
    .parameter "view"

    .prologue
    .line 123
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 125
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 127
    return-void
.end method

.method public static pixelsToDip(Landroid/content/Context;I)I
    .locals 3
    .parameter "ctx"
    .parameter "pixelValue"

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 32
    .local v0, scale:F
    int-to-float v1, p1

    div-float/2addr v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method
