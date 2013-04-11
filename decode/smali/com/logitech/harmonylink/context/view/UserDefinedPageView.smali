.class public Lcom/logitech/harmonylink/context/view/UserDefinedPageView;
.super Landroid/widget/RelativeLayout;
.source "UserDefinedPageView.java"

# interfaces
.implements Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;
.implements Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;
.implements Lcom/logitech/harmonylink/view/widget/dragdrop/DragScroller;
.implements Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageChangeObserver;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ResetDefaultPicker;,
        Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;,
        Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;,
        Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;,
        Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DeviceCommandsAdapter;
    }
.end annotation


# static fields
.field public static final APPWIDGET_HOST_ID:I = 0xc00

.field public static final DIALOG_CREATE_DEVICE_COMMAND_PICKER:I = 0x2

.field public static final DIALOG_CREATE_DEVICE_PICKER:I = 0x1

.field public static final DIALOG_RESET_TO_DEFAULT_PICKER:I = 0x3

.field private static final TOUCH_STATE_REST:I

.field private static final mLayoutModel:Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;


# instance fields
.field private mAddItemCellInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

.field private mAllowLongPress:Z

.field private mCellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

.field private mCurrentScreen:I

.field private mDesktopLocked:Z

.field private mDevicePicker:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;

.field private mDragInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

.field private mDragger:Lcom/logitech/harmonylink/view/widget/dragdrop/DragController;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLocked:Z

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mParentActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

