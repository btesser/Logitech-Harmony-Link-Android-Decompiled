.class Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7$1;
.super Ljava/lang/Object;
.source "OliveSyncProcessActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;->onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7$1;->this$1:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 439
    const-string v0, "fromloginpage"

    invoke-static {}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1900()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7$1;->this$1:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->goToHome()V

    .line 442
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7$1;->this$1:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->finish()V

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    const-string v0, "frommanualsync"

    invoke-static {}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$2000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7$1;->this$1:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->finish()V

    goto :goto_0
.end method
