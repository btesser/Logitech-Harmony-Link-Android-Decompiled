.class Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OneTouchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/OneTouchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OneTouchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;


# direct methods
.method private constructor <init>(Lcom/logitech/harmonylink/context/OneTouchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchReceiver;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logitech/harmonylink/context/OneTouchActivity;Lcom/logitech/harmonylink/context/OneTouchActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchReceiver;-><init>(Lcom/logitech/harmonylink/context/OneTouchActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 615
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notify gridview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchReceiver;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$400(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchReceiver;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$800(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/harmony/OneTouchManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->getOneTouchContents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->notifyGridAdapter(Ljava/util/ArrayList;)V

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remove icon path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchReceiver;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$400(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    move-result-object v0

    const-string v1, "icon path"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->removeIconPath(Ljava/lang/String;)V

    goto :goto_0
.end method
