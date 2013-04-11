.class Lcom/logitech/harmonylink/devtest/EnterIPActivity$1;
.super Ljava/lang/Object;
.source "EnterIPActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/devtest/EnterIPActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/devtest/EnterIPActivity;

.field final synthetic val$prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/devtest/EnterIPActivity;Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/logitech/harmonylink/devtest/EnterIPActivity$1;->this$0:Lcom/logitech/harmonylink/devtest/EnterIPActivity;

    iput-object p2, p0, Lcom/logitech/harmonylink/devtest/EnterIPActivity$1;->val$prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 39
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, text:Ljava/lang/String;
    const/16 v6, 0x1466

    .line 41
    .local v6, mServerPort:I
    iget-object v0, p0, Lcom/logitech/harmonylink/devtest/EnterIPActivity$1;->this$0:Lcom/logitech/harmonylink/devtest/EnterIPActivity;

    iget-object v0, v0, Lcom/logitech/harmonylink/devtest/EnterIPActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, ipString:Ljava/lang/String;
    iget-object v0, p0, Lcom/logitech/harmonylink/devtest/EnterIPActivity$1;->val$prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    const-string v2, "ip"

    invoke-virtual {v0, v2, v1}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v7, Lcom/logitech/connect/ConnectClient;->sInstance:Lcom/logitech/connect/ConnectClient;

    new-instance v0, Lcom/logitech/connect/Target;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "unknown"

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/logitech/connect/Target;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/logitech/connect/ConnectClient;->addTarget(Lcom/logitech/connect/Target;)V

    .line 44
    iget-object v0, p0, Lcom/logitech/harmonylink/devtest/EnterIPActivity$1;->this$0:Lcom/logitech/harmonylink/devtest/EnterIPActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/devtest/EnterIPActivity;->finish()V

    .line 45
    return-void
.end method
