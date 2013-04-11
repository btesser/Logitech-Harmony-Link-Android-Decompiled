.class public final Lcom/logitech/harmonylink/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CellLayout:[I = null

.field public static final CellLayout_cellHeight:I = 0x1

.field public static final CellLayout_cellWidth:I = 0x0

.field public static final CellLayout_longAxisCells:I = 0x7

.field public static final CellLayout_longAxisEndPadding:I = 0x3

.field public static final CellLayout_longAxisStartPadding:I = 0x2

.field public static final CellLayout_shortAxisCells:I = 0x6

.field public static final CellLayout_shortAxisEndPadding:I = 0x5

.field public static final CellLayout_shortAxisStartPadding:I = 0x4

.field public static final CustomSlidingDrawer:[I = null

.field public static final CustomSlidingDrawer_animationDuration:I = 0x0

.field public static final CustomSlidingDrawer_closedHandle:I = 0x7

.field public static final CustomSlidingDrawer_content:I = 0x3

.field public static final CustomSlidingDrawer_handle:I = 0x2

.field public static final CustomSlidingDrawer_linearFlying:I = 0x4

.field public static final CustomSlidingDrawer_openedHandle:I = 0x6

.field public static final CustomSlidingDrawer_position:I = 0x1

.field public static final CustomSlidingDrawer_weight:I = 0x5

.field public static final DeleteZone:[I = null

.field public static final DeleteZone_direction:I = 0x0

.field public static final Favorite:[I = null

.field public static final Favorite_className:I = 0x0

.field public static final Favorite_packageName:I = 0x1

.field public static final Favorite_screen:I = 0x2

.field public static final Favorite_x:I = 0x3

.field public static final Favorite_y:I = 0x4

.field public static final GlobalTab:[I

.field public static final GlobalTab_target:I

.field public static final frame_griditem:[I

.field public static final frame_griditem_android_galleryItemBackground:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2084
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/logitech/harmonylink/R$styleable;->CellLayout:[I

    .line 2252
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/logitech/harmonylink/R$styleable;->CustomSlidingDrawer:[I

    .line 2389
    new-array v0, v3, [I

    const v1, 0x7f010011

    aput v1, v0, v2

    sput-object v0, Lcom/logitech/harmonylink/R$styleable;->DeleteZone:[I

    .line 2424
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/logitech/harmonylink/R$styleable;->Favorite:[I

    .line 2508
    new-array v0, v3, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/logitech/harmonylink/R$styleable;->GlobalTab:[I

    .line 2535
    new-array v0, v3, [I

    const v1, 0x101004c

    aput v1, v0, v2

    sput-object v0, Lcom/logitech/harmonylink/R$styleable;->frame_griditem:[I

    return-void

    .line 2084
    nop

    :array_0
    .array-data 0x4
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
        0x10t 0x0t 0x1t 0x7ft
    .end array-data

    .line 2252
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
    .end array-data

    .line 2424
    :array_2
    .array-data 0x4
        0x12t 0x0t 0x1t 0x7ft
        0x13t 0x0t 0x1t 0x7ft
        0x14t 0x0t 0x1t 0x7ft
        0x15t 0x0t 0x1t 0x7ft
        0x16t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
