.class Lcom/logitech/harmonylink/context/view/OneTouchGridView$1;
.super Ljava/lang/Object;
.source "OneTouchGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/view/OneTouchGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/view/OneTouchGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$1;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$1;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    const/4 v1, 0x0

    #setter for: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIsScrollWait:Z
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$102(Lcom/logitech/harmonylink/context/view/OneTouchGridView;Z)Z

    .line 333
    return-void
.end method