.class Lcom/logitech/harmonylink/ka1x/DevicesActivity$3;
.super Ljava/lang/Object;
.source "DevicesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/ka1x/DevicesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/ka1x/DevicesActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/ka1x/DevicesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity$3;->this$0:Lcom/logitech/harmonylink/ka1x/DevicesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity$3;->this$0:Lcom/logitech/harmonylink/ka1x/DevicesActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity$3;->this$0:Lcom/logitech/harmonylink/ka1x/DevicesActivity;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->addObserver(Lcom/logitech/harmonylink/harmony/IDomObserver;)V

    .line 85
    return-void
.end method
