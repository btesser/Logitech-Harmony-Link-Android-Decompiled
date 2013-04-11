.class Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener$1;
.super Ljava/lang/Object;
.source "ServerListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener$1;->this$1:Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 376
    invoke-static {}, Lcom/logitech/harmonylink/context/ServerListActivity;->access$600()Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->setHarmonyLinkID(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener$1;->this$1:Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/ServerListActivity;->finish()V

    .line 378
    return-void
.end method
