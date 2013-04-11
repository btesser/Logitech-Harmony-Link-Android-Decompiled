.class public Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "ManualSyncOliveActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final MANUALSYNCSCREEN:Ljava/lang/String; = "frommanualsync"

.field private static fwVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;->LOG_TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;->fwVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 34
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0, v11}, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;->requestWindowFeature(I)Z

    .line 37
    sget-object v9, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v9}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v9

    invoke-virtual {v9}, Lcom/logitech/harmonylink/harmony/Dom;->getLastUpdated()Ljava/lang/String;

    move-result-object v5

    .line 38
    .local v5, lastUpdated:Ljava/lang/String;
    const/4 v1, 0x0

    .line 39
    .local v1, displayDate:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 40
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyyMMdd"

    invoke-direct {v4, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 41
    .local v4, inputFormat:Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v9, "MMM dd yyyy"

    invoke-direct {v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 44
    .local v7, outputFormat:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 45
    .local v6, lastUpdatedDate:Ljava/util/Date;
    invoke-virtual {v7, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 50
    .end local v4           #inputFormat:Ljava/text/SimpleDateFormat;
    .end local v6           #lastUpdatedDate:Ljava/util/Date;
    .end local v7           #outputFormat:Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_0
    const v9, 0x7f03003f

    invoke-virtual {p0, v9}, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v9

    invoke-virtual {v9}, Lcom/logitech/harmonylink/harmony/Dom;->getOliveFwVersion()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;->fwVersion:Ljava/lang/String;

    .line 52
    const v9, 0x7f0700b9

    invoke-virtual {p0, v9}, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 53
    .local v8, tvLastUpdatedDate:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 54
    const v9, 0x7f060086

    new-array v10, v11, [Ljava/lang/Object;

    aput-object v1, v10, v12

    invoke-virtual {p0, v9, v10}, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :goto_1
    const v9, 0x7f0700ca

    invoke-virtual {p0, v9}, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 61
    .local v3, firmwareVersion:Landroid/widget/TextView;
    sget-object v9, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;->fwVersion:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 62
    const v9, 0x7f060087

    new-array v10, v11, [Ljava/lang/Object;

    sget-object v11, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;->fwVersion:Ljava/lang/String;

    aput-object v11, v10, v12

    invoke-virtual {p0, v9, v10}, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :goto_2
    const v9, 0x7f0700b8

    invoke-virtual {p0, v9}, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 70
    .local v0, btnSyncNow:Landroid/widget/Button;
    new-instance v9, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity$1;

    invoke-direct {v9, p0}, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity$1;-><init>(Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void

    .line 46
    .end local v0           #btnSyncNow:Landroid/widget/Button;
    .end local v3           #firmwareVersion:Landroid/widget/TextView;
    .end local v8           #tvLastUpdatedDate:Landroid/widget/TextView;
    .restart local v4       #inputFormat:Ljava/text/SimpleDateFormat;
    .restart local v7       #outputFormat:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 47
    .local v2, e:Ljava/text/ParseException;
    sget-object v9, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;->LOG_TAG:Ljava/lang/String;

    const-string v10, "Exception in formatting date"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 57
    .end local v2           #e:Ljava/text/ParseException;
    .end local v4           #inputFormat:Ljava/text/SimpleDateFormat;
    .end local v7           #outputFormat:Ljava/text/SimpleDateFormat;
    .restart local v8       #tvLastUpdatedDate:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 65
    .restart local v3       #firmwareVersion:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
