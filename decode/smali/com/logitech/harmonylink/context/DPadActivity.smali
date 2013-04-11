.class public Lcom/logitech/harmonylink/context/DPadActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "DPadActivity.java"


# instance fields
.field private final D_PEEKABOO_SHAPES:[[[I

.field private final SHAPED_BUTTON_ARRAY:[I

.field buttonKeyMapArray:[Lcom/logitech/harmonylink/harmony/KeycodeMapping;

.field mDom:Lcom/logitech/harmonylink/harmony/Dom;

.field mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 17
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/DPadActivity;->SHAPED_BUTTON_ARRAY:[I

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    new-instance v1, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v2, 0x7f070051

    sget-object v3, Lcom/logitech/harmonylink/harmony/Command;->DPAD_UP:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v1, v2, v3}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v2, 0x7f070052

    sget-object v3, Lcom/logitech/harmonylink/harmony/Command;->DPAD_RIGHT:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v1, v2, v3}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v1, v0, v6

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

    iput-object v0, p0, Lcom/logitech/harmonylink/context/DPadActivity;->buttonKeyMapArray:[Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [[[I

    new-array v1, v8, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_6

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_7

    aput-object v2, v1, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_8

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_9

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_a

    aput-object v2, v1, v6

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

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_e

    aput-object v2, v1, v6

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

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_12

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_13

    aput-object v2, v1, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_14

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    iput-object v0, p0, Lcom/logitech/harmonylink/context/DPadActivity;->D_PEEKABOO_SHAPES:[[[I

    return-void

    .line 21
    nop

    :array_0
    .array-data 0x4
        0x51t 0x0t 0x7t 0x7ft
        0x52t 0x0t 0x7t 0x7ft
        0x53t 0x0t 0x7t 0x7ft
        0x50t 0x0t 0x7t 0x7ft
        0x54t 0x0t 0x7t 0x7ft
    .end array-data

    .line 30
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


# virtual methods
.method protected completeLoading()V
    .locals 5

    .prologue
    .line 79
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->completeLoading()V

    .line 81
    const v3, 0x7f03001c

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/context/DPadActivity;->setContentView(I)V

    .line 84
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    iget-object v3, p0, Lcom/logitech/harmonylink/context/DPadActivity;->SHAPED_BUTTON_ARRAY:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 86
    const v3, 0x7f07004f

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/context/DPadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/logitech/harmonylink/context/DPadActivity;->SHAPED_BUTTON_ARRAY:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/view/widget/ShapedImageButton;

    .line 89
    .local v0, button:Lcom/logitech/harmonylink/view/widget/ShapedImageButton;
    iget-object v3, p0, Lcom/logitech/harmonylink/context/DPadActivity;->D_PEEKABOO_SHAPES:[[[I

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Lcom/logitech/harmonylink/view/widget/ShapedImageButton;->setButtonRegion([[I)V

    .line 90
    iget-object v3, p0, Lcom/logitech/harmonylink/context/DPadActivity;->buttonKeyMapArray:[Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    aget-object v3, v3, v2

    iget-object v1, v3, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->mCommand:Lcom/logitech/harmonylink/harmony/Command;

    .line 91
    .local v1, c:Lcom/logitech/harmonylink/harmony/Command;
    new-instance v3, Lcom/logitech/harmonylink/context/DPadActivity$1;

    invoke-direct {v3, p0, v1}, Lcom/logitech/harmonylink/context/DPadActivity$1;-><init>(Lcom/logitech/harmonylink/context/DPadActivity;Lcom/logitech/harmonylink/harmony/Command;)V

    invoke-virtual {v0, v3}, Lcom/logitech/harmonylink/view/widget/ShapedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v0           #button:Lcom/logitech/harmonylink/view/widget/ShapedImageButton;
    .end local v1           #c:Lcom/logitech/harmonylink/harmony/Command;
    :cond_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/DPadActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getRemoteConnect()Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/logitech/harmonylink/context/DPadActivity;->mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    .line 101
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/DPadActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v3

    iput-object v3, p0, Lcom/logitech/harmonylink/context/DPadActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 128
    return-void
.end method

.method protected displayLoading()V
    .locals 1

    .prologue
    .line 74
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/DPadActivity;->setContentView(I)V

    .line 75
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/DPadActivity;->requestWindowFeature(I)Z

    .line 49
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/DPadActivity;->displayLoadingIfNeeded()V

    .line 51
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/DPadActivity;->completeLoading()V

    .line 52
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 63
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    sget-object v0, Lcom/logitech/harmonylink/context/DPadActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->cancelSetup()V

    .line 68
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onResume()V

    .line 59
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/DPadActivity;->canActivityResume()V

    .line 60
    return-void
.end method
