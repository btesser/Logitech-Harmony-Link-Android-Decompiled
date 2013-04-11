.class public Lcom/logitech/harmonylink/context/MouseSensitivityActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "MouseSensitivityActivity.java"


# static fields
.field private static SCALE_FACTOR:D


# instance fields
.field mLastX:F

.field mLastY:F

.field mMaxVal:D

.field mMinVal:D

.field private mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

.field mSeekbar:Landroid/widget/SeekBar;

.field mcancelBtn:Landroid/widget/Button;

.field msaveBtn:Landroid/widget/Button;

.field mscale:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-wide/high16 v0, 0x3ff8

    sput-wide v0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->SCALE_FACTOR:D

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x3ff0

    .line 15
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 26
    iput-wide v2, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mMinVal:D

    .line 27
    const-wide/high16 v0, 0x4014

    iput-wide v0, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mMaxVal:D

    .line 29
    iput-wide v2, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mscale:D

    return-void
.end method

.method static synthetic access$000()Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    return-object v0
.end method

.method private writeMouse(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    invoke-virtual {v0, p1, p2}, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->writeMouse(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->requestWindowFeature(I)Z

    .line 38
    const v1, 0x7f03003a

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->setContentView(I)V

    .line 39
    const v1, 0x7f0700be

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->msaveBtn:Landroid/widget/Button;

    .line 40
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getRemoteConnect()Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    .line 42
    const v1, 0x7f0700bd

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mSeekbar:Landroid/widget/SeekBar;

    .line 46
    iget-object v1, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->msaveBtn:Landroid/widget/Button;

    new-instance v2, Lcom/logitech/harmonylink/context/MouseSensitivityActivity$1;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/context/MouseSensitivityActivity$1;-><init>(Lcom/logitech/harmonylink/context/MouseSensitivityActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-static {p0}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v0

    .line 66
    .local v0, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const-string v1, "xscale"

    const-string v2, "3.0"

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getStringWithName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mscale:D

    .line 68
    iget-object v1, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mSeekbar:Landroid/widget/SeekBar;

    iget-wide v2, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mscale:D

    const-wide/high16 v4, 0x3ff0

    sub-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 69
    iget-object v1, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mSeekbar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/logitech/harmonylink/context/MouseSensitivityActivity$2;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/context/MouseSensitivityActivity$2;-><init>(Lcom/logitech/harmonylink/context/MouseSensitivityActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 89
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mLastX:F

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mLastY:F

    .line 121
    :cond_0
    :goto_0
    return v7

    .line 104
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mLastX:F

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 105
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mLastY:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 108
    .local v1, y:I
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 109
    :cond_2
    int-to-double v2, v0

    iget-wide v4, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mscale:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-double v3, v1

    iget-wide v5, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mscale:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->writeMouse(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mLastX:F

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mLastY:F

    .line 116
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v7, :cond_0

    goto :goto_0
.end method
