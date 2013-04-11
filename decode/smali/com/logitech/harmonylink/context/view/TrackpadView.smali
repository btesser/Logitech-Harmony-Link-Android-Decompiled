.class public Lcom/logitech/harmonylink/context/view/TrackpadView;
.super Landroid/widget/LinearLayout;
.source "TrackpadView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/widget/TabHost$TabContentFactory;
.implements Lcom/logitech/harmonylink/context/ITrackPadSensitivityChangedEvent;


# static fields
.field public static final TRACKPAD_TAB_TAG:Ljava/lang/String; = "tab_trackpad"


# instance fields
.field DEBUG_TAG:Ljava/lang/String;

.field canSendRequest:Z

.field connected:Z

.field private mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

.field private mDom:Lcom/logitech/harmonylink/harmony/Dom;

.field mGestureDetector:Landroid/view/GestureDetector;

.field mLastX:F

.field mLastY:F

.field private mNavBarTabHost:Landroid/view/ViewGroup;

.field private mParentViewGroup:Landroid/view/ViewGroup;

.field private mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

.field mXscale:D

.field mYscale:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/logitech/harmonylink/HarmonyRemoteApplication;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "context"
    .parameter "application"
    .parameter "parentViewGroup"
    .parameter "navBarTabHost"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->connected:Z

    .line 43
    iput-boolean v4, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->canSendRequest:Z

    .line 44
    const-string v2, "Trackpad"

    iput-object v2, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->DEBUG_TAG:Ljava/lang/String;

    .line 55
    invoke-virtual {p2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getRemoteConnect()Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    .line 56
    invoke-virtual {p2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v2

    iput-object v2, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 57
    iput-object p2, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 58
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v2, p0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->addTrackPadObservers(Lcom/logitech/harmonylink/context/ITrackPadSensitivityChangedEvent;)V

    .line 59
    invoke-static {p1}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v0

    .line 61
    .local v0, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const-string v2, "xscale"

    const-string v3, "3.0"

    invoke-virtual {v0, v2, v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getStringWithName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mXscale:D

    .line 63
    const-string v2, "yscale"

    const-string v3, "3.0"

    invoke-virtual {v0, v2, v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getStringWithName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mYscale:D

    .line 79
    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/view/TrackpadView;->setFocusable(Z)V

    .line 80
    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/view/TrackpadView;->setFocusableInTouchMode(Z)V

    .line 81
    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/view/TrackpadView;->setClickable(Z)V

    .line 82
    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/view/TrackpadView;->setEnabled(Z)V

    .line 84
    const v2, 0x7f030057

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 85
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1, v5, v5}, Lcom/logitech/harmonylink/context/view/TrackpadView;->addView(Landroid/view/View;II)V

    .line 87
    const-string v2, "tab_trackpad"

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/view/TrackpadView;->setTag(Ljava/lang/Object;)V

    .line 93
    iput-object p2, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 94
    iput-object p3, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mParentViewGroup:Landroid/view/ViewGroup;

    .line 95
    iput-object p4, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mNavBarTabHost:Landroid/view/ViewGroup;

    .line 96
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 97
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/view/TrackpadView;->addTrackpadViewHandler()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/context/view/TrackpadView;)Lcom/logitech/harmonylink/harmony/Dom;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    return-object v0
.end method

.method private addTrackpadViewHandler()V
    .locals 15

    .prologue
    const v14, 0x7f07012e

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 102
    const-string v7, "Revue 2.0"

    iget-object v8, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v8}, Lcom/logitech/harmonylink/harmony/Dom;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v8

    invoke-virtual {v8}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 103
    .local v3, isKa2x:Z
    const/4 v7, 0x4

    new-array v1, v7, [Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    .line 105
    .local v1, buttonKeyMapArray:[Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    if-eqz v3, :cond_0

    .line 106
    new-instance v7, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    iget-object v8, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    const-string v9, "GTVZoomIn"

    invoke-virtual {v8, v9}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v8

    invoke-direct {v7, v14, v8}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v7, v1, v10

    .line 107
    new-instance v7, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v8, 0x7f070130

    iget-object v9, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    const-string v10, "GTVZoomOut"

    invoke-virtual {v9, v10}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v7, v1, v11

    .line 108
    new-instance v7, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v8, 0x7f070132

    iget-object v9, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    const-string v10, "PageUp"

    invoke-virtual {v9, v10}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v7, v1, v12

    .line 109
    new-instance v7, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v8, 0x7f070134

    iget-object v9, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    const-string v10, "PageDown"

    invoke-virtual {v9, v10}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v7, v1, v13

    .line 117
    :goto_0
    move-object v0, v1

    .local v0, arr$:[Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v4, v0, v2

    .line 119
    .local v4, keyMap:Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    iget v7, v4, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->mButtonID:I

    invoke-virtual {p0, v7}, Lcom/logitech/harmonylink/context/view/TrackpadView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 125
    .local v6, view:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 126
    new-instance v7, Lcom/logitech/harmonylink/context/view/TrackpadView$1;

    invoke-direct {v7, p0, v4}, Lcom/logitech/harmonylink/context/view/TrackpadView$1;-><init>(Lcom/logitech/harmonylink/context/view/TrackpadView;Lcom/logitech/harmonylink/harmony/KeycodeMapping;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 117
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    .end local v0           #arr$:[Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    .end local v2           #i$:I
    .end local v4           #keyMap:Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    .end local v5           #len$:I
    .end local v6           #view:Landroid/view/View;
    :cond_0
    new-instance v7, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    sget-object v8, Lcom/logitech/harmonylink/harmony/Command;->ZOOM_IN:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v7, v14, v8}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v7, v1, v10

    .line 112
    new-instance v7, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v8, 0x7f070130

    sget-object v9, Lcom/logitech/harmonylink/harmony/Command;->ZOOM_OUT:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v7, v8, v9}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v7, v1, v11

    .line 113
    new-instance v7, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v8, 0x7f070132

    sget-object v9, Lcom/logitech/harmonylink/harmony/Command;->DPAD_UP:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v7, v8, v9}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v7, v1, v12

    .line 114
    new-instance v7, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v8, 0x7f070134

    sget-object v9, Lcom/logitech/harmonylink/harmony/Command;->DPAD_DOWN:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v7, v8, v9}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v7, v1, v13

    goto :goto_0

    .line 146
    .restart local v0       #arr$:[Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    .restart local v2       #i$:I
    .restart local v4       #keyMap:Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    .restart local v5       #len$:I
    .restart local v6       #view:Landroid/view/View;
    :cond_1
    new-instance v7, Lcom/logitech/harmonylink/context/view/TrackpadView$2;

    invoke-direct {v7, p0, v4}, Lcom/logitech/harmonylink/context/view/TrackpadView$2;-><init>(Lcom/logitech/harmonylink/context/view/TrackpadView;Lcom/logitech/harmonylink/harmony/KeycodeMapping;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 163
    .end local v4           #keyMap:Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    .end local v6           #view:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private writeClick()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->writeMouseclick()Z

    move-result v0

    return v0
.end method

.method private writeMouse(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    invoke-virtual {v0, p1, p2}, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->writeMouse(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 0
    .parameter "tagName"

    .prologue
    .line 187
    return-object p0
.end method

.method public installTouchDelegate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 174
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x190

    const/16 v3, 0x320

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 177
    .local v1, rectRoot:Landroid/graphics/Rect;
    new-instance v0, Landroid/view/TouchDelegate;

    invoke-direct {v0, v1, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 179
    .local v0, delegate:Landroid/view/TouchDelegate;
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mParentViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 180
    return-void
.end method

.method public isCurrentTab()Z
    .locals 2

    .prologue
    .line 167
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mNavBarTabHost:Landroid/view/ViewGroup;

    check-cast v1, Lcom/logitech/harmonylink/view/widget/CustomTabView;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p0, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 168
    .local v0, isCurrentTab:Z
    :goto_0
    return v0

    .line 167
    .end local v0           #isCurrentTab:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 271
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public onSensitivtyAdjusted(DD)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 291
    iput-wide p1, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mXscale:D

    .line 292
    iput-wide p3, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mYscale:D

    .line 294
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 282
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/view/TrackpadView;->writeClick()Z

    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mLastX:F

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mLastY:F

    .line 229
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/TrackpadView;->installTouchDelegate()V

    .line 252
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 254
    return v7

    .line 233
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mLastX:F

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 234
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mLastY:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 237
    .local v1, y:I
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 238
    :cond_2
    int-to-double v2, v0

    iget-wide v4, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mXscale:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-double v3, v1

    iget-wide v5, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mYscale:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/logitech/harmonylink/context/view/TrackpadView;->writeMouse(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mLastX:F

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mLastY:F

    .line 245
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/TrackpadView;->uninstallTouchDelegate()V

    goto :goto_0
.end method

.method public uninstallTouchDelegate()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/TrackpadView;->mParentViewGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 184
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method
