.class Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$2;
.super Ljava/lang/Object;
.source "OliveSyncProcessActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$2;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$2;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    #calls: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->requestFailed(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$100(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;Ljava/lang/String;Z)V

    .line 126
    return-void
.end method
