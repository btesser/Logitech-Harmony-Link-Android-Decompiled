.class Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$5;
.super Ljava/lang/Object;
.source "OliveSyncProcessActivity.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->syncHarmonyLink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$5;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$5;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #calls: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->checkSyncStatus()V
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1400(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V

    .line 249
    return-void
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$5;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #calls: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->checkSyncStatus()V
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1400(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V

    .line 243
    return-void
.end method
