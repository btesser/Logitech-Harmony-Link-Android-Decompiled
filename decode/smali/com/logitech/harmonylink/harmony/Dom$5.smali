.class Lcom/logitech/harmonylink/harmony/Dom$5;
.super Ljava/lang/Object;
.source "Dom.java"

# interfaces
.implements Lcom/logitech/connect/pairing/SetupActivityResponseObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/harmony/Dom;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/harmony/Dom;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/harmony/Dom;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom$5;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$5;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #getter for: Lcom/logitech/harmonylink/harmony/Dom;->mSetupNeededObserver:Lcom/logitech/harmonylink/harmony/ISetupNeededObserver;
    invoke-static {v0}, Lcom/logitech/harmonylink/harmony/Dom;->access$400(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ISetupNeededObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$5;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #getter for: Lcom/logitech/harmonylink/harmony/Dom;->mSetupNeededObserver:Lcom/logitech/harmonylink/harmony/ISetupNeededObserver;
    invoke-static {v0}, Lcom/logitech/harmonylink/harmony/Dom;->access$400(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ISetupNeededObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/logitech/harmonylink/harmony/ISetupNeededObserver;->onSetupCanceled()V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$5;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/logitech/harmonylink/harmony/Dom;->mSetupRequired:Z

    .line 329
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$5;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    const/4 v1, 0x0

    #setter for: Lcom/logitech/harmonylink/harmony/Dom;->mSetupActivityResponseHandler:Lcom/logitech/connect/pairing/SetupActivityResponseHandler;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->access$202(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/connect/pairing/SetupActivityResponseHandler;)Lcom/logitech/connect/pairing/SetupActivityResponseHandler;

    .line 331
    return-void
.end method

.method public onSetupNeeded()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$5;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #getter for: Lcom/logitech/harmonylink/harmony/Dom;->mSetupNeededObserver:Lcom/logitech/harmonylink/harmony/ISetupNeededObserver;
    invoke-static {v0}, Lcom/logitech/harmonylink/harmony/Dom;->access$400(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ISetupNeededObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$5;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #getter for: Lcom/logitech/harmonylink/harmony/Dom;->mSetupNeededObserver:Lcom/logitech/harmonylink/harmony/ISetupNeededObserver;
    invoke-static {v0}, Lcom/logitech/harmonylink/harmony/Dom;->access$400(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ISetupNeededObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/logitech/harmonylink/harmony/ISetupNeededObserver;->onSetupStarted()V

    .line 322
    :cond_0
    return-void
.end method

.method public onSetupNotNeeded()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$5;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/logitech/harmonylink/harmony/Dom;->mSetupRequired:Z

    .line 314
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$5;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    const/4 v1, 0x0

    #setter for: Lcom/logitech/harmonylink/harmony/Dom;->mSetupActivityResponseHandler:Lcom/logitech/connect/pairing/SetupActivityResponseHandler;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->access$202(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/connect/pairing/SetupActivityResponseHandler;)Lcom/logitech/connect/pairing/SetupActivityResponseHandler;

    .line 315
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$5;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #calls: Lcom/logitech/harmonylink/harmony/Dom;->next()V
    invoke-static {v0}, Lcom/logitech/harmonylink/harmony/Dom;->access$300(Lcom/logitech/harmonylink/harmony/Dom;)V

    .line 316
    return-void
.end method
