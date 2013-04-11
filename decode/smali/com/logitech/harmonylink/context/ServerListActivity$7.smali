.class Lcom/logitech/harmonylink/context/ServerListActivity$7;
.super Ljava/lang/Object;
.source "ServerListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/ServerListActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/ServerListActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/ServerListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/logitech/harmonylink/context/ServerListActivity$7;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity$7;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/ServerListActivity;->timeOut()V

    .line 191
    return-void
.end method
