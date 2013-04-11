.class Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$2;
.super Ljava/lang/Object;
.source "OneTouchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$2;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 175
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$2;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    .line 176
    .local v0, dom:Lcom/logitech/harmonylink/harmony/Dom;
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$2;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->addObserver(Lcom/logitech/harmonylink/harmony/IDomObserver;)V

    .line 177
    return-void
.end method
