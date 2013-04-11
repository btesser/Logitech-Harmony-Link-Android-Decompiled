.class Lcom/logitech/harmonylink/context/ManualSyncActivity$2;
.super Ljava/lang/Object;
.source "ManualSyncActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/ManualSyncActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCheckHeartbeat:Ljava/lang/Runnable;

.field private mDisconnectAndDismiss:Ljava/lang/Runnable;

.field private mHasResponded:Z

.field private mHeartbeatHandler:Landroid/os/Handler;

.field private mLaunchOneTouch:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/logitech/harmonylink/context/ManualSyncActivity;

.field final synthetic val$dlgStatusText:Landroid/widget/TextView;

.field final synthetic val$dlgSyncStatus:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/ManualSyncActivity;Landroid/app/Dialog;Landroid/widget/TextView;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->this$0:Lcom/logitech/harmonylink/context/ManualSyncActivity;

    iput-object p2, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->val$dlgSyncStatus:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->val$dlgStatusText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mHasResponded:Z

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mHeartbeatHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$1;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$1;-><init>(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mCheckHeartbeat:Ljava/lang/Runnable;

    .line 104
    new-instance v0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$2;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$2;-><init>(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mDisconnectAndDismiss:Ljava/lang/Runnable;

    .line 113
    new-instance v0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$3;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$3;-><init>(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mLaunchOneTouch:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mHasResponded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mHasResponded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->sendHeartBeat()V

    return-void
.end method

.method static synthetic access$200(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mHeartbeatHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mCheckHeartbeat:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mDisconnectAndDismiss:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mLaunchOneTouch:Ljava/lang/Runnable;

    return-object v0
.end method

.method private sendHeartBeat()V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->this$0:Lcom/logitech/harmonylink/context/ManualSyncActivity;

    #getter for: Lcom/logitech/harmonylink/context/ManualSyncActivity;->mConnectClient:Lcom/logitech/connect/ConnectClient;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/ManualSyncActivity;->access$700(Lcom/logitech/harmonylink/context/ManualSyncActivity;)Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    const-string v1, "vnd.logitech.connect/vnd.logitech.ping"

    const-string v2, ""

    new-instance v3, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$5;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$5;-><init>(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 196
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->val$dlgSyncStatus:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 128
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->val$dlgSyncStatus:Landroid/app/Dialog;

    const v1, 0x7f0700b6

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->val$dlgStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->this$0:Lcom/logitech/harmonylink/context/ManualSyncActivity;

    const v2, 0x7f060088

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/context/ManualSyncActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->val$dlgSyncStatus:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 133
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->this$0:Lcom/logitech/harmonylink/context/ManualSyncActivity;

    #getter for: Lcom/logitech/harmonylink/context/ManualSyncActivity;->mConnectClient:Lcom/logitech/connect/ConnectClient;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/ManualSyncActivity;->access$700(Lcom/logitech/harmonylink/context/ManualSyncActivity;)Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    const-string v1, "vnd.logitech.harmony/vnd.logitech.harmony.manualsync?start"

    const-string v2, ""

    new-instance v3, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$4;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$4;-><init>(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 165
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mHeartbeatHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mCheckHeartbeat:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mHeartbeatHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mDisconnectAndDismiss:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    return-void
.end method
