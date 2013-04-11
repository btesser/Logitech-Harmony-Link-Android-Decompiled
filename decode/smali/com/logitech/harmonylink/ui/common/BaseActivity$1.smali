.class Lcom/logitech/harmonylink/ui/common/BaseActivity$1;
.super Ljava/util/TimerTask;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/ui/common/BaseActivity;->onConnectionStateChanged(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/ui/common/BaseActivity;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/ui/common/BaseActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/logitech/harmonylink/ui/common/BaseActivity$1;->this$0:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    iput-object p2, p0, Lcom/logitech/harmonylink/ui/common/BaseActivity$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/logitech/harmonylink/ui/common/BaseActivity$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/logitech/harmonylink/ui/common/BaseActivity$1$1;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity$1$1;-><init>(Lcom/logitech/harmonylink/ui/common/BaseActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    return-void
.end method
