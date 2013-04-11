.class Lcom/logitech/harmonylink/context/NoConnectionActivity$1;
.super Ljava/lang/Object;
.source "NoConnectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/NoConnectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/NoConnectionActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/NoConnectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/logitech/harmonylink/context/NoConnectionActivity$1;->this$0:Lcom/logitech/harmonylink/context/NoConnectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/logitech/harmonylink/context/NoConnectionActivity$1;->this$0:Lcom/logitech/harmonylink/context/NoConnectionActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/NoConnectionActivity;->setResult(I)V

    .line 27
    iget-object v0, p0, Lcom/logitech/harmonylink/context/NoConnectionActivity$1;->this$0:Lcom/logitech/harmonylink/context/NoConnectionActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/NoConnectionActivity;->finish()V

    .line 29
    return-void
.end method
