.class public Lcom/logitech/harmonylink/context/view/GestureView;
.super Landroid/widget/LinearLayout;
.source "GestureView.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;
    }
.end annotation


# static fields
.field private static mIsDpadSelected:Z

.field private static mIskeySend:Z


# instance fields
.field private final D_PEEKABOO_SHAPES:[[[I

.field private final LOG_TAG:Ljava/lang/String;

.field private MINIMUM_SWIPE_DISTANCE_DIP:I

.field private final SHAPED_BUTTON_ARRAY:[I

.field private SINGLE_FINGER_USED:I

.field distX:I

.field distY:I

.field private dpaddown:Lcom/logitech/harmonylink/harmony/Command;

.field private dpadenter:Lcom/logitech/harmonylink/harmony/Command;

.field private dpadleft:Lcom/logitech/harmonylink/harmony/Command;

.field private dpadright:Lcom/logitech/harmonylink/harmony/Command;

.field private dpadup:Lcom/logitech/harmonylink/harmony/Command;

.field private mContainerView:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field private mDom:Lcom/logitech/harmonylink/harmony/Dom;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsMultiTouch:Z

.field private mMinimumSwipeDistance:I

.field private pagedown:Lcom/logitech/harmonylink/harmony/Command;

.field private pageup:Lcom/logitech/harmonylink/harmony/Command;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/logitech/harmonylink/context/view/GestureView;->mIsDpadSelected:Z

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/logitech/harmonylink/context/view/GestureView;->mIskeySend:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/logitech/harmonylink/HarmonyRemoteApplication;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 8
    .parameter "context"
    .parameter "application"
    .parameter "parentViewGroup"
    .parameter "navBarTabHost"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iput-boolean v5, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mIsMultiTouch:Z

    .line 52
    const/16 v0, 0x28

    iput v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->MINIMUM_SWIPE_DISTANCE_DIP:I

    .line 53
    iput v4, p0, Lcom/logitech/harmonylink/context/view/GestureView;->SINGLE_FINGER_USED:I

    .line 57
    const-class v0, Lcom/logitech/harmonylink/context/view/GestureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->LOG_TAG:Ljava/lang/String;

    .line 59
    iput v5, p0, Lcom/logitech/harmonylink/context/view/GestureView;->distY:I

    .line 60
    iput v5, p0, Lcom/logitech/harmonylink/context/view/GestureView;->distX:I

    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->SHAPED_BUTTON_ARRAY:[I

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [[[I

    new-array v1, v7, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v4

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v1, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v1, v4

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v1, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v1, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v1, v4

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v1, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v1, v6

    aput-object v1, v0, v3

    new-array v1, v7, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v1, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v1, v4

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v1, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v1, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v1, v4

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v1, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->D_PEEKABOO_SHAPES:[[[I

    .line 91
    invoke-virtual {p2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 92
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    const-string v1, "DirectionUp"

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->dpadup:Lcom/logitech/harmonylink/harmony/Command;

    .line 93
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    const-string v1, "DirectionRight"

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->dpadright:Lcom/logitech/harmonylink/harmony/Command;

    .line 94
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    const-string v1, "DirectionDown"

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->dpaddown:Lcom/logitech/harmonylink/harmony/Command;

    .line 95
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    const-string v1, "DirectionLeft"

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->dpadleft:Lcom/logitech/harmonylink/harmony/Command;

    .line 96
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    const-string v1, "Select"

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->dpadenter:Lcom/logitech/harmonylink/harmony/Command;

    .line 97
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    const-string v1, "PageUp"

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->pageup:Lcom/logitech/harmonylink/harmony/Command;

    .line 98
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    const-string v1, "PageDown"

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->pagedown:Lcom/logitech/harmonylink/harmony/Command;

    .line 99
    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/view/GestureView;->setFocusable(Z)V

    .line 100
    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/view/GestureView;->setFocusableInTouchMode(Z)V

    .line 101
    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/view/GestureView;->setClickable(Z)V

    .line 102
    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/view/GestureView;->setEnabled(Z)V

    .line 104
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mContext:Landroid/content/Context;

    .line 105
    iget v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->MINIMUM_SWIPE_DISTANCE_DIP:I

    invoke-static {p1, v0}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mMinimumSwipeDistance:I

    .line 111
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;-><init>(Lcom/logitech/harmonylink/context/view/GestureView;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 112
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/context/view/GestureView;->configure(Landroid/content/Context;)V

    .line 113
    return-void

    .line 62
    nop

    :array_0
    .array-data 0x4
        0x51t 0x0t 0x7t 0x7ft
        0x52t 0x0t 0x7t 0x7ft
        0x53t 0x0t 0x7t 0x7ft
        0x50t 0x0t 0x7t 0x7ft
        0x54t 0x0t 0x7t 0x7ft
    .end array-data

    .line 72
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

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/logitech/harmonylink/context/view/GestureView;->mIsDpadSelected:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    sput-boolean p0, Lcom/logitech/harmonylink/context/view/GestureView;->mIsDpadSelected:Z

    return p0
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Command;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->dpadenter:Lcom/logitech/harmonylink/harmony/Command;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Command;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->dpadleft:Lcom/logitech/harmonylink/harmony/Command;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Command;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->dpadright:Lcom/logitech/harmonylink/harmony/Command;

    return-object v0
.end method

.method static synthetic access$200(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Dom;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    return-object v0
.end method

.method static synthetic access$300(Lcom/logitech/harmonylink/context/view/GestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mIsMultiTouch:Z

    return v0
.end method

.method static synthetic access$302(Lcom/logitech/harmonylink/context/view/GestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mIsMultiTouch:Z

    return p1
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/logitech/harmonylink/context/view/GestureView;->mIskeySend:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    sput-boolean p0, Lcom/logitech/harmonylink/context/view/GestureView;->mIskeySend:Z

    return p0
.end method

.method static synthetic access$500(Lcom/logitech/harmonylink/context/view/GestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mMinimumSwipeDistance:I

    return v0
.end method

.method static synthetic access$600(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Command;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->pageup:Lcom/logitech/harmonylink/harmony/Command;

    return-object v0
.end method

.method static synthetic access$700(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Command;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->dpadup:Lcom/logitech/harmonylink/harmony/Command;

    return-object v0
.end method

.method static synthetic access$800(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Command;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->pagedown:Lcom/logitech/harmonylink/harmony/Command;

    return-object v0
.end method

.method static synthetic access$900(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Command;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView;->dpaddown:Lcom/logitech/harmonylink/harmony/Command;

    return-object v0
.end method

.method private configure(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, -0x1

    .line 117
    const v6, 0x7f03001b

    const/4 v7, 0x0

    invoke-static {p1, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mContainerView:Landroid/view/View;

    .line 119
    const/4 v6, 0x5

    new-array v1, v6, [Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const/4 v6, 0x0

    new-instance v7, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v8, 0x7f070051

    iget-object v9, p0, Lcom/logitech/harmonylink/context/view/GestureView;->dpadup:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v7, v8, v9}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v7, v1, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v8, 0x7f070052

    iget-object v9, p0, Lcom/logitech/harmonylink/context/view/GestureView;->dpadright:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v7, v8, v9}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v7, v1, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v8, 0x7f070053

    iget-object v9, p0, Lcom/logitech/harmonylink/context/view/GestureView;->dpaddown:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v7, v8, v9}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v7, v1, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v8, 0x7f070050

    iget-object v9, p0, Lcom/logitech/harmonylink/context/view/GestureView;->dpadleft:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v7, v8, v9}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v7, v1, v6

    const/4 v6, 0x4

    new-instance v7, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v8, 0x7f070054

    iget-object v9, p0, Lcom/logitech/harmonylink/context/view/GestureView;->dpadenter:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v7, v8, v9}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v7, v1, v6

    .line 126
    .local v1, buttonKeyMapArray:[Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    const/4 v4, 0x0

    .local v4, index:I
    :goto_0
    iget-object v6, p0, Lcom/logitech/harmonylink/context/view/GestureView;->SHAPED_BUTTON_ARRAY:[I

    array-length v6, v6

    if-ge v4, v6, :cond_0

    .line 128
    iget-object v6, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mContainerView:Landroid/view/View;

    iget-object v7, p0, Lcom/logitech/harmonylink/context/view/GestureView;->SHAPED_BUTTON_ARRAY:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/view/widget/ShapedImageButton;

    .line 131
    .local v0, button:Lcom/logitech/harmonylink/view/widget/ShapedImageButton;
    iget-object v6, p0, Lcom/logitech/harmonylink/context/view/GestureView;->D_PEEKABOO_SHAPES:[[[I

    aget-object v6, v6, v4

    invoke-virtual {v0, v6}, Lcom/logitech/harmonylink/view/widget/ShapedImageButton;->setButtonRegion([[I)V

    .line 132
    aget-object v6, v1, v4

    iget-object v2, v6, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->mCommand:Lcom/logitech/harmonylink/harmony/Command;

    .line 133
    .local v2, c:Lcom/logitech/harmonylink/harmony/Command;
    new-instance v5, Lcom/logitech/harmonylink/harmony/SendCommands;

    iget-object v6, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-direct {v5, v6, v2, v0}, Lcom/logitech/harmonylink/harmony/SendCommands;-><init>(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/Command;Landroid/view/View;)V

    .line 134
    .local v5, sendCommand:Lcom/logitech/harmonylink/harmony/SendCommands;
    const v6, 0x7f070005

    invoke-virtual {v0, v6, v5}, Lcom/logitech/harmonylink/view/widget/ShapedImageButton;->setTag(ILjava/lang/Object;)V

    .line 126
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    .end local v0           #button:Lcom/logitech/harmonylink/view/widget/ShapedImageButton;
    .end local v2           #c:Lcom/logitech/harmonylink/harmony/Command;
    .end local v5           #sendCommand:Lcom/logitech/harmonylink/harmony/SendCommands;
    :cond_0
    iget-object v6, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mContainerView:Landroid/view/View;

    invoke-virtual {p0, v6, v10, v10}, Lcom/logitech/harmonylink/context/view/GestureView;->addView(Landroid/view/View;II)V

    .line 140
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/GestureView;->SwapView()V

    .line 142
    iget-object v6, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mContainerView:Landroid/view/View;

    invoke-direct {p0, p1, v6}, Lcom/logitech/harmonylink/context/view/GestureView;->handleClick(Landroid/content/Context;Landroid/view/View;)V

    .line 144
    iget-object v6, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mContainerView:Landroid/view/View;

    const v7, 0x7f07005c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    .line 146
    .local v3, dpadGestureToggleButton:Landroid/widget/ToggleButton;
    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v6

    sput-boolean v6, Lcom/logitech/harmonylink/context/view/GestureView;->mIsDpadSelected:Z

    .line 147
    return-void
.end method

.method private handleClick(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .parameter "context"
    .parameter "view"

    .prologue
    .line 186
    const v2, 0x7f07005c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    .line 189
    .local v1, imageView:Landroid/widget/ToggleButton;
    const v2, 0x7f070056

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewAnimator;

    .line 192
    .local v0, actionAreaAnimator:Landroid/widget/ViewAnimator;
    if-eqz v1, :cond_0

    .line 193
    new-instance v2, Lcom/logitech/harmonylink/context/view/GestureView$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/logitech/harmonylink/context/view/GestureView$1;-><init>(Lcom/logitech/harmonylink/context/view/GestureView;Landroid/content/Context;Landroid/widget/ViewAnimator;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    :cond_0
    return-void
.end method

.method private invokeMethod(Ljava/lang/Class;Landroid/view/MotionEvent;)I
    .locals 5
    .parameter "class1"
    .parameter "event"

    .prologue
    .line 226
    const/4 v1, 0x0

    .line 229
    .local v1, obj:Ljava/lang/Object;
    iget v2, p0, Lcom/logitech/harmonylink/context/view/GestureView;->SINGLE_FINGER_USED:I

    .line 231
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

    .line 243
    .end local v1           #obj:Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 245
    :cond_0
    return v2

    .line 232
    .restart local v1       #obj:Ljava/lang/Object;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 233
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 234
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 235
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 236
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 237
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 238
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 239
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 240
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v3

    move-object v0, v3

    .line 241
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

    .line 150
    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mContainerView:Landroid/view/View;

    const v6, 0x7f070056

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewAnimator;

    .line 152
    .local v0, actionAreaAnimator:Landroid/widget/ViewAnimator;
    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mContainerView:Landroid/view/View;

    const v6, 0x7f07005c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    .line 155
    .local v1, dpadGestureToggleButton:Landroid/widget/ToggleButton;
    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v2

    .line 156
    .local v2, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const-string v5, "screen"

    invoke-virtual {v2, v5, v9}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getStringWithName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, screen:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 159
    const-string v5, "dpadcontrols"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 161
    const-string v5, "view"

    invoke-virtual {v2, v5, v9}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getStringWithName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, view:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 166
    const-string v5, "dpad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 167
    invoke-virtual {v1, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 168
    invoke-virtual {v0, v7}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 181
    .end local v4           #view:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v5

    sput-boolean v5, Lcom/logitech/harmonylink/context/view/GestureView;->mIsDpadSelected:Z

    .line 183
    :cond_1
    return-void

    .line 170
    .restart local v4       #view:Ljava/lang/String;
    :cond_2
    const-string v5, "gesture"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 172
    invoke-virtual {v0, v8}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_0

    .line 178
    .end local v4           #view:Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v7}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 179
    invoke-virtual {v1, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 0
    .parameter "tag"

    .prologue
    .line 435
    return-object p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 256
    sget-boolean v1, Lcom/logitech/harmonylink/context/view/GestureView;->mIsDpadSelected:Z

    if-nez v1, :cond_1

    .line 261
    invoke-static {}, Lcom/logitech/harmonylink/util/SystemUtil;->getSdkVersionSafely()I

    move-result v0

    .line 262
    .local v0, os:I
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 263
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/logitech/harmonylink/context/view/GestureView;->invokeMethod(Ljava/lang/Class;Landroid/view/MotionEvent;)I

    move-result v1

    if-le v1, v2, :cond_0

    .line 264
    iput-boolean v2, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mIsMultiTouch:Z

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/GestureView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v1, v2

    .line 270
    .end local v0           #os:I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
