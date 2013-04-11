.class public Lcom/logitech/harmonylink/ka1x/view/GestureView;
.super Landroid/widget/LinearLayout;
.source "GestureView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/widget/TabHost$TabContentFactory;


# static fields
.field private static mIsDpadSelected:Z


# instance fields
.field private final D_PEEKABOO_SHAPES:[[[I

.field private final LOG_TAG:Ljava/lang/String;

.field private MINIMUM_SWIPE_DISTANCE_DIP:I

.field private final SHAPED_BUTTON_ARRAY:[I

.field private SINGLE_FINGER_USED:I

.field buttonKeyMapArray:[Lcom/logitech/harmonylink/harmony/KeycodeMapping;

.field distX:I

.field distY:I

.field private mContainerView:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field private mDom:Lcom/logitech/harmonylink/harmony/Dom;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsMultiTouch:Z

.field private mMinimumSwipeDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mIsDpadSelected:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/logitech/harmonylink/HarmonyRemoteApplication;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 9
    .parameter "context"
    .parameter "application"
    .parameter "parentViewGroup"
    .parameter "navBarTabHost"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iput-boolean v6, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mIsMultiTouch:Z

    .line 52
    const/16 v0, 0x28

    iput v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->MINIMUM_SWIPE_DISTANCE_DIP:I

    .line 53
    iput v5, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->SINGLE_FINGER_USED:I

    .line 56
    const-class v0, Lcom/logitech/harmonylink/ka1x/view/GestureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->LOG_TAG:Ljava/lang/String;

    .line 58
    iput v6, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->distY:I

    .line 59
    iput v6, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->distX:I

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->SHAPED_BUTTON_ARRAY:[I

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    new-instance v1, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v2, 0x7f070051

    sget-object v3, Lcom/logitech/harmonylink/harmony/Command;->DPAD_UP:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v1, v2, v3}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v2, 0x7f070052

    sget-object v3, Lcom/logitech/harmonylink/harmony/Command;->DPAD_RIGHT:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v1, v2, v3}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v2, 0x7f070053

    sget-object v3, Lcom/logitech/harmonylink/harmony/Command;->DPAD_DOWN:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v1, v2, v3}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v2, 0x7f070050

    sget-object v3, Lcom/logitech/harmonylink/harmony/Command;->DPAD_LEFT:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v1, v2, v3}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v2, 0x7f070054

    sget-object v3, Lcom/logitech/harmonylink/harmony/Command;->ENTER:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v1, v2, v3}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v1, v0, v8

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->buttonKeyMapArray:[Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    .line 70
    const/4 v0, 0x5

    new-array v0, v0, [[[I

    new-array v1, v8, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_6

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_7

    aput-object v2, v1, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_8

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_9

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_a

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_b

    aput-object v2, v1, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_c

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    new-array v1, v8, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_d

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_e

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_f

    aput-object v2, v1, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_10

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_11

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_12

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_13

    aput-object v2, v1, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_14

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->D_PEEKABOO_SHAPES:[[[I

    .line 89
    invoke-virtual {p2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 90
    invoke-virtual {p0, v5}, Lcom/logitech/harmonylink/ka1x/view/GestureView;->setFocusable(Z)V

    .line 91
    invoke-virtual {p0, v5}, Lcom/logitech/harmonylink/ka1x/view/GestureView;->setFocusableInTouchMode(Z)V

    .line 92
    invoke-virtual {p0, v5}, Lcom/logitech/harmonylink/ka1x/view/GestureView;->setClickable(Z)V

    .line 93
    invoke-virtual {p0, v5}, Lcom/logitech/harmonylink/ka1x/view/GestureView;->setEnabled(Z)V

    .line 95
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mContext:Landroid/content/Context;

    .line 96
    iget v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->MINIMUM_SWIPE_DISTANCE_DIP:I

    invoke-static {p1, v0}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mMinimumSwipeDistance:I

    .line 102
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 103
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/ka1x/view/GestureView;->configure(Landroid/content/Context;)V

    .line 104
    return-void

    .line 61
    nop

    :array_0
    .array-data 0x4
        0x51t 0x0t 0x7t 0x7ft
        0x52t 0x0t 0x7t 0x7ft
        0x53t 0x0t 0x7t 0x7ft
        0x50t 0x0t 0x7t 0x7ft
        0x54t 0x0t 0x7t 0x7ft
    .end array-data

    .line 70
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xd2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x52t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x52t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x52t 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0xd2t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x52t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x52t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0x52t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0x52t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
    .end array-data

    :array_12
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
    .end array-data

    :array_14
    .array-data 0x4
        0x52t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/ka1x/view/GestureView;)Lcom/logitech/harmonylink/harmony/Dom;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mIsDpadSelected:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    sput-boolean p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mIsDpadSelected:Z

    return p0
.end method

.method private configure(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, -0x1

    .line 108
    const v4, 0x7f03001b

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lcom/logitech/harmonylink/ka1x/view/GestureView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mContainerView:Landroid/view/View;

    .line 110
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->SHAPED_BUTTON_ARRAY:[I

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 112
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mContainerView:Landroid/view/View;

    iget-object v5, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->SHAPED_BUTTON_ARRAY:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/view/widget/ShapedImageButton;

    .line 115
    .local v0, button:Lcom/logitech/harmonylink/view/widget/ShapedImageButton;
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->D_PEEKABOO_SHAPES:[[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Lcom/logitech/harmonylink/view/widget/ShapedImageButton;->setButtonRegion([[I)V

    .line 116
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->buttonKeyMapArray:[Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    aget-object v4, v4, v3

    iget-object v1, v4, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->mCommand:Lcom/logitech/harmonylink/harmony/Command;

    .line 117
    .local v1, c:Lcom/logitech/harmonylink/harmony/Command;
    new-instance v4, Lcom/logitech/harmonylink/ka1x/view/GestureView$1;

    invoke-direct {v4, p0, v1}, Lcom/logitech/harmonylink/ka1x/view/GestureView$1;-><init>(Lcom/logitech/harmonylink/ka1x/view/GestureView;Lcom/logitech/harmonylink/harmony/Command;)V

    invoke-virtual {v0, v4}, Lcom/logitech/harmonylink/view/widget/ShapedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    .end local v0           #button:Lcom/logitech/harmonylink/view/widget/ShapedImageButton;
    .end local v1           #c:Lcom/logitech/harmonylink/harmony/Command;
    :cond_0
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mContainerView:Landroid/view/View;

    invoke-virtual {p0, v4, v6, v6}, Lcom/logitech/harmonylink/ka1x/view/GestureView;->addView(Landroid/view/View;II)V

    .line 128
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/view/GestureView;->SwapView()V

    .line 130
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mContainerView:Landroid/view/View;

    invoke-direct {p0, p1, v4}, Lcom/logitech/harmonylink/ka1x/view/GestureView;->handleClick(Landroid/content/Context;Landroid/view/View;)V

    .line 132
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mContainerView:Landroid/view/View;

    const v5, 0x7f07005c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    .line 134
    .local v2, dpadGestureToggleButton:Landroid/widget/ToggleButton;
    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    sput-boolean v4, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mIsDpadSelected:Z

    .line 135
    return-void
.end method

.method private handleClick(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .parameter "context"
    .parameter "view"

    .prologue
    .line 310
    const v2, 0x7f07005c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    .line 313
    .local v1, imageView:Landroid/widget/ToggleButton;
    const v2, 0x7f070056

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewAnimator;

    .line 316
    .local v0, actionAreaAnimator:Landroid/widget/ViewAnimator;
    if-eqz v1, :cond_0

    .line 317
    new-instance v2, Lcom/logitech/harmonylink/ka1x/view/GestureView$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/logitech/harmonylink/ka1x/view/GestureView$2;-><init>(Lcom/logitech/harmonylink/ka1x/view/GestureView;Landroid/content/Context;Landroid/widget/ViewAnimator;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    :cond_0
    return-void
.end method

.method private invokeMethod(Ljava/lang/Class;Landroid/view/MotionEvent;)I
    .locals 5
    .parameter "class1"
    .parameter "event"

    .prologue
    .line 378
    const/4 v1, 0x0

    .line 381
    .local v1, obj:Ljava/lang/Object;
    iget v2, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->SINGLE_FINGER_USED:I

    .line 383
    .local v2, value:I
    :try_start_0
    const-string v3, "getPointerCount"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    .line 395
    .end local v1           #obj:Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 397
    :cond_0
    return v2

    .line 384
    .restart local v1       #obj:Ljava/lang/Object;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 385
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 386
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 387
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 388
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 389
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 390
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 391
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 392
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v3

    move-object v0, v3

    .line 393
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public SwapView()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 138
    iget-object v5, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mContainerView:Landroid/view/View;

    const v6, 0x7f070056

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewAnimator;

    .line 140
    .local v0, actionAreaAnimator:Landroid/widget/ViewAnimator;
    iget-object v5, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mContainerView:Landroid/view/View;

    const v6, 0x7f07005c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    .line 143
    .local v1, dpadGestureToggleButton:Landroid/widget/ToggleButton;
    iget-object v5, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v2

    .line 144
    .local v2, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const-string v5, "screen"

    invoke-virtual {v2, v5, v9}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getStringWithName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, screen:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 147
    const-string v5, "dpadcontrols"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 149
    const-string v5, "view"

    invoke-virtual {v2, v5, v9}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getStringWithName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, view:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 154
    const-string v5, "dpad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 155
    invoke-virtual {v1, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 156
    invoke-virtual {v0, v7}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 169
    .end local v4           #view:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v5

    sput-boolean v5, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mIsDpadSelected:Z

    .line 171
    :cond_1
    return-void

    .line 158
    .restart local v4       #view:Ljava/lang/String;
    :cond_2
    const-string v5, "gesture"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 159
    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 160
    invoke-virtual {v0, v8}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_0

    .line 166
    .end local v4           #view:Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v7}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 167
    invoke-virtual {v1, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 0
    .parameter "tag"

    .prologue
    .line 284
    return-object p0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "motionEvent"

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "motionEvent"

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mIsMultiTouch:Z

    .line 181
    iput v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->distY:I

    .line 182
    iput v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->distX:I

    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "motionEvent1"
    .parameter "motionEvent2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "motionEvent"

    .prologue
    .line 260
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "motionEvent1"
    .parameter "motionEvent2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v2, 0x0

    .line 195
    iget v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->distY:I

    int-to-float v0, v0

    add-float/2addr v0, p4

    float-to-int v0, v0

    iput v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->distY:I

    .line 196
    iget v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->distX:I

    int-to-float v0, v0

    add-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->distX:I

    .line 200
    iget v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->distY:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->distX:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_4

    .line 201
    iget v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->distY:I

    iget v1, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mMinimumSwipeDistance:I

    if-le v0, v1, :cond_2

    .line 203
    iget-boolean v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mIsMultiTouch:Z

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    sget-object v1, Lcom/logitech/harmonylink/harmony/Command;->PAGE_UP:Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->startSendCommand(Lcom/logitech/harmonylink/harmony/Command;)Z

    .line 238
    :cond_0
    :goto_0
    return v2

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    sget-object v1, Lcom/logitech/harmonylink/harmony/Command;->DPAD_UP:Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->startSendCommand(Lcom/logitech/harmonylink/harmony/Command;)Z

    .line 208
    iput v2, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->distX:I

    .line 209
    iput v2, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->distY:I

    goto :goto_0

    .line 211
    :cond_2
    iget v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->distY:I

    iget v1, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mMinimumSwipeDistance:I

    neg-int v1, v1

    if-ge v0, v1, :cond_0

    .line 212
    iget-boolean v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mIsMultiTouch:Z

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    sget-object v1, Lcom/logitech/harmonylink/harmony/Command;->PAGE_DOWN:Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->startSendCommand(Lcom/logitech/harmonylink/harmony/Command;)Z

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    sget-object v1, Lcom/logitech/harmonylink/harmony/Command;->DPAD_DOWN:Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->startSendCommand(Lcom/logitech/harmonylink/harmony/Command;)Z

    .line 217
    iput v2, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->distX:I

    .line 218
    iput v2, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->distY:I

    goto :goto_0

    .line 223
    :cond_4
    iget v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->distX:I

    iget v1, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mMinimumSwipeDistance:I

    if-le v0, v1, :cond_5

    .line 225
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    sget-object v1, Lcom/logitech/harmonylink/harmony/Command;->DPAD_LEFT:Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->startSendCommand(Lcom/logitech/harmonylink/harmony/Command;)Z

    .line 226
    iput v2, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->distX:I

    .line 227
    iput v2, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->distY:I

    goto :goto_0

    .line 228
    :cond_5
    iget v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->distX:I

    iget v1, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mMinimumSwipeDistance:I

    neg-int v1, v1

    if-ge v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    sget-object v1, Lcom/logitech/harmonylink/harmony/Command;->DPAD_RIGHT:Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->startSendCommand(Lcom/logitech/harmonylink/harmony/Command;)Z

    .line 231
    iput v2, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->distX:I

    .line 232
    iput v2, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->distY:I

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 362
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "motionEvent"

    .prologue
    .line 268
    sget-boolean v1, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mIsDpadSelected:Z

    if-nez v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    sget-object v2, Lcom/logitech/harmonylink/harmony/Command;->ENTER:Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/harmony/Dom;->startSendCommand(Lcom/logitech/harmonylink/harmony/Command;)Z

    move-result v0

    .local v0, flag:Z
    move v1, v0

    .line 273
    .end local v0           #flag:Z
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 344
    sget-boolean v1, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mIsDpadSelected:Z

    if-nez v1, :cond_1

    .line 348
    invoke-static {}, Lcom/logitech/harmonylink/util/SystemUtil;->getSdkVersionSafely()I

    move-result v0

    .line 349
    .local v0, os:I
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 350
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/logitech/harmonylink/ka1x/view/GestureView;->invokeMethod(Ljava/lang/Class;Landroid/view/MotionEvent;)I

    move-result v1

    if-le v1, v2, :cond_0

    .line 351
    iput-boolean v2, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mIsMultiTouch:Z

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v1, v2

    .line 357
    .end local v0           #os:I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
