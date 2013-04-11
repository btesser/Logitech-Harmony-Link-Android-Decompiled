.class Lcom/logitech/harmonylink/context/HelpActivity$DownLoadPhoneNumberTask;
.super Landroid/os/AsyncTask;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownLoadPhoneNumberTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/HelpActivity;


# direct methods
.method private constructor <init>(Lcom/logitech/harmonylink/context/HelpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/logitech/harmonylink/context/HelpActivity$DownLoadPhoneNumberTask;->this$0:Lcom/logitech/harmonylink/context/HelpActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logitech/harmonylink/context/HelpActivity;Lcom/logitech/harmonylink/context/HelpActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/context/HelpActivity$DownLoadPhoneNumberTask;-><init>(Lcom/logitech/harmonylink/context/HelpActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/context/HelpActivity$DownLoadPhoneNumberTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "obj"

    .prologue
    .line 104
    invoke-static {}, Lcom/logitech/harmonylink/context/HelpActivity;->access$200()Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v1, "vnd.logitech.cs/vnd.logitech.cs.data"

    const-string v2, ""

    new-instance v3, Lcom/logitech/harmonylink/context/HelpActivity$DownLoadPhoneNumberTask$1;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/context/HelpActivity$DownLoadPhoneNumberTask$1;-><init>(Lcom/logitech/harmonylink/context/HelpActivity$DownLoadPhoneNumberTask;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 146
    const/4 v0, 0x0

    return-object v0
.end method
