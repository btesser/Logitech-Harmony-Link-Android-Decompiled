.class public Lcom/logitech/harmonylink/context/view/FixItView;
.super Landroid/view/View;
.source "FixItView.java"


# static fields
.field private static final INPUT_DISCRETE:Ljava/lang/String; = "HDMI"

.field private static final INPUT_DOWN:Ljava/lang/String; = "InputDown"

.field private static final INPUT_ENTER:Ljava/lang/String; = "InputEnter"

.field private static final INPUT_MENU:Ljava/lang/String; = "InputMenu"

.field private static final INPUT_TOGGLE:Ljava/lang/String; = "InputToggle"

.field private static final INPUT_UP:Ljava/lang/String; = "InputUp"

.field protected static final LOG_TAG:Ljava/lang/String; = null

.field private static final POWER_OFF:Ljava/lang/String; = "PowerOff"

.field private static final POWER_ON:Ljava/lang/String; = "PowerOn"

.field private static final POWER_TOGGLE:Ljava/lang/String; = "PowerToggle"


# instance fields
.field private hideInputBtn:Z

.field mButtonPressedCallback:Lcom/logitech/harmonylink/view/widget/IButtonPressedObserver;

.field mDom:Lcom/logitech/harmonylink/harmony/Dom;

.field private mOpenApiRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

.field private mPreviousSection:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/logitech/harmonylink/context/view/FixItView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/context/view/FixItView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/FixItView;->mPreviousSection:Landroid/view/ViewGroup;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/context/view/FixItView;->hideInputBtn:Z

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/FixItView;->mPreviousSection:Landroid/view/ViewGroup;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/context/view/FixItView;->hideInputBtn:Z

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/logitech/harmonylink/view/widget/IButtonPressedObserver;)V
    .locals 1
    .parameter "context"
    .parameter "buttonPressedCallback"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/FixItView;->mPreviousSection:Landroid/view/ViewGroup;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/context/view/FixItView;->hideInputBtn:Z

    .line 66
    iput-object p2, p0, Lcom/logitech/harmonylink/context/view/FixItView;->mButtonPressedCallback:Lcom/logitech/harmonylink/view/widget/IButtonPressedObserver;

    .line 67
    return-void
.end method