.field private mTargetCell:[I

.field private mTempCell:[I

.field private mTempEstimate:[I

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVacantCache:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;

    invoke-direct {v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;-><init>()V

    sput-object v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mLayoutModel:Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 77
    iput-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mVacantCache:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    .line 78
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTempCell:[I

    .line 79
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTempEstimate:[I

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTouchState:I

    .line 99
    iput-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTargetCell:[I

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDesktopLocked:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    iput-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mVacantCache:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    .line 78
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTempCell:[I

    .line 79
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTempEstimate:[I

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTouchState:I

    .line 99
    iput-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTargetCell:[I

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDesktopLocked:Z

    .line 115
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->initWorkspace()V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    iput-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mVacantCache:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    .line 78
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTempCell:[I

    .line 79
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTempEstimate:[I

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTouchState:I

    .line 99
    iput-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTargetCell:[I

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDesktopLocked:Z

    .line 130
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->initWorkspace()V

    .line 131
    return-void
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDesktopLocked:Z

    return v0
.end method

.method static synthetic access$300()Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mLayoutModel:Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;

    return-object v0
.end method

.method static synthetic access$700(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)Lcom/logitech/harmonylink/ui/common/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mParentActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    return-object v0
.end method

.method private clearVacantCache()V
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mVacantCache:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mVacantCache:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->clearVacantCells()V

    .line 629
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mVacantCache:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    .line 631
    :cond_0
    return-void
.end method

.method private estimateDropCell(IIIILandroid/view/View;Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;[I)[I
    .locals 7
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "layout"
    .parameter "recycle"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mVacantCache:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    if-nez v0, :cond_0

    .line 586
    const/4 v0, 0x0

    invoke-virtual {p6, v0, p5}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mVacantCache:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    .line 590
    :cond_0
    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mVacantCache:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    move-object v0, p6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->findNearestVacantArea(IIIILcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;[I)[I

    move-result-object v0

    return-object v0
.end method

.method private getCurrentDropLayout()Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;
    .locals 1

    .prologue
    .line 540
    const v0, 0x7f07005f

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    return-object p0
.end method

.method private initWorkspace()V
    .locals 2

    .prologue
    .line 139
    const/4 v1, 0x0

    iput v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCurrentScreen:I

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDesktopLocked:Z

    .line 146
    iput-object p0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 148
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 149
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTouchSlop:I

    .line 151
    return-void
.end method

.method private onDropExternal(IILjava/lang/Object;Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "dragInfo"
    .parameter "cellLayout"

    .prologue
    .line 695
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->onDropExternal(IILjava/lang/Object;Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;Z)V

    .line 696
    return-void
.end method

.method private onDropExternal(IILjava/lang/Object;Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;Z)V
    .locals 19
    .parameter "x"
    .parameter "y"
    .parameter "dragInfo"
    .parameter "cellLayout"
    .parameter "insertAtFirst"

    .prologue
    .line 701
    move-object/from16 v0, p3

    check-cast v0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;

    move-object/from16 v16, v0

    .line 705
    .local v16, info:Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->itemType:I

    move v3, v0

    packed-switch v3, :pswitch_data_0

    .line 724
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown item type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->itemType:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 707
    :pswitch_0
    move-object/from16 v0, v16

    check-cast v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 727
    .local v8, view:Landroid/view/View;
    if-eqz p5, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p4

    move-object v1, v8

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->addView(Landroid/view/View;I)V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object v3, v0

    invoke-virtual {v8, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 729
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTargetCell:[I

    move-object v10, v0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v9, p4

    invoke-direct/range {v3 .. v10}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->estimateDropCell(IIIILandroid/view/View;Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;[I)[I

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTargetCell:[I

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTargetCell:[I

    move-object v3, v0

    move-object/from16 v0, p4

    move-object v1, v8

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->onDropChild(Landroid/view/View;[I)V

    .line 731
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;

    .line 733
    .local v17, lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getModel()Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;

    move-result-object v18

    .line 734
    .local v18, model:Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->addDesktopItem(Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;)V

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-wide/16 v11, -0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCurrentScreen:I

    move v13, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellX:I

    move v14, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellY:I

    move v15, v0

    move-object/from16 v10, v16

    invoke-static/range {v9 .. v15}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;JIII)V

    .line 737
    return-void

    .line 727
    .end local v17           #lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    .end local v18           #model:Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;
    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 705
    :pswitch_data_0
    .packed-switch 0x3ed
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public acceptDrop(Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;IIIILjava/lang/Object;)Z
    .locals 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 546
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getCurrentDropLayout()Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    move-result-object v2

    .line 547
    .local v2, layout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDragInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    .line 548
    .local v0, cellInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;
    if-nez v0, :cond_1

    move v3, v6

    .line 549
    .local v3, spanX:I
    :goto_0
    if-nez v0, :cond_2

    move v4, v6

    .line 551
    .local v4, spanY:I
    :goto_1
    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mVacantCache:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    if-nez v5, :cond_0

    .line 552
    if-nez v0, :cond_3

    move-object v1, v7

    .line 553
    .local v1, ignoreView:Landroid/view/View;
    :goto_2
    invoke-virtual {v2, v7, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mVacantCache:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    .line 556
    .end local v1           #ignoreView:Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mVacantCache:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    iget-object v6, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTempEstimate:[I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v4, v7}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->findCellForSpan([IIIZ)Z

    move-result v5

    return v5

    .line 548
    .end local v3           #spanX:I
    .end local v4           #spanY:I
    :cond_1
    invoke-virtual {v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->getSpanX()I

    move-result v5

    move v3, v5

    goto :goto_0

    .line 549
    .restart local v3       #spanX:I
    :cond_2
    invoke-virtual {v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->getSpanY()I

    move-result v5

    move v4, v5

    goto :goto_1

    .line 552
    .restart local v4       #spanY:I
    :cond_3
    invoke-virtual {v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->getCell()Landroid/view/View;

    move-result-object v5

    move-object v1, v5

    goto :goto_2
.end method

.method public addButton(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;Lcom/logitech/harmonylink/harmony/Dom;)V
    .locals 3
    .parameter "buttonDef"
    .parameter "dom"

    .prologue
    const/4 v2, 0x0

    .line 255
    new-instance v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;-><init>(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;Landroid/content/Context;Lcom/logitech/harmonylink/harmony/Dom;)V

    .line 256
    .local v0, buttonInfo:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;
    invoke-virtual {v0, p1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->setButtonDef(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;)V

    .line 260
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->onDropExternal(IILjava/lang/Object;Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;)V

    .line 261
    return-void
.end method

.method addInCurrentScreen(Landroid/view/View;IIII)V
    .locals 8
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 771
    iget v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCurrentScreen:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 772
    return-void
.end method

.method addInCurrentScreen(Landroid/view/View;IIIIZ)V
    .locals 8
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 786
    iget v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCurrentScreen:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 787
    return-void
.end method

.method addInScreen(Landroid/view/View;IIIII)V
    .locals 8
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 801
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 802
    return-void
.end method

.method public addInScreen(Landroid/view/View;IIIIIZ)V
    .locals 5
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 817
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getChildCount()I

    move-result v2

    if-lt p2, v2, :cond_1

    .line 818
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The screen must be >= 0 and < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 821
    :cond_1
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->clearVacantCache()V

    .line 823
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    .line 824
    .local v0, group:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;

    .line 825
    .local v1, lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    if-nez v1, :cond_2

    .line 826
    new-instance v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;

    .end local v1           #lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    invoke-direct {v1, p3, p4, p5, p6}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;-><init>(IIII)V

    .line 833
    .restart local v1       #lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    :goto_0
    if-eqz p7, :cond_3

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, p1, v2, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 834
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 836
    return-void

    .line 828
    :cond_2
    iput p3, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellX:I

    .line 829
    iput p4, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellY:I

    .line 830
    iput p5, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellHSpan:I

    .line 831
    iput p6, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_0

    .line 833
    :cond_3
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mAllowLongPress:Z

    return v0
.end method

.method clearChildrenCache()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    .line 531
    .local v0, layout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 533
    return-void
.end method

.method public doFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 163
    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->setAllowLongPress(Z)V

    .line 164
    const v1, 0x7f07005e

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;

    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDragger:Lcom/logitech/harmonylink/view/widget/dragdrop/DragController;

    .line 165
    const v1, 0x7f07005f

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    .line 167
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->setFocusable(Z)V

    .line 168
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->setClickable(Z)V

    .line 169
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->setLongClickable(Z)V

    .line 170
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    invoke-virtual {v1, p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 172
    const v1, 0x7f070043

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;

    .line 173
    .local v0, deleteZone:Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;
    if-eqz v0, :cond_0

    .line 174
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->setEnabled(Z)V

    .line 175
    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->setLauncher(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)V

    .line 176
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDragger:Lcom/logitech/harmonylink/view/widget/dragdrop/DragController;

    check-cast v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->setDragController(Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;)V

    .line 178
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDragger:Lcom/logitech/harmonylink/view/widget/dragdrop/DragController;

    new-instance v2, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$1;

    invoke-direct {v2, p0, v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$1;-><init>(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;)V

    invoke-interface {v1, v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragController;->setDragListener(Lcom/logitech/harmonylink/view/widget/dragdrop/DragController$DragListener;)V

    .line 193
    :cond_0
    return-void
.end method

.method enableChildrenCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 521
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    .line 522
    .local v0, layout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;
    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 523
    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 525
    return-void
.end method

.method public estimateDropLocation(Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;IIIILjava/lang/Object;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 11
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"
    .parameter "recycle"

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getCurrentDropLayout()Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    move-result-object v6

    .line 599
    .local v6, layout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;
    iget-object v8, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDragInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    .line 600
    .local v8, cellInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;
    if-nez v8, :cond_0

    const/4 v0, 0x1

    move v3, v0

    .line 601
    .local v3, spanX:I
    :goto_0
    if-nez v8, :cond_1

    const/4 v0, 0x1

    move v4, v0

    .line 602
    .local v4, spanY:I
    :goto_1
    if-nez v8, :cond_2

    const/4 v0, 0x0

    move-object v5, v0

    .line 604
    .local v5, ignoreView:Landroid/view/View;
    :goto_2
    if-eqz p7, :cond_3

    move-object/from16 v10, p7

    .line 607
    .local v10, location:Landroid/graphics/Rect;
    :goto_3
    sub-int v1, p2, p4

    sub-int v2, p3, p5

    iget-object v7, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTempCell:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->estimateDropCell(IIIILandroid/view/View;Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;[I)[I

    move-result-object v9

    .line 610
    .local v9, dropCell:[I
    if-nez v9, :cond_4

    .line 611
    const/4 v0, 0x0

    .line 622
    :goto_4
    return-object v0

    .line 600
    .end local v3           #spanX:I
    .end local v4           #spanY:I
    .end local v5           #ignoreView:Landroid/view/View;
    .end local v9           #dropCell:[I
    .end local v10           #location:Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {v8}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->getSpanX()I

    move-result v0

    move v3, v0

    goto :goto_0

    .line 601
    .restart local v3       #spanX:I
    :cond_1
    invoke-virtual {v8}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->getSpanY()I

    move-result v0

    move v4, v0

    goto :goto_1

    .line 602
    .restart local v4       #spanY:I
    :cond_2
    invoke-virtual {v8}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->getCell()Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    .line 604
    .restart local v5       #ignoreView:Landroid/view/View;
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v0

    goto :goto_3

    .line 614
    .restart local v9       #dropCell:[I
    .restart local v10       #location:Landroid/graphics/Rect;
    :cond_4
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTempEstimate:[I

    invoke-virtual {v6, v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->cellToPoint(II[I)V

    .line 615
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTempEstimate:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 616
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTempEstimate:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 618
    const/4 v0, 0x0

    aget v0, v9, v0

    add-int/2addr v0, v3

    const/4 v1, 0x1

    aget v1, v9, v1

    add-int/2addr v1, v4

    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTempEstimate:[I

    invoke-virtual {v6, v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->cellToPoint(II[I)V

    .line 619
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTempEstimate:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 620
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTempEstimate:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    move-object v0, v10

    .line 622
    goto :goto_4
.end method

.method public getAddItemCellInfo()Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mAddItemCellInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    return-object v0
.end method

.method getCurrentScreen()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCurrentScreen:I

    return v0
.end method

.method public getCurrentScreenView()Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    return-object v0
.end method

.method public getModel()Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mLayoutModel:Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;

    return-object v0
.end method

.method public loadItem(Lcom/logitech/harmonylink/ui/common/BaseActivity;Lcom/logitech/harmonylink/harmony/Dom;)V
    .locals 1
    .parameter "parentActivity"
    .parameter "dom"

    .prologue
    .line 235
    sget-object v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mLayoutModel:Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;

    invoke-virtual {v0, p1, p0, p2}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->loadUserItems(Lcom/logitech/harmonylink/ui/common/BaseActivity;Lcom/logitech/harmonylink/context/view/UserDefinedPageView;Lcom/logitech/harmonylink/harmony/Dom;)V

    .line 236
    return-void
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 867
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mLocked:Z

    .line 868
    return-void
.end method

.method public onCreateDialog(Lcom/logitech/harmonylink/ui/common/BaseActivity;I)Landroid/app/Dialog;
    .locals 2
    .parameter "activity"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 1151
    packed-switch p2, :pswitch_data_0

    .line 1161
    invoke-virtual {p1, p2}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1153
    :pswitch_0
    new-instance v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;

    invoke-direct {v0, p0, v1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;-><init>(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;Lcom/logitech/harmonylink/context/view/UserDefinedPageView$1;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDevicePicker:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;

    .line 1154
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDevicePicker:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1156
    :pswitch_1
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDevicePicker:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->createDeviceCommandPickerDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1158
    :pswitch_2
    new-instance v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ResetDefaultPicker;

    invoke-direct {v0, p0, v1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ResetDefaultPicker;-><init>(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;Lcom/logitech/harmonylink/context/view/UserDefinedPageView$1;)V

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ResetDefaultPicker;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDragEnter(Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->clearVacantCache()V

    .line 637
    return-void
.end method

.method public onDragExit(Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->clearVacantCache()V

    .line 642
    return-void
.end method

.method public onDragOver(Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 646
    return-void
.end method

.method public onDrop(Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;IIIILjava/lang/Object;)V
    .locals 27
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 649
    invoke-direct/range {p0 .. p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getCurrentDropLayout()Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    move-result-object v15

    .line 650
    .local v15, cellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_1

    .line 651
    sub-int v5, p2, p4

    sub-int v6, p3, p5

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move-object/from16 v3, p6

    move-object v4, v15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->onDropExternal(IILjava/lang/Object;Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;)V

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDragInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDragInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->getCell()Landroid/view/View;

    move-result-object v14

    .line 656
    .local v14, cell:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCurrentScreen:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDragInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->getScreen()I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDragInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->getScreen()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    .line 658
    .local v26, originalCellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;
    move-object/from16 v0, v26

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->removeView(Landroid/view/View;)V

    .line 659
    invoke-virtual {v15, v14}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->addView(Landroid/view/View;)V

    .line 661
    .end local v26           #originalCellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;
    :cond_2
    const/16 v23, 0x0

    .line 663
    .local v23, cellPeer:Landroid/view/View;
    invoke-virtual {v15}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getLeft()I

    move-result v5

    invoke-virtual {v15}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    add-int p4, p4, v5

    .line 664
    invoke-virtual {v15}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getTop()I

    move-result v5

    invoke-virtual {v15}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    add-int p5, p5, v5

    .line 666
    sub-int v5, p2, p4

    sub-int v6, p3, p5

    invoke-virtual {v15, v14, v5, v6}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->onSwapChild(Landroid/view/View;II)Landroid/view/View;

    move-result-object v23

    if-eqz v23, :cond_3

    .line 667
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;

    .line 668
    .local v6, info:Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;

    .line 669
    .local v24, lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-wide/16 v7, -0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCurrentScreen:I

    move v9, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellX:I

    move v10, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellY:I

    move v11, v0

    invoke-static/range {v5 .. v11}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->moveItemInDatabase(Landroid/content/Context;Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;JIII)V

    .line 672
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;

    .line 673
    .local v8, infoPeer:Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;

    .line 674
    .local v25, lpPeer:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-wide/16 v9, -0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCurrentScreen:I

    move v11, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellX:I

    move v12, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellY:I

    move v13, v0

    invoke-static/range {v7 .. v13}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->moveItemInDatabase(Landroid/content/Context;Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;JIII)V

    goto/16 :goto_0

    .line 678
    .end local v6           #info:Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;
    .end local v8           #infoPeer:Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;
    .end local v24           #lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    .end local v25           #lpPeer:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    :cond_3
    sub-int v10, p2, p4

    sub-int v11, p3, p5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDragInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->getSpanX()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDragInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->getSpanY()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTargetCell:[I

    move-object/from16 v16, v0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v16}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->estimateDropCell(IIIILandroid/view/View;Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;[I)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTargetCell:[I

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTargetCell:[I

    move-object v5, v0

    invoke-virtual {v15, v14, v5}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->onDropChild(Landroid/view/View;[I)V

    .line 683
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;

    .line 684
    .restart local v6       #info:Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;

    .line 685
    .restart local v24       #lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getContext()Landroid/content/Context;

    move-result-object v16

    const-wide/16 v18, -0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCurrentScreen:I

    move/from16 v20, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellX:I

    move/from16 v21, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellY:I

    move/from16 v22, v0

    move-object/from16 v17, v6

    invoke-static/range {v16 .. v22}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->moveItemInDatabase(Landroid/content/Context;Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;JIII)V

    goto/16 :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 3
    .parameter "target"
    .parameter "success"

    .prologue
    .line 741
    if-eqz p2, :cond_1

    .line 742
    if-eq p1, p0, :cond_0

    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDragInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    if-eqz v2, :cond_0

    .line 744
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    .line 745
    .local v0, cellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDragInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->getCell()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->removeView(Landroid/view/View;)V

    .line 746
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDragInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->getCell()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 747
    .local v1, tag:Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getModel()Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;

    move-result-object v2

    check-cast v1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;

    .end local v1           #tag:Ljava/lang/Object;
    invoke-virtual {v2, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->removeDesktopItem(Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;)V

    .line 757
    .end local v0           #cellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDragInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    .line 758
    return-void

    .line 751
    :cond_1
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDragInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    if-eqz v2, :cond_0

    .line 752
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDragInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->getScreen()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    .line 753
    .restart local v0       #cellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDragInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->getCell()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->onDropAborted(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 157
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->doFinishInflate()V

    .line 159
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 424
    iget-boolean v9, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mLocked:Z

    if-eqz v9, :cond_0

    move v9, v11

    .line 512
    :goto_0
    return v9

    .line 439
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 440
    .local v0, action:I
    const/4 v9, 0x2

    if-ne v0, v9, :cond_1

    iget v9, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTouchState:I

    if-eqz v9, :cond_1

    move v9, v11

    .line 441
    goto :goto_0

    .line 444
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 445
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 447
    .local v6, y:F
    packed-switch v0, :pswitch_data_0

    .line 512
    :cond_2
    :goto_1
    iget v9, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTouchState:I

    if-eqz v9, :cond_6

    move v9, v11

    goto :goto_0

    .line 458
    :pswitch_0
    iget v9, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mLastMotionX:F

    sub-float v9, v3, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v4, v9

    .line 459
    .local v4, xDiff:I
    iget v9, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mLastMotionY:F

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v7, v9

    .line 461
    .local v7, yDiff:I
    iget v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTouchSlop:I

    .line 462
    .local v2, touchSlop:I
    if-le v4, v2, :cond_4

    move v5, v11

    .line 463
    .local v5, xMoved:Z
    :goto_2
    if-le v7, v2, :cond_5

    move v8, v11

    .line 465
    .local v8, yMoved:Z
    :goto_3
    if-nez v5, :cond_3

    if-eqz v8, :cond_2

    .line 473
    :cond_3
    iget-boolean v9, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mAllowLongPress:Z

    if-eqz v9, :cond_2

    .line 474
    iput-boolean v10, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mAllowLongPress:Z

    .line 478
    iget v9, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCurrentScreen:I

    invoke-virtual {p0, v9}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 479
    .local v1, currentScreen:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->cancelLongPress()V

    goto :goto_1

    .end local v1           #currentScreen:Landroid/view/View;
    .end local v5           #xMoved:Z
    .end local v8           #yMoved:Z
    :cond_4
    move v5, v10

    .line 462
    goto :goto_2

    .restart local v5       #xMoved:Z
    :cond_5
    move v8, v10

    .line 463
    goto :goto_3

    .line 486
    .end local v2           #touchSlop:I
    .end local v4           #xDiff:I
    .end local v5           #xMoved:Z
    .end local v7           #yDiff:I
    :pswitch_1
    iput v3, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mLastMotionX:F

    .line 487
    iput v6, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mLastMotionY:F

    .line 488
    iput-boolean v11, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mAllowLongPress:Z

    .line 496
    iput v10, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTouchState:I

    goto :goto_1

    .line 502
    :pswitch_2
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->clearChildrenCache()V

    .line 503
    iput v10, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mTouchState:I

    .line 504
    iput-boolean v10, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mAllowLongPress:Z

    goto :goto_1

    :cond_6
    move v9, v10

    .line 512
    goto :goto_0

    .line 447
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onItemsLoaded()V
    .locals 0

    .prologue
    .line 1104
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 336
    instance-of v2, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    if-nez v2, :cond_0

    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .line 342
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    .line 345
    .local v0, cellInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;
    if-nez v0, :cond_1

    move v2, v4

    .line 384
    :goto_0
    return v2

    .line 349
    :cond_1
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->allowLongPress()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 350
    invoke-virtual {v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->getCell()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_5

    .line 352
    iget-boolean v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDesktopLocked:Z

    if-eqz v2, :cond_3

    .line 354
    invoke-virtual {v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 355
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mParentActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    const-class v3, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    .local v1, openActivityIntent:Landroid/content/Intent;
    const-string v2, "launchPicker"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 357
    const-string v2, "cellX"

    invoke-virtual {v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->getCellX()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    const-string v2, "cellY"

    invoke-virtual {v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->getCellY()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mParentActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    invoke-virtual {v2, v1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .end local v1           #openActivityIntent:Landroid/content/Intent;
    :cond_2
    move v2, v4

    .line 363
    goto :goto_0

    .line 367
    :cond_3
    invoke-virtual {v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->isValid()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 369
    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->setAllowLongPress(Z)V

    .line 370
    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->showAddDialog(Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;)V

    :cond_4
    :goto_1
    move v2, v4

    .line 384
    goto :goto_0

    .line 375
    :cond_5
    iget-boolean v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDesktopLocked:Z

    if-eqz v2, :cond_6

    move v2, v3

    .line 376
    goto :goto_0

    .line 380
    :cond_6
    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->startDrag(Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;)V

    goto :goto_1
.end method

.method public onPageChange(IILandroid/view/View;)V
    .locals 0
    .parameter "pageFrom"
    .parameter "pageTo"
    .parameter "pageView"

    .prologue
    .line 1135
    return-void
.end method

.method public refresh(Lcom/logitech/harmonylink/ui/common/BaseActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 230
    sget-object v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mLayoutModel:Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;

    invoke-virtual {v0, p1, p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->rollback(Lcom/logitech/harmonylink/ui/common/BaseActivity;Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)V

    .line 231
    return-void
.end method

.method public resetToDefault()V
    .locals 3

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getModel()Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->deleteAllItemsFromDatabase(Landroid/content/Context;Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;)V

    .line 266
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getCurrentDropLayout()Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->invalidate()V

    .line 267
    return-void
.end method

.method public scrollLeft()V
    .locals 0

    .prologue
    .line 845
    return-void
.end method

.method public scrollRight()V
    .locals 0

    .prologue
    .line 850
    return-void
.end method

.method public setAllowLongPress(Z)V
    .locals 0
    .parameter "allowLongPress"

    .prologue
    .line 311
    iput-boolean p1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mAllowLongPress:Z

    .line 312
    return-void
.end method

.method public setDragger(Lcom/logitech/harmonylink/view/widget/dragdrop/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 839
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDragger:Lcom/logitech/harmonylink/view/widget/dragdrop/DragController;

    .line 840
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 4
    .parameter "l"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 323
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 324
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getChildCount()I

    move-result v0

    .line 326
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 327
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    invoke-virtual {v2, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    :cond_0
    return-void
.end method

.method public setParentActivity(Lcom/logitech/harmonylink/ui/common/BaseActivity;)V
    .locals 0
    .parameter "parentActivity"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mParentActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    .line 227
    return-void
.end method

.method public showAddDialog(Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;)V
    .locals 2
    .parameter "cellInfo"

    .prologue
    .line 388
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mAddItemCellInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    .line 389
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mParentActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->showDialog(I)V

    .line 390
    return-void
.end method

.method startDrag(Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;)V
    .locals 5
    .parameter "cellInfo"

    .prologue
    .line 402
    invoke-virtual {p1}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->getCell()Landroid/view/View;

    move-result-object v0

    .line 410
    .local v0, child:Landroid/view/View;
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDragInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    .line 411
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDragInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    iget v3, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCurrentScreen:I

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->setScreen(I)I

    .line 413
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mCellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    .line 415
    .local v1, current:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;
    invoke-virtual {v1, v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->onDragChild(Landroid/view/View;)V

    .line 416
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDragger:Lcom/logitech/harmonylink/view/widget/dragdrop/DragController;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v0, p0, v3, v4}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragController;->startDrag(Landroid/view/View;Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;Ljava/lang/Object;I)V

    .line 417
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->invalidate()V

    .line 418
    return-void
.end method

.method public testAddButton(Lcom/logitech/harmonylink/harmony/Dom;)V
    .locals 7
    .parameter "dom"

    .prologue
    const/4 v3, 0x0

    .line 243
    const/4 v6, 0x0

    .line 244
    .local v6, tvDeviceID:I
    const-string v1, "VolumeUp"

    .line 246
    .local v1, command:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IR_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, action:Ljava/lang/String;
    new-instance v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;

    move-object v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 249
    .local v0, buttonDef:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;
    invoke-virtual {p0, v0, p1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->addButton(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;Lcom/logitech/harmonylink/harmony/Dom;)V

    .line 252
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 858
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mLocked:Z

    .line 859
    return-void
.end method
