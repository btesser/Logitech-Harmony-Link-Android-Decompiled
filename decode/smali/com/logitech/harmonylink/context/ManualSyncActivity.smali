.class public Lcom/logitech/harmonylink/context/ManualSyncActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "ManualSyncActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mConnectClient:Lcom/logitech/connect/ConnectClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/logitech/harmonylink/context/ManualSyncActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/context/ManualSyncActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/logitech/harmonylink/context/ManualSyncActivity;Landroid/app/Dialog;Landroid/widget/TextView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/logitech/harmonylink/context/ManualSyncActivity;->changeMessage(Landroid/app/Dialog;Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/logitech/harmonylink/context/ManualSyncActivity;)Lcom/logitech/connect/ConnectClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    return-object v0
.end method

.method private changeMessage(Landroid/app/Dialog;Landroid/widget/TextView;I)V
    .locals 2
    .parameter "dialog"
    .parameter "textView"
    .parameter "messageResourceId"

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const v0, 0x7f0700b6

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    invoke-virtual {p0, p3}, Lcom/logitech/harmonylink/context/ManualSyncActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 209
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x1

    .line 36
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0, v12}, Lcom/logitech/harmonylink/context/ManualSyncActivity;->requestWindowFeature(I)Z

    .line 39
    sget-object v10, Lcom/logitech/harmonylink/context/ManualSyncActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v10}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v10

    invoke-virtual {v10}, Lcom/logitech/harmonylink/harmony/Dom;->getLastUpdated()Ljava/lang/String;

    move-result-object v6

    .line 40
    .local v6, lastUpdated:Ljava/lang/String;
    const/4 v1, 0x0

    .line 41
    .local v1, displayDate:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 42
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyyMMdd"

    invoke-direct {v5, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 43
    .local v5, inputFormat:Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v10, "MMM dd yyyy"

    invoke-direct {v8, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 46
    .local v8, outputFormat:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 47
    .local v7, lastUpdatedDate:Ljava/util/Date;
    invoke-virtual {v8, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 53
    .end local v5           #inputFormat:Ljava/text/SimpleDateFormat;
    .end local v7           #lastUpdatedDate:Ljava/util/Date;
    .end local v8           #outputFormat:Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_0
    sget-object v10, Lcom/logitech/harmonylink/context/ManualSyncActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v10}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v10

    iput-object v10, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    .line 54
    const v10, 0x7f030038

    invoke-virtual {p0, v10}, Lcom/logitech/harmonylink/context/ManualSyncActivity;->setContentView(I)V

    .line 56
    const v10, 0x7f0700b9

    invoke-virtual {p0, v10}, Lcom/logitech/harmonylink/context/ManualSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 57
    .local v9, tvLastUpdatedDate:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 58
    const v10, 0x7f060086

    new-array v11, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/logitech/harmonylink/context/ManualSyncActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :goto_1
    new-instance v3, Landroid/app/Dialog;

    const v10, 0x7f0a0003

    invoke-direct {v3, p0, v10}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 65
    .local v3, dlgSyncStatus:Landroid/app/Dialog;
    const v10, 0x7f030039

    invoke-virtual {v3, v10}, Landroid/app/Dialog;->setContentView(I)V

    .line 67
    const v10, 0x7f0700b5

    invoke-virtual {v3, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 72
    .local v2, dlgStatusText:Landroid/widget/TextView;
    new-instance v10, Lcom/logitech/harmonylink/context/ManualSyncActivity$1;

    invoke-direct {v10, p0, v2, v3}, Lcom/logitech/harmonylink/context/ManualSyncActivity$1;-><init>(Lcom/logitech/harmonylink/context/ManualSyncActivity;Landroid/widget/TextView;Landroid/app/Dialog;)V

    invoke-virtual {v3, v10}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 83
    const v10, 0x7f0700b8

    invoke-virtual {p0, v10}, Lcom/logitech/harmonylink/context/ManualSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 84
    .local v0, btnSyncNow:Landroid/widget/Button;
    new-instance v10, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    invoke-direct {v10, p0, v3, v2}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;-><init>(Lcom/logitech/harmonylink/context/ManualSyncActivity;Landroid/app/Dialog;Landroid/widget/TextView;)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    return-void

    .line 48
    .end local v0           #btnSyncNow:Landroid/widget/Button;
    .end local v2           #dlgStatusText:Landroid/widget/TextView;
    .end local v3           #dlgSyncStatus:Landroid/app/Dialog;
    .end local v9           #tvLastUpdatedDate:Landroid/widget/TextView;
    .restart local v5       #inputFormat:Ljava/text/SimpleDateFormat;
    .restart local v8       #outputFormat:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 49
    .local v4, e:Ljava/text/ParseException;
    sget-object v10, Lcom/logitech/harmonylink/context/ManualSyncActivity;->LOG_TAG:Ljava/lang/String;

    const-string v11, "Exception in formatting date"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 61
    .end local v4           #e:Ljava/text/ParseException;
    .end local v5           #inputFormat:Ljava/text/SimpleDateFormat;
    .end local v8           #outputFormat:Ljava/text/SimpleDateFormat;
    .restart local v9       #tvLastUpdatedDate:Landroid/widget/TextView;
    :cond_1
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