.method static synthetic access$002(Lcom/logitech/harmonylink/context/view/FixItView;Lcom/logitech/connect/client/transport/IOpenApiRequest;)Lcom/logitech/connect/client/transport/IOpenApiRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/FixItView;->mOpenApiRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized getFixItXml(Landroid/content/Context;Lcom/logitech/connect/ConnectClient;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "fixItContext"
    .parameter "connectClient"
    .parameter "vgrpParent"

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/FixItView;->mOpenApiRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    if-nez v0, :cond_0

    .line 85
    const-string v0, "vnd.logitech.harmony/vnd.logitech.fixit?get"

    const-string v1, ""

    new-instance v2, Lcom/logitech/harmonylink/context/view/FixItView$1;

    invoke-direct {v2, p0, p3, p1}, Lcom/logitech/harmonylink/context/view/FixItView$1;-><init>(Lcom/logitech/harmonylink/context/view/FixItView;Landroid/view/ViewGroup;Landroid/content/Context;)V

    invoke-virtual {p2, v0, v1, v2}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/FixItView;->mOpenApiRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hideInputButton(Z)V
    .locals 0
    .parameter "v"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/logitech/harmonylink/context/view/FixItView;->hideInputBtn:Z

    .line 79
    return-void
.end method

.method public inflateFixItView(Landroid/content/Context;Lcom/logitech/harmonylink/ui/common/BaseActivity;Landroid/view/ViewGroup;Lcom/logitech/harmonylink/harmony/Dom;)V
    .locals 21
    .parameter "fixItContext"
    .parameter "logiActivity"
    .parameter "vgrpParent"
    .parameter "dom"

    .prologue
    .line 344
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/context/view/FixItView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/FixItView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/logitech/harmonylink/harmony/Dom;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_0

    .line 347
    invoke-virtual/range {p2 .. p2}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual/range {p2 .. p2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/FixItView;->getFixItXml(Landroid/content/Context;Lcom/logitech/connect/ConnectClient;Landroid/view/ViewGroup;)V

    .line 442
    :goto_0
    return-void

    .line 351
    .restart local p2
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/FixItView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getFixitValues()Ljava/util/ArrayList;

    move-result-object v11

    .line 354
    .local v11, fixitarray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/harmony/Fixit;>;"
    new-instance v8, Landroid/widget/LinearLayout;

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 355
    .local v8, devicesLinearLayout:Landroid/widget/LinearLayout;
    const/16 v19, 0x1

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 356
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 357
    .local v13, inflater:Landroid/view/LayoutInflater;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/context/view/FixItView;->mPreviousSection:Landroid/view/ViewGroup;

    .line 359
    const-string v6, ""

    .line 360
    .local v6, deviceID:Ljava/lang/String;
    const/4 v5, 0x0

    .line 362
    .local v5, device:Lcom/logitech/harmonylink/harmony/Device;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/logitech/harmonylink/harmony/Fixit;

    .line 363
    .local v10, fixitValue:Lcom/logitech/harmonylink/harmony/Fixit;
    invoke-virtual {v10}, Lcom/logitech/harmonylink/harmony/Fixit;->getId()Ljava/lang/String;

    move-result-object v6

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/FixItView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/logitech/harmonylink/harmony/Dom;->getDevices()Lcom/logitech/harmonylink/harmony/Devices;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Devices;->getDevice(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Device;

    move-result-object v5

    .line 366
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/logitech/harmonylink/harmony/Device;->getDeviceTypeDisplayName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Lcom/logitech/harmonylink/harmony/Device;->getLabel()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 369
    .local v4, devType:Ljava/lang/String;
    const v19, 0x7f030028

    const/16 v20, 0x0

    move-object v0, v13

    move/from16 v1, v19

    move-object v2, v8

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 372
    .local v9, fixItSection:Landroid/view/ViewGroup;
    const v19, 0x7f070089

    move-object v0, v9

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 375
    .local v7, deviceTypeTextView:Landroid/widget/TextView;
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    const v19, 0x7f07008a

    move-object v0, v9

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup;

    .line 379
    .local v18, powerSection:Landroid/view/ViewGroup;
    invoke-virtual {v10}, Lcom/logitech/harmonylink/harmony/Fixit;->getPowerValue()Ljava/lang/String;

    move-result-object v19

    const-string v20, "on"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 381
    const v19, 0x7f030026

    move-object v0, v13

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 383
    const v19, 0x7f070084

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    .line 385
    .local v17, powerOnButton:Landroid/widget/Button;
    new-instance v19, Lcom/logitech/harmonylink/context/view/FixItView$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/FixItView$3;-><init>(Lcom/logitech/harmonylink/context/view/FixItView;Lcom/logitech/harmonylink/harmony/Fixit;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    .end local v17           #powerOnButton:Landroid/widget/Button;
    :cond_1
    :goto_2
    invoke-virtual {v10}, Lcom/logitech/harmonylink/harmony/Fixit;->getInput()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 415
    const v19, 0x7f07008b

    move-object v0, v9

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 417
    .local v15, inputSection:Landroid/view/ViewGroup;
    const v19, 0x7f030023

    move-object v0, v13

    move/from16 v1, v19

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 419
    const v19, 0x7f07007e

    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 421
    .local v14, inputButton:Landroid/widget/Button;
    invoke-virtual {v10}, Lcom/logitech/harmonylink/harmony/Fixit;->getInput()Ljava/lang/String;

    move-result-object v19

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 422
    new-instance v19, Lcom/logitech/harmonylink/context/view/FixItView$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/FixItView$5;-><init>(Lcom/logitech/harmonylink/context/view/FixItView;Lcom/logitech/harmonylink/harmony/Fixit;)V

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    .end local v14           #inputButton:Landroid/widget/Button;
    .end local v15           #inputSection:Landroid/view/ViewGroup;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/FixItView;->mPreviousSection:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/FixItView;->mPreviousSection:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const v20, 0x7f07008c

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 436
    :cond_3
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/context/view/FixItView;->mPreviousSection:Landroid/view/ViewGroup;

    .line 437
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 394
    :cond_4
    invoke-virtual {v10}, Lcom/logitech/harmonylink/harmony/Fixit;->getPowerValue()Ljava/lang/String;

    move-result-object v19

    const-string v20, "off"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 395
    const v19, 0x7f030026

    move-object v0, v13

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 397
    const v19, 0x7f070084

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    .line 399
    .restart local v17       #powerOnButton:Landroid/widget/Button;
    const/16 v19, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 400
    const v19, 0x7f070085

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    .line 402
    .local v16, powerOffButton:Landroid/widget/Button;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 403
    new-instance v19, Lcom/logitech/harmonylink/context/view/FixItView$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/FixItView$4;-><init>(Lcom/logitech/harmonylink/context/view/FixItView;Lcom/logitech/harmonylink/harmony/Fixit;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 440
    .end local v4           #devType:Ljava/lang/String;
    .end local v7           #deviceTypeTextView:Landroid/widget/TextView;
    .end local v9           #fixItSection:Landroid/view/ViewGroup;
    .end local v10           #fixitValue:Lcom/logitech/harmonylink/harmony/Fixit;
    .end local v16           #powerOffButton:Landroid/widget/Button;
    .end local v17           #powerOnButton:Landroid/widget/Button;
    .end local v18           #powerSection:Landroid/view/ViewGroup;
    :cond_5
    move-object/from16 v0, p3

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public parseButton(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 14
    .parameter "parser"
    .parameter "fixItContext"
    .parameter "fixItSection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    const-string v12, ""

    const-string v13, "reply"

    invoke-interface {p1, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, buttonReply:Ljava/lang/String;
    const-string v12, ""

    const-string v13, "type"

    invoke-interface {p1, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 227
    .local v11, type:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, buttonLabel:Ljava/lang/String;
    if-nez p3, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    const/4 v6, 0x0

    .line 235
    .local v6, helpButton:Landroid/view/View;
    iget-boolean v12, p0, Lcom/logitech/harmonylink/context/view/FixItView;->hideInputBtn:Z

    if-eqz v12, :cond_4

    .line 240
    const-string v12, "PowerOff"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "PowerToggle"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 241
    :cond_2
    const v12, 0x7f070085

    move-object/from16 v0, p3

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #helpButton:Landroid/view/View;
    check-cast v6, Landroid/widget/Button;

    .line 302
    .restart local v6       #helpButton:Landroid/view/View;
    :cond_3
    :goto_1
    invoke-virtual {v6, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 304
    move-object v5, v3

    .line 305
    .local v5, encodedCommand:Ljava/lang/String;
    const-string v12, "_"

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 307
    .local v9, parsedCommand:[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v9, v12

    const-string v13, "IR"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 309
    new-instance v4, Lcom/logitech/harmonylink/harmony/Command;

    const/4 v12, 0x2

    aget-object v12, v9, v12

    invoke-direct {v4, v12}, Lcom/logitech/harmonylink/harmony/Command;-><init>(Ljava/lang/String;)V

    .line 310
    .local v4, cmd:Lcom/logitech/harmonylink/harmony/Command;
    iget-object v12, p0, Lcom/logitech/harmonylink/context/view/FixItView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    const/4 v13, 0x1

    aget-object v13, v9, v13

    invoke-virtual {v12, v13}, Lcom/logitech/harmonylink/harmony/Dom;->getDevice(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Device;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/logitech/harmonylink/harmony/Command;->putDevice(Lcom/logitech/harmonylink/harmony/Device;)V

    .line 312
    new-instance v12, Lcom/logitech/harmonylink/context/view/FixItView$2;

    invoke-direct {v12, p0, v4}, Lcom/logitech/harmonylink/context/view/FixItView$2;-><init>(Lcom/logitech/harmonylink/context/view/FixItView;Lcom/logitech/harmonylink/harmony/Command;)V

    invoke-virtual {v6, v12}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 247
    .end local v4           #cmd:Lcom/logitech/harmonylink/harmony/Command;
    .end local v5           #encodedCommand:Ljava/lang/String;
    .end local v9           #parsedCommand:[Ljava/lang/String;
    :cond_4
    invoke-static/range {p2 .. p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 249
    .local v7, inflater:Landroid/view/LayoutInflater;
    const-string v12, "PowerOn"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 250
    const v12, 0x7f07008a

    move-object/from16 v0, p3

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 252
    .local v10, powerSection:Landroid/view/ViewGroup;
    const v12, 0x7f030026

    invoke-virtual {v7, v12, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 253
    const v12, 0x7f070084

    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #helpButton:Landroid/view/View;
    check-cast v6, Landroid/widget/Button;

    .line 266
    .end local v10           #powerSection:Landroid/view/ViewGroup;
    .restart local v6       #helpButton:Landroid/view/View;
    :cond_5
    :goto_2
    const-string v12, "HDMI"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 267
    const v12, 0x7f07008b

    move-object/from16 v0, p3

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 269
    .local v8, inputSection:Landroid/view/ViewGroup;
    const v12, 0x7f030023

    invoke-virtual {v7, v12, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 270
    const v12, 0x7f07007e

    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #helpButton:Landroid/view/View;
    check-cast v6, Landroid/widget/Button;

    .line 272
    .restart local v6       #helpButton:Landroid/view/View;
    move-object v0, v6

    check-cast v0, Landroid/widget/Button;

    move-object v7, v0

    .end local v7           #inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v7, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 254
    .end local v8           #inputSection:Landroid/view/ViewGroup;
    .restart local v7       #inflater:Landroid/view/LayoutInflater;
    :cond_6
    const-string v12, "PowerOff"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 255
    const v12, 0x7f07008a

    move-object/from16 v0, p3

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 257
    .restart local v10       #powerSection:Landroid/view/ViewGroup;
    const v12, 0x7f070085

    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #helpButton:Landroid/view/View;
    check-cast v6, Landroid/widget/Button;

    .line 258
    .restart local v6       #helpButton:Landroid/view/View;
    goto :goto_2

    .end local v10           #powerSection:Landroid/view/ViewGroup;
    :cond_7
    const-string v12, "PowerToggle"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 259
    const v12, 0x7f07008a

    move-object/from16 v0, p3

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 261
    .restart local v10       #powerSection:Landroid/view/ViewGroup;
    const v12, 0x7f030027

    invoke-virtual {v7, v12, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 262
    const v12, 0x7f070086

    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #helpButton:Landroid/view/View;
    check-cast v6, Landroid/widget/ImageButton;

    .restart local v6       #helpButton:Landroid/view/View;
    goto :goto_2

    .line 273
    .end local v10           #powerSection:Landroid/view/ViewGroup;
    :cond_8
    const-string v12, "InputToggle"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 274
    const v12, 0x7f07008b

    move-object/from16 v0, p3

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 276
    .restart local v8       #inputSection:Landroid/view/ViewGroup;
    const v12, 0x7f030025

    invoke-virtual {v7, v12, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 277
    const v12, 0x7f070083

    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #helpButton:Landroid/view/View;
    check-cast v6, Landroid/widget/Button;

    .line 279
    .restart local v6       #helpButton:Landroid/view/View;
    goto/16 :goto_1

    .end local v8           #inputSection:Landroid/view/ViewGroup;
    :cond_9
    const-string v12, "InputMenu"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 280
    const v12, 0x7f07008b

    move-object/from16 v0, p3

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 282
    .restart local v8       #inputSection:Landroid/view/ViewGroup;
    const v12, 0x7f030024

    invoke-virtual {v7, v12, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 283
    const v12, 0x7f07007f

    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #helpButton:Landroid/view/View;
    check-cast v6, Landroid/widget/Button;

    .line 284
    .restart local v6       #helpButton:Landroid/view/View;
    goto/16 :goto_1

    .end local v8           #inputSection:Landroid/view/ViewGroup;
    :cond_a
    const-string v12, "InputUp"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 285
    const v12, 0x7f07008b

    move-object/from16 v0, p3

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 287
    .restart local v8       #inputSection:Landroid/view/ViewGroup;
    const v12, 0x7f070080

    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #helpButton:Landroid/view/View;
    check-cast v6, Landroid/widget/ImageButton;

    .line 289
    .restart local v6       #helpButton:Landroid/view/View;
    goto/16 :goto_1

    .end local v8           #inputSection:Landroid/view/ViewGroup;
    :cond_b
    const-string v12, "InputDown"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 290
    const v12, 0x7f07008b

    move-object/from16 v0, p3

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 292
    .restart local v8       #inputSection:Landroid/view/ViewGroup;
    const v12, 0x7f070081

    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #helpButton:Landroid/view/View;
    check-cast v6, Landroid/widget/ImageButton;

    .line 294
    .restart local v6       #helpButton:Landroid/view/View;
    goto/16 :goto_1

    .end local v8           #inputSection:Landroid/view/ViewGroup;
    :cond_c
    const-string v12, "InputEnter"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 295
    const v12, 0x7f07008b

    move-object/from16 v0, p3

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 297
    .restart local v8       #inputSection:Landroid/view/ViewGroup;
    const v12, 0x7f070082

    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #helpButton:Landroid/view/View;
    check-cast v6, Landroid/widget/Button;

    .restart local v6       #helpButton:Landroid/view/View;
    goto/16 :goto_1
.end method

.method public parseDevice(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 11
    .parameter "parser"
    .parameter "fixItContext"
    .parameter "parentGroupView"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 148
    const-string v8, ""

    const-string v9, "deviceType"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, deviceType:Ljava/lang/String;
    const-string v8, ""

    const-string v9, "type"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 150
    .local v7, type:Ljava/lang/String;
    const-string v8, ""

    const-string v9, "id"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, deviceID:Ljava/lang/String;
    iget-object v8, p0, Lcom/logitech/harmonylink/context/view/FixItView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v8}, Lcom/logitech/harmonylink/harmony/Dom;->getDevices()Lcom/logitech/harmonylink/harmony/Devices;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/logitech/harmonylink/harmony/Devices;->getDevice(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Device;

    move-result-object v1

    .line 154
    .local v1, device:Lcom/logitech/harmonylink/harmony/Device;
    if-nez v3, :cond_0

    .line 155
    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    .line 160
    :cond_0
    const-string v8, ""

    const-string v9, "alwaysOn"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, alwaysOn:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 162
    const-string v0, "false"

    .line 165
    :cond_1
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 167
    .local v6, inflater:Landroid/view/LayoutInflater;
    iget-boolean v8, p0, Lcom/logitech/harmonylink/context/view/FixItView;->hideInputBtn:Z

    if-eqz v8, :cond_5

    const v8, 0x7f030049

    :goto_0
    invoke-virtual {v6, v8, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 170
    .local v5, fixItSection:Landroid/view/ViewGroup;
    iget-boolean v8, p0, Lcom/logitech/harmonylink/context/view/FixItView;->hideInputBtn:Z

    if-eqz v8, :cond_2

    const-string v8, "true"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 171
    const/4 v5, 0x0

    .line 174
    :cond_2
    if-eqz v5, :cond_4

    .line 176
    iget-object v8, p0, Lcom/logitech/harmonylink/context/view/FixItView;->mPreviousSection:Landroid/view/ViewGroup;

    if-eqz v8, :cond_3

    .line 177
    iget-object v8, p0, Lcom/logitech/harmonylink/context/view/FixItView;->mPreviousSection:Landroid/view/ViewGroup;

    const v9, 0x7f07008c

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 181
    :cond_3
    iput-object v5, p0, Lcom/logitech/harmonylink/context/view/FixItView;->mPreviousSection:Landroid/view/ViewGroup;

    .line 183
    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 185
    const v8, 0x7f070089

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 188
    .local v4, deviceTypeTextView:Landroid/widget/TextView;
    invoke-static {p2, v3, v7}, Lcom/logitech/harmonylink/harmony/Device;->getLabelResourceByDeviceType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .end local v4           #deviceTypeTextView:Landroid/widget/TextView;
    :cond_4
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "group"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 195
    invoke-virtual {p0, p1, p2, v5}, Lcom/logitech/harmonylink/context/view/FixItView;->parseGroup(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 167
    .end local v5           #fixItSection:Landroid/view/ViewGroup;
    :cond_5
    const v8, 0x7f030028

    goto :goto_0

    .line 197
    .restart local v5       #fixItSection:Landroid/view/ViewGroup;
    :cond_6
    return-void
.end method

.method public parseDevices(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 3
    .parameter "parser"
    .parameter "fixItContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/FixItView;->mPreviousSection:Landroid/view/ViewGroup;

    .line 133
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 134
    .local v0, devicesLinearLayout:Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 137
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0, p1, p2, v0}, Lcom/logitech/harmonylink/context/view/FixItView;->parseDevice(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 141
    :cond_0
    return-object v0
.end method

.method public parseGroup(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "parser"
    .parameter "fixItContext"
    .parameter "fixItSection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "button"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "group"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "button"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {p0, p1, p2, p3}, Lcom/logitech/harmonylink/context/view/FixItView;->parseButton(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 208
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "group"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0, p1, p2, p3}, Lcom/logitech/harmonylink/context/view/FixItView;->parseGroup(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 212
    :cond_3
    return-void
.end method
