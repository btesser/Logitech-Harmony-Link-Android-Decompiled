.class Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7$2;
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
    .line 430
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7$2;->this$1:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7$2;->this$1:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #calls: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->onFirmwareUpgrade()V
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$2100(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V

    .line 433
    return-void
.end method
